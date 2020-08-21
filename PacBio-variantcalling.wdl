version 1.0

# Copyright (c) 2020 Leiden University Medical Center
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

import "PacBio-subreads-processing/PacBio-subreads-processing.wdl" as SubreadsProcessing
import "tasks/minimap2.wdl" as minimap2
import "pbmm2.wdl" as pbmm2
import "whatshap.wdl" as whatshap
import "sniffles.wdl" as sniffles
import "ngmlr.wdl" as ngmlr
import "tasks/picard.wdl" as picard
import "tasks/samtools.wdl" as samtools
import "bcftools.wdl" as bcftools

task write_samplename {
    input {
        String sample
        String dockerImage = "quay.io/biocontainers/bcftools:1.10.2--h4f4756c_2"
        String memory = "256M"
    }

    command {
        echo ~{sample} > ~{sample}.txt
    }

    runtime {
        docker: dockerImage
        memory: memory
    }

    output {
        File file = sample + ".txt"
    }
}

workflow VariantCalling {
    input {
        File subreadsConfigFile
        File dockerImagesFile
        File referenceFile
        File referenceFileIndex
        File referenceFileDict
        File? referenceFileMMI
        String referencePrefix
    }

    call SubreadsProcessing.SubreadsProcessing as SubreadsProcessing {
        input:
            subreadsConfigFile = subreadsConfigFile,
            limaCores = 8,
            ccsCores = 8,
            generateFastq = true,
            dockerImagesFile = dockerImagesFile
    }

    if (!defined(referenceFileMMI)) {
        call minimap2.Indexing as index {
            input:
                useHomopolymerCompressedKmer = true,
                outputPrefix = referencePrefix,
                referenceFile = referenceFile
        }
    }

    File referenceMMI = select_first([referenceFileMMI, index.indexFile])

    # Combine the sample names with the fastq files
    Array[Pair[String, File]] SampleFastq= zip(SubreadsProcessing.samples, select_all(SubreadsProcessing.fastqFiles))

    scatter (pair in SampleFastq) {
        call ngmlr.Ngmlr as ngmlr {
            input:
                referenceFile = referenceFile,
                queryFile = pair.right,
                outputPath = pair.left + ".sam",
                bamFix = true,
                rg_sm = pair.left,
                presets = "pacbio"
        }

        call picard.SortSam as toBam {
            input:
                inputBam = ngmlr.outputAlignmentFile,
                outputPath = pair.left + ".align.bam"
        }

        call sniffles.Sniffles as sniffles {
            input:
                inputBam = toBam.outputBam,
                inputBamIndex = toBam.outputBamIndex,
                outputPath = pair.left + ".vcf"
        }

        call write_samplename {
            input: sample = pair.left
        }

        call bcftools.Reheader as reheader {
            input:
                inputVCF = sniffles.outputVCF,
                outputFile = pair.left + ".reheader.vcf",
                samples = write_samplename.file
        }

        # The vcf output from sniffles can be out of order
        # https://github.com/fritzsedlazeck/Sniffles/issues/218
        call bcftools.Sort as sort {
            input:
                inputVCF = reheader.outputVCF,
                outputFile = pair.left + ".sorted.vcf"
        }

        call samtools.BgzipAndIndex as bgzip {
            input:
                inputFile = sort.outputVCF,
                outputDir = pair.left
        }

        File compressedVCF = bgzip.compressed
        File compressedVCFIndex = bgzip.index

        call whatshap.Phase as phase {
            input:
               vcf = compressedVCF,
               vcfIndex = compressedVCFIndex,
               phaseInput = toBam.outputBam,
               phaseInputIndex = toBam.outputBamIndex,
               indels = true,
               reference = referenceFile,
               referenceIndex = referenceFileIndex,
               outputVCF = pair.left + ".phased.vcf.gz"
        }

        call whatshap.Stats as stats {
            input:
                vcf = phase.phasedVCF,
                gtf = pair.left + ".phased.gtf",
                tsv = pair.left + ".phased.tsv",
                block_list = pair.left + ".phased.blocklist"
        }

        call whatshap.Haplotag as haplotag {
            input:
                outputFile = pair.left + ".haplotagged.bam",
                reference = referenceFile,
                referenceFastaIndex = referenceFileIndex,
                vcf = phase.phasedVCF,
                vcfIndex = phase.phasedVCFIndex,
                alignments = toBam.outputBam,
                # https://github.com/philres/ngmlr/issues/43
                ignore_read_groups = true,
                alignmentsIndex = toBam.outputBamIndex
        }
    }

    parameter_meta {
        # inputs
        referencePrefix: {description: "Name of the reference.", category: "required"}
        referenceFile: {description: "The fasta file to be used as reference.", category: "required"}
        referenceFileIndex: {description: "The samtools index file for the reference.", category: "required"}
        referenceFileDict: {description: "The picard dictionary file for the reference.", category: "required"}
        referenceFileMMI: {description: "The minimap2 mmi file for the reference.", category: "optional"}
        dockerImagesFile: {description: "The docker image used for this workflow. Changing this may result in errors which the developers may choose not to address.", category: "required"}
        subreadsConfigFile: {description: "Configuration file for the subreads processing.", category: "required"}
    }
}
