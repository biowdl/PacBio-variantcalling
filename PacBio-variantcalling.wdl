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
import "gatk.wdl" as gatk
import "tasks/minimap2.wdl" as minimap2
import "pbmm2.wdl" as pbmm2
import "whatshap.wdl" as whatshap

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

    # Combine the sample names with the bam files
    Array[Pair[String, File]] SampleBam = zip(SubreadsProcessing.samples, SubreadsProcessing.limaReads)

    scatter (pair in SampleBam) {
        call pbmm2.Mapping as mapping {
            input:
                presetOption = "CCS",
                sort = true,
                referenceMMI = referenceMMI,
                sample = pair.left,
                queryFile = pair.right
        }

        call gatk.HaplotypeCaller as gvcf {
            input:
                inputBams = [mapping.outputAlignmentFile],
                inputBamsIndex = [mapping.outputIndexFile],
                outputPath = pair.left + ".g.vcf.gz",
                referenceFasta = referenceFile,
                referenceFastaIndex = referenceFileIndex,
                gvcf = true,
                referenceFastaDict = referenceFileDict
        }

        call gatk.GenotypeGVCFs as vcf {
            input:
                gvcfFile = gvcf.outputVCF,
                gvcfFileIndex = gvcf.outputVCFIndex,
                outputPath = pair.left + ".vcf.gz",
                referenceFasta = referenceFile,
                referenceFastaFai = referenceFileIndex,
                referenceFastaDict = referenceFileDict
        }

        call whatshap.Phase as phase {
            input:
               vcf = vcf.outputVCF,
               vcfIndex = vcf.outputVCFIndex,
               phaseInput = mapping.outputAlignmentFile,
               phaseInputIndex = mapping.outputIndexFile,
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
