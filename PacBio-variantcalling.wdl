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

import "PacBio-subreads-processing/pacbio-subreads-processing.wdl" as SubreadsProcessing
import "deepvariant.wdl" as deepvariant
import "gatk.wdl" as gatk
import "tasks/minimap2.wdl" as minimap2
import "picard.wdl" as picard
import "pbmm2.wdl" as pbmm2
import "whatshap.wdl" as whatshap
import "multiqc_pgx.wdl" as multiqc
import "tasks/chunked-scatter.wdl" as chunkedScatter

workflow VariantCalling {
    input {
        File subreadsFile
        File? subreadsIndexFile
        File barcodesFasta
        File referenceFile
        File referenceFileIndex
        File referenceFileDict
        File multiQC_config = "multiqc_config.yml"
        File? limaBarcodes
        File? referenceFileMMI
        String referencePrefix
        Boolean useDeepVariant = false
        File? dbsnp
        File? dbsnpIndex
        File? targetGenes
        File? targetBaits
    }

    call SubreadsProcessing.SubreadsProcessing as SubreadsProcessing {
        input:
            subreadsFile = subreadsFile,
            subreadsIndexFile = subreadsIndexFile,
            barcodesFasta = barcodesFasta,
            limaCores = 8,
            ccsCores = 8,
            ccsChunks = 20
    }

    if (!defined(referenceFileMMI)) {
        call minimap2.Indexing as index {
            input:
                useHomopolymerCompressedKmer = true,
                outputPrefix = referencePrefix,
                referenceFile = referenceFile
        }
    }

    if (defined(targetGenes)) {
        call picard.BedToIntervalList as targetToInterval {
            input:
                bedFile = select_first([targetGenes]),
                dict = referenceFileDict
        }
    }
    if (defined(targetBaits)) {
        call picard.BedToIntervalList as baitsToInterval {
            input:
                bedFile = select_first([targetBaits]),
                dict = referenceFileDict
        }
    }

    File referenceMMI = select_first([referenceFileMMI, index.indexFile])

    # Combine the sample names with the bam files
    Array[Pair[String, File]] SampleBam = zip(SubreadsProcessing.samples, SubreadsProcessing.limaReads)

    # Determine the scatters for GATK
    call chunkedScatter.ScatterRegions as scatterList {
        input:
            inputFile = referenceFileIndex
    }

    scatter (pair in SampleBam) {
        # We need to know the order of the samples for MultiQC_PGx
        String sampleName = pair.left

        call pbmm2.Mapping as mapping {
            input:
                presetOption = "CCS",
                sort = true,
                referenceMMI = referenceMMI,
                sample = pair.left,
                queryFile = pair.right
        }

        call picard.CollectMultipleMetrics as picard_multiple_metrics {
            input:
                inputBam = mapping.outputAlignmentFile,
                inputBamIndex = mapping.outputIndexFile,
                referenceFasta = referenceFile,
                referenceFastaDict = referenceFileDict,
                referenceFastaFai = referenceFileIndex,
                basename = pair.left,
                collectInsertSizeMetrics = false,
                meanQualityByCycle = false,
                collectBaseDistributionByCycle = false
        }

        if (defined(targetGenes)) {
            call picard.CollectHsMetrics as picard_hs_metrics {
                input:
                    inputBam = mapping.outputAlignmentFile,
                    inputBamIndex = mapping.outputIndexFile,
                    referenceFasta = referenceFile,
                    referenceFastaDict = referenceFileDict,
                    referenceFastaFai = referenceFileIndex,
                    basename = pair.left,
                    targets = select_first([targetToInterval.intervalList]),
                    baits = select_first([baitsToInterval.intervalList,
                            targetToInterval.intervalList])
            }
        }

        if (!useDeepVariant) {
            scatter (region in scatterList.scatters) {
                call gatk.HaplotypeCaller as gvcf {
                    input:
                        inputBams = [mapping.outputAlignmentFile],
                        inputBamsIndex = [mapping.outputIndexFile],
                        outputPath = pair.left + ".g.vcf.gz",
                        referenceFasta = referenceFile,
                        referenceFastaIndex = referenceFileIndex,
                        intervalList = [region],
                        gvcf = true,
                        referenceFastaDict = referenceFileDict
                }

                call gatk.GenotypeGVCFs as gatkVCF {
                    input:
                        gvcfFile = gvcf.outputVCF,
                        gvcfFileIndex = gvcf.outputVCFIndex,
                        outputPath = pair.left + ".vcf.gz",
                        referenceFasta = referenceFile,
                        intervals = [region],
                        referenceFastaFai = referenceFileIndex,
                        referenceFastaDict = referenceFileDict
                }
            }

            # Merge the gvcf files
            call picard.MergeVCFs as combineGVCFs {
                input:
                    inputVCFs = gvcf.outputVCF,
                    inputVCFsIndexes = gvcf.outputVCFIndex,
                    outputVcfPath = pair.left + ".g.vcf.gz"
            }

            # Merge the vcf files
            call picard.MergeVCFs as combineVCFs {
                input:
                    inputVCFs = gatkVCF.outputVCF,
                    inputVCFsIndexes = gatkVCF.outputVCFIndex,
                    outputVcfPath = pair.left + ".vcf.gz"
            }
        }

        if (useDeepVariant) {
            scatter (region in scatterList.scatters) {
                String scatterName = basename(region)
                call deepvariant.RunDeepVariant as DeepVariant{
                    input:
                        referenceFasta = referenceFile,
                        referenceFastaIndex = referenceFileIndex,
                        inputBam = mapping.outputAlignmentFile,
                        inputBamIndex = mapping.outputIndexFile,
                        modelType = "PACBIO",
                        postprocessVariantsExtraArgs = "cnn_homref_call_min_gq=0",
                        regions = region,
                        sampleName = pair.left,
                        outputVcf = pair.left + "_" + scatterName + ".vcf.gz",
                        outputGVcf = pair.left + "_" + scatterName + ".g.vcf.gz"
                }
            }

            # Merge the DeepVariant VCF files
            call picard.MergeVCFs as combineDeepVariantVCFs {
                input:
                    inputVCFs = DeepVariant.outputVCF,
                    inputVCFsIndexes = DeepVariant.outputVCFIndex,
                    outputVcfPath = pair.left + ".vcf.gz"
            }
            # Merge the DeepVariant GVCF files
            call picard.MergeVCFs as combineDeepVariantGVCFs {
                input:
                    inputVCFs = select_all(DeepVariant.outputGVCF),
                    inputVCFsIndexes = select_all(DeepVariant.outputGVCFIndex),
                    outputVcfPath = pair.left + ".g.vcf.gz",
            }
        }

        File outputVCF = select_first([combineVCFs.outputVcf, combineDeepVariantVCFs.outputVcf])
        File outputVCFIndex = select_first([combineVCFs.outputVcfIndex, combineDeepVariantVCFs.outputVcfIndex])
        File outputGVCF = select_first([combineGVCFs.outputVcf, combineDeepVariantGVCFs.outputVcf])
        File outputGVCFIndex = select_first([combineGVCFs.outputVcfIndex, combineDeepVariantGVCFs.outputVcfIndex])

        call whatshap.Phase as phase {
            input:
               vcf = outputVCF,
               vcfIndex = outputVCFIndex,
               phaseInput = mapping.outputAlignmentFile,
               phaseInputIndex = mapping.outputIndexFile,
               indels = true,
               reference = referenceFile,
               referenceIndex = referenceFileIndex,
               outputVCF = pair.left + ".phased.vcf.gz"
        }

        if (defined(dbsnp)) {
            call picard.CollectVariantCallingMetrics as vcfMetrics {
                input:
                    dbsnp = select_first([dbsnp]),
                    dbsnpIndex = select_first([dbsnpIndex]),
                    inputVCF = phase.phasedVCF,
                    inputVCFIndex = phase.phasedVCFIndex,
                    basename = pair.left
            }
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
                alignments = mapping.outputAlignmentFile,
                alignmentsIndex = mapping.outputIndexFile
        }
    }

    Array[File] qualityReports = flatten([
            select_all(picard_multiple_metrics.alignmentSummary),
            select_all(picard_multiple_metrics.qualityDistribution),
            select_all(picard_multiple_metrics.gcBiasDetail),
            select_all(picard_hs_metrics.HsMetrics),
            [SubreadsProcessing.ccsReport],
            [SubreadsProcessing.limaCounts],
            [SubreadsProcessing.limaSummary],
            select_all(stats.phasedTSV),
    ])

    call multiqc.MultiQC as multiqc {
        input:
            reports = qualityReports,
            outDir = "multiqc",
            dataFormat = "json",
            limaBarcodes = limaBarcodes,
            targetGenes = targetGenes,
            config = multiQC_config,
            whatshapBlocklist = select_all(stats.phasedBlockList),
            whatshapSamples = sampleName,
            dataDir = true
    }

    output {
        Array[File] phasedVCF = phase.phasedVCF
        Array[File] phasedVCFIndex = phase.phasedVCFIndex
        Array[File] phasedBAM = haplotag.bam
        Array[File] phasedBAMIndex = haplotag.bamIndex
        Array[File?] phasedGTF = stats.phasedGTF
        Array[File?] phasedTSV = stats.phasedTSV
        Array[File?] phasedBlocklist = stats.phasedBlockList
        Array[File] GVCF = outputGVCF
        Array[File] GVCFINdex = outputGVCFIndex
        File multiQC = multiqc.multiqcReport
        File multiqcDataDirZip  = select_first([multiqc.multiqcDataDirZip])
    }


    parameter_meta {
        # inputs
        referencePrefix: {description: "Name of the reference.", category: "required"}
        referenceFile: {description: "The fasta file to be used as reference.", category: "required"}
        referenceFileIndex: {description: "The samtools index file for the reference.", category: "required"}
        referenceFileDict: {description: "The picard dictionary file for the reference.", category: "required"}
        referenceFileMMI: {description: "The minimap2 mmi file for the reference.", category: "optional"}
        subreadsFile: {description: "Subreads input bam file", category: "required"}
        subreadsIndexFile: {description: "PacBio index file for the subreads input bam file", category: "common"}
        useDeepVariant: {description: "Use DeepVariant caller, the default is to use GATK4", category: "common"}
        targetGenes: {description: "Bed file containing the target genes. Used to determine the PGx phasing and Picard HsMetrics", category: "optional"}
    }
}
