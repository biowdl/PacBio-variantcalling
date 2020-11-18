---
layout: default
title: "Inputs: VariantCalling"
---

# Inputs for VariantCalling

The following is an overview of all available inputs in
VariantCalling.


## Required inputs
<dl>
<dt id="VariantCalling.barcodesFasta"><a href="#VariantCalling.barcodesFasta">VariantCalling.barcodesFasta</a></dt>
<dd>
    <i>File </i><br />
    Fasta file with the barcodes to be used by Lima for demultiplexing.
</dd>
<dt id="VariantCalling.referenceFile"><a href="#VariantCalling.referenceFile">VariantCalling.referenceFile</a></dt>
<dd>
    <i>File </i><br />
    The fasta file to be used as reference.
</dd>
<dt id="VariantCalling.referenceFileDict"><a href="#VariantCalling.referenceFileDict">VariantCalling.referenceFileDict</a></dt>
<dd>
    <i>File </i><br />
    The picard dictionary file for the reference.
</dd>
<dt id="VariantCalling.referenceFileIndex"><a href="#VariantCalling.referenceFileIndex">VariantCalling.referenceFileIndex</a></dt>
<dd>
    <i>File </i><br />
    The samtools index file for the reference.
</dd>
<dt id="VariantCalling.referencePrefix"><a href="#VariantCalling.referencePrefix">VariantCalling.referencePrefix</a></dt>
<dd>
    <i>String </i><br />
    Name of the reference.
</dd>
<dt id="VariantCalling.subreadsFile"><a href="#VariantCalling.subreadsFile">VariantCalling.subreadsFile</a></dt>
<dd>
    <i>File </i><br />
    Subreads input bam file.
</dd>
</dl>

## Other common inputs
<dl>
<dt id="VariantCalling.DeepVariant.numShards"><a href="#VariantCalling.DeepVariant.numShards">VariantCalling.DeepVariant.numShards</a></dt>
<dd>
    <i>Int? </i><br />
    Number of shards for make_examples step.
</dd>
<dt id="VariantCalling.DeepVariant.VCFStatsReport"><a href="#VariantCalling.DeepVariant.VCFStatsReport">VariantCalling.DeepVariant.VCFStatsReport</a></dt>
<dd>
    <i>Boolean? </i><i>&mdash; Default:</i> <code>true</code><br />
    Output a visual report (HTML) of statistics about the output VCF.
</dd>
<dt id="VariantCalling.gatkVCF.dbsnpVCF"><a href="#VariantCalling.gatkVCF.dbsnpVCF">VariantCalling.gatkVCF.dbsnpVCF</a></dt>
<dd>
    <i>File? </i><br />
    A dbSNP VCF.
</dd>
<dt id="VariantCalling.gatkVCF.dbsnpVCFIndex"><a href="#VariantCalling.gatkVCF.dbsnpVCFIndex">VariantCalling.gatkVCF.dbsnpVCFIndex</a></dt>
<dd>
    <i>File? </i><br />
    The index for the dbSNP VCF.
</dd>
<dt id="VariantCalling.gatkVCF.pedigree"><a href="#VariantCalling.gatkVCF.pedigree">VariantCalling.gatkVCF.pedigree</a></dt>
<dd>
    <i>File? </i><br />
    Pedigree file for determining the population "founders".
</dd>
<dt id="VariantCalling.gvcf.dbsnpVCF"><a href="#VariantCalling.gvcf.dbsnpVCF">VariantCalling.gvcf.dbsnpVCF</a></dt>
<dd>
    <i>File? </i><br />
    A dbSNP VCF.
</dd>
<dt id="VariantCalling.gvcf.dbsnpVCFIndex"><a href="#VariantCalling.gvcf.dbsnpVCFIndex">VariantCalling.gvcf.dbsnpVCFIndex</a></dt>
<dd>
    <i>File? </i><br />
    The index for the dbSNP VCF.
</dd>
<dt id="VariantCalling.gvcf.dontUseSoftClippedBases"><a href="#VariantCalling.gvcf.dontUseSoftClippedBases">VariantCalling.gvcf.dontUseSoftClippedBases</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Do not use soft-clipped bases. Should be 'true' for RNA variant calling.
</dd>
<dt id="VariantCalling.gvcf.excludeIntervalList"><a href="#VariantCalling.gvcf.excludeIntervalList">VariantCalling.gvcf.excludeIntervalList</a></dt>
<dd>
    <i>Array[File]+? </i><br />
    Bed files or interval lists describing the regions to NOT operate on.
</dd>
<dt id="VariantCalling.gvcf.pedigree"><a href="#VariantCalling.gvcf.pedigree">VariantCalling.gvcf.pedigree</a></dt>
<dd>
    <i>File? </i><br />
    Pedigree file for determining the population "founders".
</dd>
<dt id="VariantCalling.gvcf.ploidy"><a href="#VariantCalling.gvcf.ploidy">VariantCalling.gvcf.ploidy</a></dt>
<dd>
    <i>Int? </i><br />
    The ploidy with which the variants should be called.
</dd>
<dt id="VariantCalling.haplotag.sample"><a href="#VariantCalling.haplotag.sample">VariantCalling.haplotag.sample</a></dt>
<dd>
    <i>String? </i><br />
    Name of a sample to phase. If not given, all samples in the input VCF are phased. Can be used multiple times.
</dd>
<dt id="VariantCalling.phase.chromosome"><a href="#VariantCalling.phase.chromosome">VariantCalling.phase.chromosome</a></dt>
<dd>
    <i>String? </i><br />
    Name of chromosome to phase. If not given, all chromosomes in the input VCF are phased. Can be used multiple times.
</dd>
<dt id="VariantCalling.phase.sample"><a href="#VariantCalling.phase.sample">VariantCalling.phase.sample</a></dt>
<dd>
    <i>String? </i><br />
    Name of a sample to phase. If not given, all samples in the input VCF are phased. Can be used multiple times.
</dd>
<dt id="VariantCalling.phase.tag"><a href="#VariantCalling.phase.tag">VariantCalling.phase.tag</a></dt>
<dd>
    <i>String? </i><br />
    Store phasing information with PS tag (standardized) or HP tag (used by GATK ReadBackedPhasing) (default: {description: PS).
</dd>
<dt id="VariantCalling.stats.sample"><a href="#VariantCalling.stats.sample">VariantCalling.stats.sample</a></dt>
<dd>
    <i>String? </i><br />
    Name of the sample to process. If not given, use first sample found in VCF.
</dd>
<dt id="VariantCalling.subreadsIndexFile"><a href="#VariantCalling.subreadsIndexFile">VariantCalling.subreadsIndexFile</a></dt>
<dd>
    <i>File? </i><br />
    PacBio index file for the subreads input bam file.
</dd>
<dt id="VariantCalling.SubreadsProcessing.ccs.minReadQuality"><a href="#VariantCalling.SubreadsProcessing.ccs.minReadQuality">VariantCalling.SubreadsProcessing.ccs.minReadQuality</a></dt>
<dd>
    <i>Float </i><i>&mdash; Default:</i> <code>0.99</code><br />
    Minimum predicted accuracy in [0, 1].
</dd>
<dt id="VariantCalling.SubreadsProcessing.generateFastq"><a href="#VariantCalling.SubreadsProcessing.generateFastq">VariantCalling.SubreadsProcessing.generateFastq</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Generate fastq files from demultiplexed bam files.
</dd>
<dt id="VariantCalling.SubreadsProcessing.lima.minLength"><a href="#VariantCalling.SubreadsProcessing.lima.minLength">VariantCalling.SubreadsProcessing.lima.minLength</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>50</code><br />
    Minimum sequence length after clipping.
</dd>
<dt id="VariantCalling.SubreadsProcessing.lima.minPasses"><a href="#VariantCalling.SubreadsProcessing.lima.minPasses">VariantCalling.SubreadsProcessing.lima.minPasses</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>0</code><br />
    Minimal number of full passes.
</dd>
<dt id="VariantCalling.SubreadsProcessing.lima.minScore"><a href="#VariantCalling.SubreadsProcessing.lima.minScore">VariantCalling.SubreadsProcessing.lima.minScore</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>0</code><br />
    Reads below the minimum barcode score are removed from downstream analysis.
</dd>
<dt id="VariantCalling.SubreadsProcessing.lima.minScoreLead"><a href="#VariantCalling.SubreadsProcessing.lima.minScoreLead">VariantCalling.SubreadsProcessing.lima.minScoreLead</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>10</code><br />
    The minimal score lead required to call a barcode pair significant.
</dd>
<dt id="VariantCalling.SubreadsProcessing.merge.threads"><a href="#VariantCalling.SubreadsProcessing.merge.threads">VariantCalling.SubreadsProcessing.merge.threads</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>1</code><br />
    Number of threads to use.
</dd>
<dt id="VariantCalling.SubreadsProcessing.pbindex.outputBamPath"><a href="#VariantCalling.SubreadsProcessing.pbindex.outputBamPath">VariantCalling.SubreadsProcessing.pbindex.outputBamPath</a></dt>
<dd>
    <i>String? </i><br />
    The location where the BAM file should be written to. The index will appear alongside this link to the BAM file.
</dd>
<dt id="VariantCalling.SubreadsProcessing.refine.requirePolyA"><a href="#VariantCalling.SubreadsProcessing.refine.requirePolyA">VariantCalling.SubreadsProcessing.refine.requirePolyA</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Require fl reads to have a poly(A) tail and remove it.
</dd>
<dt id="VariantCalling.useDeepVariant"><a href="#VariantCalling.useDeepVariant">VariantCalling.useDeepVariant</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Use DeepVariant caller, the default is to use GATK4.
</dd>
</dl>

## Advanced inputs
<details>
<summary> Show/Hide </summary>
<dl>
<dt id="VariantCalling.baitsToInterval.dockerImage"><a href="#VariantCalling.baitsToInterval.dockerImage">VariantCalling.baitsToInterval.dockerImage</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"quay.io/biocontainers/picard:2.20.5--0"</code><br />
    The docker image used for this task. Changing this may result in errors which the developers may choose not to address.
</dd>
<dt id="VariantCalling.baitsToInterval.javaXmx"><a href="#VariantCalling.baitsToInterval.javaXmx">VariantCalling.baitsToInterval.javaXmx</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"3G"</code><br />
    The maximum memory available to the program. Should be lower than `memory` to accommodate JVM overhead.
</dd>
<dt id="VariantCalling.baitsToInterval.memory"><a href="#VariantCalling.baitsToInterval.memory">VariantCalling.baitsToInterval.memory</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"4G"</code><br />
    The amount of memory this job will use.
</dd>
<dt id="VariantCalling.baitsToInterval.outputPath"><a href="#VariantCalling.baitsToInterval.outputPath">VariantCalling.baitsToInterval.outputPath</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"regions.interval_list"</code><br />
    The location the output interval list should be written to.
</dd>
<dt id="VariantCalling.baitsToInterval.timeMinutes"><a href="#VariantCalling.baitsToInterval.timeMinutes">VariantCalling.baitsToInterval.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>5</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
<dt id="VariantCalling.combineDeepVariantGVCFs.compressionLevel"><a href="#VariantCalling.combineDeepVariantGVCFs.compressionLevel">VariantCalling.combineDeepVariantGVCFs.compressionLevel</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>1</code><br />
    The compression level at which the BAM files are written.
</dd>
<dt id="VariantCalling.combineDeepVariantGVCFs.dockerImage"><a href="#VariantCalling.combineDeepVariantGVCFs.dockerImage">VariantCalling.combineDeepVariantGVCFs.dockerImage</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"quay.io/biocontainers/picard:2.23.2--0"</code><br />
    The docker image used for this task. Changing this may result in errors which the developers may choose not to address.
</dd>
<dt id="VariantCalling.combineDeepVariantGVCFs.javaXmx"><a href="#VariantCalling.combineDeepVariantGVCFs.javaXmx">VariantCalling.combineDeepVariantGVCFs.javaXmx</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"4G"</code><br />
    The maximum memory available to the program. Should be lower than `memory` to accommodate JVM overhead.
</dd>
<dt id="VariantCalling.combineDeepVariantGVCFs.memory"><a href="#VariantCalling.combineDeepVariantGVCFs.memory">VariantCalling.combineDeepVariantGVCFs.memory</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"5G"</code><br />
    The amount of memory this job will use.
</dd>
<dt id="VariantCalling.combineDeepVariantGVCFs.timeMinutes"><a href="#VariantCalling.combineDeepVariantGVCFs.timeMinutes">VariantCalling.combineDeepVariantGVCFs.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>1 + ceil(size(inputVCFs,"G")) * 2</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
<dt id="VariantCalling.combineDeepVariantGVCFs.useJdkDeflater"><a href="#VariantCalling.combineDeepVariantGVCFs.useJdkDeflater">VariantCalling.combineDeepVariantGVCFs.useJdkDeflater</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>true</code><br />
    True, uses the java deflator to compress the BAM files. False uses the optimized intel deflater.
</dd>
<dt id="VariantCalling.combineDeepVariantGVCFs.useJdkInflater"><a href="#VariantCalling.combineDeepVariantGVCFs.useJdkInflater">VariantCalling.combineDeepVariantGVCFs.useJdkInflater</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>true</code><br />
    True, uses the java inflater. False, uses the optimized intel inflater.
</dd>
<dt id="VariantCalling.combineDeepVariantVCFs.compressionLevel"><a href="#VariantCalling.combineDeepVariantVCFs.compressionLevel">VariantCalling.combineDeepVariantVCFs.compressionLevel</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>1</code><br />
    The compression level at which the BAM files are written.
</dd>
<dt id="VariantCalling.combineDeepVariantVCFs.dockerImage"><a href="#VariantCalling.combineDeepVariantVCFs.dockerImage">VariantCalling.combineDeepVariantVCFs.dockerImage</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"quay.io/biocontainers/picard:2.23.2--0"</code><br />
    The docker image used for this task. Changing this may result in errors which the developers may choose not to address.
</dd>
<dt id="VariantCalling.combineDeepVariantVCFs.javaXmx"><a href="#VariantCalling.combineDeepVariantVCFs.javaXmx">VariantCalling.combineDeepVariantVCFs.javaXmx</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"4G"</code><br />
    The maximum memory available to the program. Should be lower than `memory` to accommodate JVM overhead.
</dd>
<dt id="VariantCalling.combineDeepVariantVCFs.memory"><a href="#VariantCalling.combineDeepVariantVCFs.memory">VariantCalling.combineDeepVariantVCFs.memory</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"5G"</code><br />
    The amount of memory this job will use.
</dd>
<dt id="VariantCalling.combineDeepVariantVCFs.timeMinutes"><a href="#VariantCalling.combineDeepVariantVCFs.timeMinutes">VariantCalling.combineDeepVariantVCFs.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>1 + ceil(size(inputVCFs,"G")) * 2</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
<dt id="VariantCalling.combineDeepVariantVCFs.useJdkDeflater"><a href="#VariantCalling.combineDeepVariantVCFs.useJdkDeflater">VariantCalling.combineDeepVariantVCFs.useJdkDeflater</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>true</code><br />
    True, uses the java deflator to compress the BAM files. False uses the optimized intel deflater.
</dd>
<dt id="VariantCalling.combineDeepVariantVCFs.useJdkInflater"><a href="#VariantCalling.combineDeepVariantVCFs.useJdkInflater">VariantCalling.combineDeepVariantVCFs.useJdkInflater</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>true</code><br />
    True, uses the java inflater. False, uses the optimized intel inflater.
</dd>
<dt id="VariantCalling.combineGVCFs.compressionLevel"><a href="#VariantCalling.combineGVCFs.compressionLevel">VariantCalling.combineGVCFs.compressionLevel</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>1</code><br />
    The compression level at which the BAM files are written.
</dd>
<dt id="VariantCalling.combineGVCFs.dockerImage"><a href="#VariantCalling.combineGVCFs.dockerImage">VariantCalling.combineGVCFs.dockerImage</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"quay.io/biocontainers/picard:2.23.2--0"</code><br />
    The docker image used for this task. Changing this may result in errors which the developers may choose not to address.
</dd>
<dt id="VariantCalling.combineGVCFs.javaXmx"><a href="#VariantCalling.combineGVCFs.javaXmx">VariantCalling.combineGVCFs.javaXmx</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"4G"</code><br />
    The maximum memory available to the program. Should be lower than `memory` to accommodate JVM overhead.
</dd>
<dt id="VariantCalling.combineGVCFs.memory"><a href="#VariantCalling.combineGVCFs.memory">VariantCalling.combineGVCFs.memory</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"5G"</code><br />
    The amount of memory this job will use.
</dd>
<dt id="VariantCalling.combineGVCFs.timeMinutes"><a href="#VariantCalling.combineGVCFs.timeMinutes">VariantCalling.combineGVCFs.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>1 + ceil(size(inputVCFs,"G")) * 2</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
<dt id="VariantCalling.combineGVCFs.useJdkDeflater"><a href="#VariantCalling.combineGVCFs.useJdkDeflater">VariantCalling.combineGVCFs.useJdkDeflater</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>true</code><br />
    True, uses the java deflator to compress the BAM files. False uses the optimized intel deflater.
</dd>
<dt id="VariantCalling.combineGVCFs.useJdkInflater"><a href="#VariantCalling.combineGVCFs.useJdkInflater">VariantCalling.combineGVCFs.useJdkInflater</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>true</code><br />
    True, uses the java inflater. False, uses the optimized intel inflater.
</dd>
<dt id="VariantCalling.combineVCFs.compressionLevel"><a href="#VariantCalling.combineVCFs.compressionLevel">VariantCalling.combineVCFs.compressionLevel</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>1</code><br />
    The compression level at which the BAM files are written.
</dd>
<dt id="VariantCalling.combineVCFs.dockerImage"><a href="#VariantCalling.combineVCFs.dockerImage">VariantCalling.combineVCFs.dockerImage</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"quay.io/biocontainers/picard:2.23.2--0"</code><br />
    The docker image used for this task. Changing this may result in errors which the developers may choose not to address.
</dd>
<dt id="VariantCalling.combineVCFs.javaXmx"><a href="#VariantCalling.combineVCFs.javaXmx">VariantCalling.combineVCFs.javaXmx</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"4G"</code><br />
    The maximum memory available to the program. Should be lower than `memory` to accommodate JVM overhead.
</dd>
<dt id="VariantCalling.combineVCFs.memory"><a href="#VariantCalling.combineVCFs.memory">VariantCalling.combineVCFs.memory</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"5G"</code><br />
    The amount of memory this job will use.
</dd>
<dt id="VariantCalling.combineVCFs.timeMinutes"><a href="#VariantCalling.combineVCFs.timeMinutes">VariantCalling.combineVCFs.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>1 + ceil(size(inputVCFs,"G")) * 2</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
<dt id="VariantCalling.combineVCFs.useJdkDeflater"><a href="#VariantCalling.combineVCFs.useJdkDeflater">VariantCalling.combineVCFs.useJdkDeflater</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>true</code><br />
    True, uses the java deflator to compress the BAM files. False uses the optimized intel deflater.
</dd>
<dt id="VariantCalling.combineVCFs.useJdkInflater"><a href="#VariantCalling.combineVCFs.useJdkInflater">VariantCalling.combineVCFs.useJdkInflater</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>true</code><br />
    True, uses the java inflater. False, uses the optimized intel inflater.
</dd>
<dt id="VariantCalling.DeepVariant.customizedModel"><a href="#VariantCalling.DeepVariant.customizedModel">VariantCalling.DeepVariant.customizedModel</a></dt>
<dd>
    <i>File? </i><br />
    A path to a model checkpoint to load for the `call_variants` step. If not set, the default for each --model_type will be used.
</dd>
<dt id="VariantCalling.DeepVariant.dockerImage"><a href="#VariantCalling.DeepVariant.dockerImage">VariantCalling.DeepVariant.dockerImage</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"google/deepvariant:1.0.0"</code><br />
    The docker image used for this task. Changing this may result in errors which the developers may choose not to address.
</dd>
<dt id="VariantCalling.DeepVariant.memory"><a href="#VariantCalling.DeepVariant.memory">VariantCalling.DeepVariant.memory</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"3G"</code><br />
    The amount of memory this job will use.
</dd>
<dt id="VariantCalling.DeepVariant.timeMinutes"><a href="#VariantCalling.DeepVariant.timeMinutes">VariantCalling.DeepVariant.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>5000</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
<dt id="VariantCalling.gatkVCF.annotationGroups"><a href="#VariantCalling.gatkVCF.annotationGroups">VariantCalling.gatkVCF.annotationGroups</a></dt>
<dd>
    <i>Array[String] </i><i>&mdash; Default:</i> <code>["StandardAnnotation"]</code><br />
    Which annotation groups will be used for the annotation.
</dd>
<dt id="VariantCalling.gatkVCF.dockerImage"><a href="#VariantCalling.gatkVCF.dockerImage">VariantCalling.gatkVCF.dockerImage</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"quay.io/biocontainers/gatk4:4.1.8.0--py38h37ae868_0"</code><br />
    The docker image used for this task. Changing this may result in errors which the developers may choose not to address.
</dd>
<dt id="VariantCalling.gatkVCF.javaXmx"><a href="#VariantCalling.gatkVCF.javaXmx">VariantCalling.gatkVCF.javaXmx</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"6G"</code><br />
    The maximum memory available to the program. Should be lower than `memory` to accommodate JVM overhead.
</dd>
<dt id="VariantCalling.gatkVCF.memory"><a href="#VariantCalling.gatkVCF.memory">VariantCalling.gatkVCF.memory</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"7G"</code><br />
    The amount of memory this job will use.
</dd>
<dt id="VariantCalling.gatkVCF.timeMinutes"><a href="#VariantCalling.gatkVCF.timeMinutes">VariantCalling.gatkVCF.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>120</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
<dt id="VariantCalling.generateGVCF"><a href="#VariantCalling.generateGVCF">VariantCalling.generateGVCF</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Should g.vcf files be produced by the pipeline. This is extremely slow when used in combination with useDeepVariant.
</dd>
<dt id="VariantCalling.gvcf.contamination"><a href="#VariantCalling.gvcf.contamination">VariantCalling.gvcf.contamination</a></dt>
<dd>
    <i>Float? </i><br />
    Equivalent to HaplotypeCaller's `-contamination` option.
</dd>
<dt id="VariantCalling.gvcf.dockerImage"><a href="#VariantCalling.gvcf.dockerImage">VariantCalling.gvcf.dockerImage</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"quay.io/biocontainers/gatk4:4.1.8.0--py38h37ae868_0"</code><br />
    The docker image used for this task. Changing this may result in errors which the developers may choose not to address.
</dd>
<dt id="VariantCalling.gvcf.emitRefConfidence"><a href="#VariantCalling.gvcf.emitRefConfidence">VariantCalling.gvcf.emitRefConfidence</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>if gvcf then "GVCF" else "NONE"</code><br />
    Whether to include reference calls. Three modes: 'NONE', 'BP_RESOLUTION' and 'GVCF'.
</dd>
<dt id="VariantCalling.gvcf.memoryMb"><a href="#VariantCalling.gvcf.memoryMb">VariantCalling.gvcf.memoryMb</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>javaXmxMb + 512</code><br />
    The amount of memory this job will use in megabytes.
</dd>
<dt id="VariantCalling.gvcf.outputMode"><a href="#VariantCalling.gvcf.outputMode">VariantCalling.gvcf.outputMode</a></dt>
<dd>
    <i>String? </i><br />
    Specifies which type of calls we should output. Same as HaplotypeCaller's `--output-mode` option.
</dd>
<dt id="VariantCalling.gvcf.standardMinConfidenceThresholdForCalling"><a href="#VariantCalling.gvcf.standardMinConfidenceThresholdForCalling">VariantCalling.gvcf.standardMinConfidenceThresholdForCalling</a></dt>
<dd>
    <i>Float? </i><br />
    Confidence threshold used for calling variants.
</dd>
<dt id="VariantCalling.gvcf.timeMinutes"><a href="#VariantCalling.gvcf.timeMinutes">VariantCalling.gvcf.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>400</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
<dt id="VariantCalling.haplotag.dockerImage"><a href="#VariantCalling.haplotag.dockerImage">VariantCalling.haplotag.dockerImage</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"quay.io/biocontainers/mulled-v2-5c61fe1d8c284dd05d26238ce877aa323205bf82:89b4005d04552bdd268e8af323df83357e968d83-0"</code><br />
    The docker image used for this task. Changing this may result in errors which the developers may choose not to address.
</dd>
<dt id="VariantCalling.haplotag.memory"><a href="#VariantCalling.haplotag.memory">VariantCalling.haplotag.memory</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"4G"</code><br />
    The amount of memory this job will use.
</dd>
<dt id="VariantCalling.haplotag.regions"><a href="#VariantCalling.haplotag.regions">VariantCalling.haplotag.regions</a></dt>
<dd>
    <i>String? </i><br />
    Specify region(s) of interest to limit the tagging to reads/variants overlapping those regions. You can specify a space-separated list of regions in the form of chrom:start-end, chrom (consider entire chromosome), or chrom:start (consider region from this start to end of chromosome).
</dd>
<dt id="VariantCalling.haplotag.timeMinutes"><a href="#VariantCalling.haplotag.timeMinutes">VariantCalling.haplotag.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>120</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
<dt id="VariantCalling.index.cores"><a href="#VariantCalling.index.cores">VariantCalling.index.cores</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>1</code><br />
    The number of cores to be used.
</dd>
<dt id="VariantCalling.index.dockerImage"><a href="#VariantCalling.index.dockerImage">VariantCalling.index.dockerImage</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"quay.io/biocontainers/minimap2:2.17--h84994c4_0"</code><br />
    The docker image used for this task. Changing this may result in errors which the developers may choose not to address.
</dd>
<dt id="VariantCalling.index.kmerSize"><a href="#VariantCalling.index.kmerSize">VariantCalling.index.kmerSize</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>15</code><br />
    K-mer size (no larger than 28).
</dd>
<dt id="VariantCalling.index.memory"><a href="#VariantCalling.index.memory">VariantCalling.index.memory</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"4G"</code><br />
    The amount of memory available to the job.
</dd>
<dt id="VariantCalling.index.minimizerWindowSize"><a href="#VariantCalling.index.minimizerWindowSize">VariantCalling.index.minimizerWindowSize</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>10</code><br />
    Minimizer window size.
</dd>
<dt id="VariantCalling.index.splitIndex"><a href="#VariantCalling.index.splitIndex">VariantCalling.index.splitIndex</a></dt>
<dd>
    <i>Int? </i><br />
    Split index for every ~NUM input bases.
</dd>
<dt id="VariantCalling.index.timeMinutes"><a href="#VariantCalling.index.timeMinutes">VariantCalling.index.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>10</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
<dt id="VariantCalling.mapping.cores"><a href="#VariantCalling.mapping.cores">VariantCalling.mapping.cores</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>4</code><br />
    The number of cores to be used.
</dd>
<dt id="VariantCalling.mapping.dockerImage"><a href="#VariantCalling.mapping.dockerImage">VariantCalling.mapping.dockerImage</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"quay.io/biocontainers/pbmm2:1.3.0--h56fc30b_1"</code><br />
    The docker image used for this task. Changing this may result in errors which the developers may choose not to address.
</dd>
<dt id="VariantCalling.mapping.memory"><a href="#VariantCalling.mapping.memory">VariantCalling.mapping.memory</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"30G"</code><br />
    The amount of memory available to the job.
</dd>
<dt id="VariantCalling.mapping.timeMinutes"><a href="#VariantCalling.mapping.timeMinutes">VariantCalling.mapping.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>1 + ceil((size(queryFile,"G") * 2000 / cores))</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
<dt id="VariantCalling.multiqc.clConfig"><a href="#VariantCalling.multiqc.clConfig">VariantCalling.multiqc.clConfig</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to MultiQC's `--cl-config` option.
</dd>
<dt id="VariantCalling.multiqc.comment"><a href="#VariantCalling.multiqc.comment">VariantCalling.multiqc.comment</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to MultiQC's `--comment` option.
</dd>
<dt id="VariantCalling.multiqc.dirs"><a href="#VariantCalling.multiqc.dirs">VariantCalling.multiqc.dirs</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to MultiQC's `--dirs` flag.
</dd>
<dt id="VariantCalling.multiqc.dirsDepth"><a href="#VariantCalling.multiqc.dirsDepth">VariantCalling.multiqc.dirsDepth</a></dt>
<dd>
    <i>Int? </i><br />
    Equivalent to MultiQC's `--dirs-depth` option.
</dd>
<dt id="VariantCalling.multiqc.dockerImage"><a href="#VariantCalling.multiqc.dockerImage">VariantCalling.multiqc.dockerImage</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"lumc/multiqc_pgx:0.0.5"</code><br />
    The docker image used for this task. Changing this may result in errors which the developers may choose not to address.
</dd>
<dt id="VariantCalling.multiqc.exclude"><a href="#VariantCalling.multiqc.exclude">VariantCalling.multiqc.exclude</a></dt>
<dd>
    <i>Array[String]+? </i><br />
    Equivalent to MultiQC's `--exclude` option.
</dd>
<dt id="VariantCalling.multiqc.export"><a href="#VariantCalling.multiqc.export">VariantCalling.multiqc.export</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to MultiQC's `--export` flag.
</dd>
<dt id="VariantCalling.multiqc.fileList"><a href="#VariantCalling.multiqc.fileList">VariantCalling.multiqc.fileList</a></dt>
<dd>
    <i>File? </i><br />
    Equivalent to MultiQC's `--file-list` option.
</dd>
<dt id="VariantCalling.multiqc.fileName"><a href="#VariantCalling.multiqc.fileName">VariantCalling.multiqc.fileName</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to MultiQC's `--filename` option.
</dd>
<dt id="VariantCalling.multiqc.flat"><a href="#VariantCalling.multiqc.flat">VariantCalling.multiqc.flat</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to MultiQC's `--flat` flag.
</dd>
<dt id="VariantCalling.multiqc.force"><a href="#VariantCalling.multiqc.force">VariantCalling.multiqc.force</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to MultiQC's `--force` flag.
</dd>
<dt id="VariantCalling.multiqc.fullNames"><a href="#VariantCalling.multiqc.fullNames">VariantCalling.multiqc.fullNames</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to MultiQC's `--fullnames` flag.
</dd>
<dt id="VariantCalling.multiqc.ignore"><a href="#VariantCalling.multiqc.ignore">VariantCalling.multiqc.ignore</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to MultiQC's `--ignore` option.
</dd>
<dt id="VariantCalling.multiqc.ignoreSamples"><a href="#VariantCalling.multiqc.ignoreSamples">VariantCalling.multiqc.ignoreSamples</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to MultiQC's `--ignore-samples` option.
</dd>
<dt id="VariantCalling.multiqc.interactive"><a href="#VariantCalling.multiqc.interactive">VariantCalling.multiqc.interactive</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>true</code><br />
    Equivalent to MultiQC's `--interactive` flag.
</dd>
<dt id="VariantCalling.multiqc.lint"><a href="#VariantCalling.multiqc.lint">VariantCalling.multiqc.lint</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to MultiQC's `--lint` flag.
</dd>
<dt id="VariantCalling.multiqc.megaQCUpload"><a href="#VariantCalling.multiqc.megaQCUpload">VariantCalling.multiqc.megaQCUpload</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Opposite to MultiQC's `--no-megaqc-upload` flag.
</dd>
<dt id="VariantCalling.multiqc.memory"><a href="#VariantCalling.multiqc.memory">VariantCalling.multiqc.memory</a></dt>
<dd>
    <i>String? </i><br />
    The amount of memory this job will use.
</dd>
<dt id="VariantCalling.multiqc.module"><a href="#VariantCalling.multiqc.module">VariantCalling.multiqc.module</a></dt>
<dd>
    <i>Array[String]+? </i><br />
    Equivalent to MultiQC's `--module` option.
</dd>
<dt id="VariantCalling.multiqc.pdf"><a href="#VariantCalling.multiqc.pdf">VariantCalling.multiqc.pdf</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to MultiQC's `--pdf` flag.
</dd>
<dt id="VariantCalling.multiqc.sampleNames"><a href="#VariantCalling.multiqc.sampleNames">VariantCalling.multiqc.sampleNames</a></dt>
<dd>
    <i>File? </i><br />
    Equivalent to MultiQC's `--sample-names` option.
</dd>
<dt id="VariantCalling.multiqc.tag"><a href="#VariantCalling.multiqc.tag">VariantCalling.multiqc.tag</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to MultiQC's `--tag` option.
</dd>
<dt id="VariantCalling.multiqc.template"><a href="#VariantCalling.multiqc.template">VariantCalling.multiqc.template</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to MultiQC's `--template` option.
</dd>
<dt id="VariantCalling.multiqc.timeMinutes"><a href="#VariantCalling.multiqc.timeMinutes">VariantCalling.multiqc.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>2 + ceil((size(reports,"G") * 8))</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
<dt id="VariantCalling.multiqc.title"><a href="#VariantCalling.multiqc.title">VariantCalling.multiqc.title</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to MultiQC's `--title` option.
</dd>
<dt id="VariantCalling.multiqc.zipDataDir"><a href="#VariantCalling.multiqc.zipDataDir">VariantCalling.multiqc.zipDataDir</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>true</code><br />
    Equivalent to MultiQC's `--zip-data-dir` flag.
</dd>
<dt id="VariantCalling.multiQC_config"><a href="#VariantCalling.multiQC_config">VariantCalling.multiQC_config</a></dt>
<dd>
    <i>File </i><i>&mdash; Default:</i> <code>"multiqc_config.yml"</code><br />
    Configuration file for MultiQC, can be used to customise the final report.
</dd>
<dt id="VariantCalling.phase.algorithm"><a href="#VariantCalling.phase.algorithm">VariantCalling.phase.algorithm</a></dt>
<dd>
    <i>String? </i><br />
    Phasing algorithm to use (default: {description: whatshap).
</dd>
<dt id="VariantCalling.phase.dockerImage"><a href="#VariantCalling.phase.dockerImage">VariantCalling.phase.dockerImage</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"quay.io/biocontainers/mulled-v2-5c61fe1d8c284dd05d26238ce877aa323205bf82:89b4005d04552bdd268e8af323df83357e968d83-0"</code><br />
    The docker image used for this task. Changing this may result in errors which the developers may choose not to address.
</dd>
<dt id="VariantCalling.phase.memory"><a href="#VariantCalling.phase.memory">VariantCalling.phase.memory</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"4G"</code><br />
    The amount of memory this job will use.
</dd>
<dt id="VariantCalling.phase.ped"><a href="#VariantCalling.phase.ped">VariantCalling.phase.ped</a></dt>
<dd>
    <i>String? </i><br />
    Use pedigree information in PED file to improve phasing (switches to PedMEC algorithm). Columns 2, 3, 4 must refer to child, mother, and father sample names as used in the VCF and BAM/CRAM. Other columns are ignored.
</dd>
<dt id="VariantCalling.phase.threshold"><a href="#VariantCalling.phase.threshold">VariantCalling.phase.threshold</a></dt>
<dd>
    <i>String? </i><br />
    The threshold of the ratio between the probabilities that a pair of reads come from the same haplotype and different haplotypes in the read merging model (default: {description: 1000000).
</dd>
<dt id="VariantCalling.phase.timeMinutes"><a href="#VariantCalling.phase.timeMinutes">VariantCalling.phase.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>120</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
<dt id="VariantCalling.picard_hs_metrics.baitsFile"><a href="#VariantCalling.picard_hs_metrics.baitsFile">VariantCalling.picard_hs_metrics.baitsFile</a></dt>
<dd>
    <i>File </i><i>&mdash; Default:</i> <code>select_first([baits, targets])</code><br />
    Picard interval file of the bait set. Uses targets as a fallback when baits is not set.
</dd>
<dt id="VariantCalling.picard_hs_metrics.dockerImage"><a href="#VariantCalling.picard_hs_metrics.dockerImage">VariantCalling.picard_hs_metrics.dockerImage</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"quay.io/biocontainers/picard:2.23.2--0"</code><br />
    The docker image used for this task. Changing this may result in errors which the developers may choose not to address.
</dd>
<dt id="VariantCalling.picard_hs_metrics.javaXmxMb"><a href="#VariantCalling.picard_hs_metrics.javaXmxMb">VariantCalling.picard_hs_metrics.javaXmxMb</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>3072</code><br />
    The maximum memory available to the program in megabytes. Should be lower than `memoryMb` to accommodate JVM overhead.
</dd>
<dt id="VariantCalling.picard_hs_metrics.memoryMb"><a href="#VariantCalling.picard_hs_metrics.memoryMb">VariantCalling.picard_hs_metrics.memoryMb</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>javaXmxMb + 512</code><br />
    The amount of memory this job will use in megabytes.
</dd>
<dt id="VariantCalling.picard_hs_metrics.targetsFile"><a href="#VariantCalling.picard_hs_metrics.targetsFile">VariantCalling.picard_hs_metrics.targetsFile</a></dt>
<dd>
    <i>File </i><i>&mdash; Default:</i> <code>targets</code><br />
    Picard interval file of the capture targets, the same as targets.
</dd>
<dt id="VariantCalling.picard_hs_metrics.timeMinutes"><a href="#VariantCalling.picard_hs_metrics.timeMinutes">VariantCalling.picard_hs_metrics.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>1 + ceil((size(referenceFasta,"G") * 3 * 2)) + ceil((size(inputBam,"G") * 6))</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
<dt id="VariantCalling.picard_multiple_metrics.collectAlignmentSummaryMetrics"><a href="#VariantCalling.picard_multiple_metrics.collectAlignmentSummaryMetrics">VariantCalling.picard_multiple_metrics.collectAlignmentSummaryMetrics</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>true</code><br />
    Equivalent to the `PROGRAM=CollectAlignmentSummaryMetrics` argument.
</dd>
<dt id="VariantCalling.picard_multiple_metrics.collectGcBiasMetrics"><a href="#VariantCalling.picard_multiple_metrics.collectGcBiasMetrics">VariantCalling.picard_multiple_metrics.collectGcBiasMetrics</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>true</code><br />
    Equivalent to the `PROGRAM=CollectGcBiasMetrics` argument.
</dd>
<dt id="VariantCalling.picard_multiple_metrics.collectQualityYieldMetrics"><a href="#VariantCalling.picard_multiple_metrics.collectQualityYieldMetrics">VariantCalling.picard_multiple_metrics.collectQualityYieldMetrics</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>true</code><br />
    Equivalent to the `PROGRAM=CollectQualityYieldMetrics` argument.
</dd>
<dt id="VariantCalling.picard_multiple_metrics.collectSequencingArtifactMetrics"><a href="#VariantCalling.picard_multiple_metrics.collectSequencingArtifactMetrics">VariantCalling.picard_multiple_metrics.collectSequencingArtifactMetrics</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>true</code><br />
    Equivalent to the `PROGRAM=CollectSequencingArtifactMetrics` argument.
</dd>
<dt id="VariantCalling.picard_multiple_metrics.dockerImage"><a href="#VariantCalling.picard_multiple_metrics.dockerImage">VariantCalling.picard_multiple_metrics.dockerImage</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"quay.io/biocontainers/picard:2.23.2--0"</code><br />
    The docker image used for this task. Changing this may result in errors which the developers may choose not to address.
</dd>
<dt id="VariantCalling.picard_multiple_metrics.javaXmxMb"><a href="#VariantCalling.picard_multiple_metrics.javaXmxMb">VariantCalling.picard_multiple_metrics.javaXmxMb</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>3072</code><br />
    The maximum memory available to the program in megabytes. Should be lower than `memoryMb` to accommodate JVM overhead.
</dd>
<dt id="VariantCalling.picard_multiple_metrics.memoryMb"><a href="#VariantCalling.picard_multiple_metrics.memoryMb">VariantCalling.picard_multiple_metrics.memoryMb</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>javaXmxMb + 512</code><br />
    The amount of memory this job will use in megabytes.
</dd>
<dt id="VariantCalling.picard_multiple_metrics.qualityScoreDistribution"><a href="#VariantCalling.picard_multiple_metrics.qualityScoreDistribution">VariantCalling.picard_multiple_metrics.qualityScoreDistribution</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>true</code><br />
    Equivalent to the `PROGRAM=QualityScoreDistribution` argument.
</dd>
<dt id="VariantCalling.picard_multiple_metrics.timeMinutes"><a href="#VariantCalling.picard_multiple_metrics.timeMinutes">VariantCalling.picard_multiple_metrics.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>1 + ceil((size(referenceFasta,"G") * 3 * 2)) + ceil((size(inputBam,"G") * 6))</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
<dt id="VariantCalling.scatterList.dockerImage"><a href="#VariantCalling.scatterList.dockerImage">VariantCalling.scatterList.dockerImage</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"quay.io/biocontainers/chunked-scatter:0.2.0--py_0"</code><br />
    The docker image used for this task. Changing this may result in errors which the developers may choose not to address.
</dd>
<dt id="VariantCalling.scatterList.memory"><a href="#VariantCalling.scatterList.memory">VariantCalling.scatterList.memory</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"256M"</code><br />
    The amount of memory this job will use.
</dd>
<dt id="VariantCalling.scatterList.prefix"><a href="#VariantCalling.scatterList.prefix">VariantCalling.scatterList.prefix</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"scatters/scatter-"</code><br />
    The prefix of the ouput files. Output will be named like: <PREFIX><N>.bed, in which N is an incrementing number. Default 'scatter-'.
</dd>
<dt id="VariantCalling.scatterList.scatterSize"><a href="#VariantCalling.scatterList.scatterSize">VariantCalling.scatterList.scatterSize</a></dt>
<dd>
    <i>Int? </i><br />
    Overrides scatterSizeMillions with a smaller value if set.
</dd>
<dt id="VariantCalling.scatterList.splitContigs"><a href="#VariantCalling.scatterList.splitContigs">VariantCalling.scatterList.splitContigs</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    If set, contigs are allowed to be split up over multiple files.
</dd>
<dt id="VariantCalling.scatterList.timeMinutes"><a href="#VariantCalling.scatterList.timeMinutes">VariantCalling.scatterList.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>2</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
<dt id="VariantCalling.stats.chromosome"><a href="#VariantCalling.stats.chromosome">VariantCalling.stats.chromosome</a></dt>
<dd>
    <i>String? </i><br />
    Name of chromosome to process. If not given, all chromosomes in the input VCF are considered.
</dd>
<dt id="VariantCalling.stats.dockerImage"><a href="#VariantCalling.stats.dockerImage">VariantCalling.stats.dockerImage</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"quay.io/biocontainers/mulled-v2-5c61fe1d8c284dd05d26238ce877aa323205bf82:89b4005d04552bdd268e8af323df83357e968d83-0"</code><br />
    The docker image used for this task. Changing this may result in errors which the developers may choose not to address.
</dd>
<dt id="VariantCalling.stats.memory"><a href="#VariantCalling.stats.memory">VariantCalling.stats.memory</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"4G"</code><br />
    The amount of memory this job will use.
</dd>
<dt id="VariantCalling.stats.timeMinutes"><a href="#VariantCalling.stats.timeMinutes">VariantCalling.stats.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>120</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
<dt id="VariantCalling.SubreadsProcessing.bam2FastqLima.compressionLevel"><a href="#VariantCalling.SubreadsProcessing.bam2FastqLima.compressionLevel">VariantCalling.SubreadsProcessing.bam2FastqLima.compressionLevel</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>1</code><br />
    Gzip compression level [1-9]
</dd>
<dt id="VariantCalling.SubreadsProcessing.bam2FastqLima.memory"><a href="#VariantCalling.SubreadsProcessing.bam2FastqLima.memory">VariantCalling.SubreadsProcessing.bam2FastqLima.memory</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"2G"</code><br />
    The amount of memory available to the job.
</dd>
<dt id="VariantCalling.SubreadsProcessing.bam2FastqLima.seqIdPrefix"><a href="#VariantCalling.SubreadsProcessing.bam2FastqLima.seqIdPrefix">VariantCalling.SubreadsProcessing.bam2FastqLima.seqIdPrefix</a></dt>
<dd>
    <i>String? </i><br />
    Prefix for sequence IDs in headers.
</dd>
<dt id="VariantCalling.SubreadsProcessing.bam2FastqLima.splitByBarcode"><a href="#VariantCalling.SubreadsProcessing.bam2FastqLima.splitByBarcode">VariantCalling.SubreadsProcessing.bam2FastqLima.splitByBarcode</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Split output into multiple fastq files, by barcode pairs.
</dd>
<dt id="VariantCalling.SubreadsProcessing.bam2FastqLima.timeMinutes"><a href="#VariantCalling.SubreadsProcessing.bam2FastqLima.timeMinutes">VariantCalling.SubreadsProcessing.bam2FastqLima.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>15</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
<dt id="VariantCalling.SubreadsProcessing.bam2FastqRefine.compressionLevel"><a href="#VariantCalling.SubreadsProcessing.bam2FastqRefine.compressionLevel">VariantCalling.SubreadsProcessing.bam2FastqRefine.compressionLevel</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>1</code><br />
    Gzip compression level [1-9]
</dd>
<dt id="VariantCalling.SubreadsProcessing.bam2FastqRefine.memory"><a href="#VariantCalling.SubreadsProcessing.bam2FastqRefine.memory">VariantCalling.SubreadsProcessing.bam2FastqRefine.memory</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"2G"</code><br />
    The amount of memory available to the job.
</dd>
<dt id="VariantCalling.SubreadsProcessing.bam2FastqRefine.seqIdPrefix"><a href="#VariantCalling.SubreadsProcessing.bam2FastqRefine.seqIdPrefix">VariantCalling.SubreadsProcessing.bam2FastqRefine.seqIdPrefix</a></dt>
<dd>
    <i>String? </i><br />
    Prefix for sequence IDs in headers.
</dd>
<dt id="VariantCalling.SubreadsProcessing.bam2FastqRefine.splitByBarcode"><a href="#VariantCalling.SubreadsProcessing.bam2FastqRefine.splitByBarcode">VariantCalling.SubreadsProcessing.bam2FastqRefine.splitByBarcode</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Split output into multiple fastq files, by barcode pairs.
</dd>
<dt id="VariantCalling.SubreadsProcessing.bam2FastqRefine.timeMinutes"><a href="#VariantCalling.SubreadsProcessing.bam2FastqRefine.timeMinutes">VariantCalling.SubreadsProcessing.bam2FastqRefine.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>15</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
<dt id="VariantCalling.SubreadsProcessing.ccs.byStrand"><a href="#VariantCalling.SubreadsProcessing.ccs.byStrand">VariantCalling.SubreadsProcessing.ccs.byStrand</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Generate a consensus for each strand.
</dd>
<dt id="VariantCalling.SubreadsProcessing.ccs.logLevel"><a href="#VariantCalling.SubreadsProcessing.ccs.logLevel">VariantCalling.SubreadsProcessing.ccs.logLevel</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"WARN"</code><br />
    Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL).
</dd>
<dt id="VariantCalling.SubreadsProcessing.ccs.maxLength"><a href="#VariantCalling.SubreadsProcessing.ccs.maxLength">VariantCalling.SubreadsProcessing.ccs.maxLength</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>50000</code><br />
    Maximum draft length before polishing.
</dd>
<dt id="VariantCalling.SubreadsProcessing.ccs.memory"><a href="#VariantCalling.SubreadsProcessing.ccs.memory">VariantCalling.SubreadsProcessing.ccs.memory</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"2G"</code><br />
    The amount of memory available to the job.
</dd>
<dt id="VariantCalling.SubreadsProcessing.ccs.minLength"><a href="#VariantCalling.SubreadsProcessing.ccs.minLength">VariantCalling.SubreadsProcessing.ccs.minLength</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>10</code><br />
    Minimum draft length before polishing.
</dd>
<dt id="VariantCalling.SubreadsProcessing.ccs.minPasses"><a href="#VariantCalling.SubreadsProcessing.ccs.minPasses">VariantCalling.SubreadsProcessing.ccs.minPasses</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>3</code><br />
    Minimum number of full-length subreads required to generate ccs for a ZMW.
</dd>
<dt id="VariantCalling.SubreadsProcessing.ccs.timeMinutes"><a href="#VariantCalling.SubreadsProcessing.ccs.timeMinutes">VariantCalling.SubreadsProcessing.ccs.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>1440</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
<dt id="VariantCalling.SubreadsProcessing.ccsMode"><a href="#VariantCalling.SubreadsProcessing.ccsMode">VariantCalling.SubreadsProcessing.ccsMode</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>true</code><br />
    Ccs mode, use optimal alignment options.
</dd>
<dt id="VariantCalling.SubreadsProcessing.createChunks.memory"><a href="#VariantCalling.SubreadsProcessing.createChunks.memory">VariantCalling.SubreadsProcessing.createChunks.memory</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"4G"</code><br />
    The amount of memory this job will use.
</dd>
<dt id="VariantCalling.SubreadsProcessing.dockerImages"><a href="#VariantCalling.SubreadsProcessing.dockerImages">VariantCalling.SubreadsProcessing.dockerImages</a></dt>
<dd>
    <i>Map[String,String] </i><i>&mdash; Default:</i> <code>{"bam2fastx": "quay.io/biocontainers/bam2fastx:1.3.0--he1c1bb9_8", "biowdl-input-converter": "quay.io/biocontainers/biowdl-input-converter:0.2.1--py_0", "ccs": "quay.io/biocontainers/pbccs:5.0.0--0", "fastqc": "quay.io/biocontainers/fastqc:0.11.9--0", "isoseq3": "quay.io/biocontainers/isoseq3:3.3.0--0", "lima": "quay.io/biocontainers/lima:1.11.0--0", "python3": "python:3.7-slim", "multiqc": "quay.io/biocontainers/multiqc:1.9--pyh9f0ad1d_0", "pacbio-merge": "lumc/pacbio-merge:0.2"}</code><br />
    The docker image(s) used for this workflow. Changing this may result in errors which the developers may choose not to address.
</dd>
<dt id="VariantCalling.SubreadsProcessing.fastqcLima.adapters"><a href="#VariantCalling.SubreadsProcessing.fastqcLima.adapters">VariantCalling.SubreadsProcessing.fastqcLima.adapters</a></dt>
<dd>
    <i>File? </i><br />
    Equivalent to fastqc's --adapters option.
</dd>
<dt id="VariantCalling.SubreadsProcessing.fastqcLima.casava"><a href="#VariantCalling.SubreadsProcessing.fastqcLima.casava">VariantCalling.SubreadsProcessing.fastqcLima.casava</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to fastqc's --casava flag.
</dd>
<dt id="VariantCalling.SubreadsProcessing.fastqcLima.contaminants"><a href="#VariantCalling.SubreadsProcessing.fastqcLima.contaminants">VariantCalling.SubreadsProcessing.fastqcLima.contaminants</a></dt>
<dd>
    <i>File? </i><br />
    Equivalent to fastqc's --contaminants option.
</dd>
<dt id="VariantCalling.SubreadsProcessing.fastqcLima.dir"><a href="#VariantCalling.SubreadsProcessing.fastqcLima.dir">VariantCalling.SubreadsProcessing.fastqcLima.dir</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to fastqc's --dir option.
</dd>
<dt id="VariantCalling.SubreadsProcessing.fastqcLima.extract"><a href="#VariantCalling.SubreadsProcessing.fastqcLima.extract">VariantCalling.SubreadsProcessing.fastqcLima.extract</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to fastqc's --extract flag.
</dd>
<dt id="VariantCalling.SubreadsProcessing.fastqcLima.javaXmx"><a href="#VariantCalling.SubreadsProcessing.fastqcLima.javaXmx">VariantCalling.SubreadsProcessing.fastqcLima.javaXmx</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"1750M"</code><br />
    The maximum memory available to the program. Should be lower than `memory` to accommodate JVM overhead.
</dd>
<dt id="VariantCalling.SubreadsProcessing.fastqcLima.kmers"><a href="#VariantCalling.SubreadsProcessing.fastqcLima.kmers">VariantCalling.SubreadsProcessing.fastqcLima.kmers</a></dt>
<dd>
    <i>Int? </i><br />
    Equivalent to fastqc's --kmers option.
</dd>
<dt id="VariantCalling.SubreadsProcessing.fastqcLima.limits"><a href="#VariantCalling.SubreadsProcessing.fastqcLima.limits">VariantCalling.SubreadsProcessing.fastqcLima.limits</a></dt>
<dd>
    <i>File? </i><br />
    Equivalent to fastqc's --limits option.
</dd>
<dt id="VariantCalling.SubreadsProcessing.fastqcLima.memory"><a href="#VariantCalling.SubreadsProcessing.fastqcLima.memory">VariantCalling.SubreadsProcessing.fastqcLima.memory</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"2G"</code><br />
    The amount of memory this job will use.
</dd>
<dt id="VariantCalling.SubreadsProcessing.fastqcLima.minLength"><a href="#VariantCalling.SubreadsProcessing.fastqcLima.minLength">VariantCalling.SubreadsProcessing.fastqcLima.minLength</a></dt>
<dd>
    <i>Int? </i><br />
    Equivalent to fastqc's --min_length option.
</dd>
<dt id="VariantCalling.SubreadsProcessing.fastqcLima.nano"><a href="#VariantCalling.SubreadsProcessing.fastqcLima.nano">VariantCalling.SubreadsProcessing.fastqcLima.nano</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to fastqc's --nano flag.
</dd>
<dt id="VariantCalling.SubreadsProcessing.fastqcLima.noFilter"><a href="#VariantCalling.SubreadsProcessing.fastqcLima.noFilter">VariantCalling.SubreadsProcessing.fastqcLima.noFilter</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to fastqc's --nofilter flag.
</dd>
<dt id="VariantCalling.SubreadsProcessing.fastqcLima.nogroup"><a href="#VariantCalling.SubreadsProcessing.fastqcLima.nogroup">VariantCalling.SubreadsProcessing.fastqcLima.nogroup</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to fastqc's --nogroup flag.
</dd>
<dt id="VariantCalling.SubreadsProcessing.fastqcLima.timeMinutes"><a href="#VariantCalling.SubreadsProcessing.fastqcLima.timeMinutes">VariantCalling.SubreadsProcessing.fastqcLima.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>1 + ceil(size(seqFile,"G")) * 4</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
<dt id="VariantCalling.SubreadsProcessing.fastqcRefine.adapters"><a href="#VariantCalling.SubreadsProcessing.fastqcRefine.adapters">VariantCalling.SubreadsProcessing.fastqcRefine.adapters</a></dt>
<dd>
    <i>File? </i><br />
    Equivalent to fastqc's --adapters option.
</dd>
<dt id="VariantCalling.SubreadsProcessing.fastqcRefine.casava"><a href="#VariantCalling.SubreadsProcessing.fastqcRefine.casava">VariantCalling.SubreadsProcessing.fastqcRefine.casava</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to fastqc's --casava flag.
</dd>
<dt id="VariantCalling.SubreadsProcessing.fastqcRefine.contaminants"><a href="#VariantCalling.SubreadsProcessing.fastqcRefine.contaminants">VariantCalling.SubreadsProcessing.fastqcRefine.contaminants</a></dt>
<dd>
    <i>File? </i><br />
    Equivalent to fastqc's --contaminants option.
</dd>
<dt id="VariantCalling.SubreadsProcessing.fastqcRefine.dir"><a href="#VariantCalling.SubreadsProcessing.fastqcRefine.dir">VariantCalling.SubreadsProcessing.fastqcRefine.dir</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to fastqc's --dir option.
</dd>
<dt id="VariantCalling.SubreadsProcessing.fastqcRefine.extract"><a href="#VariantCalling.SubreadsProcessing.fastqcRefine.extract">VariantCalling.SubreadsProcessing.fastqcRefine.extract</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to fastqc's --extract flag.
</dd>
<dt id="VariantCalling.SubreadsProcessing.fastqcRefine.javaXmx"><a href="#VariantCalling.SubreadsProcessing.fastqcRefine.javaXmx">VariantCalling.SubreadsProcessing.fastqcRefine.javaXmx</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"1750M"</code><br />
    The maximum memory available to the program. Should be lower than `memory` to accommodate JVM overhead.
</dd>
<dt id="VariantCalling.SubreadsProcessing.fastqcRefine.kmers"><a href="#VariantCalling.SubreadsProcessing.fastqcRefine.kmers">VariantCalling.SubreadsProcessing.fastqcRefine.kmers</a></dt>
<dd>
    <i>Int? </i><br />
    Equivalent to fastqc's --kmers option.
</dd>
<dt id="VariantCalling.SubreadsProcessing.fastqcRefine.limits"><a href="#VariantCalling.SubreadsProcessing.fastqcRefine.limits">VariantCalling.SubreadsProcessing.fastqcRefine.limits</a></dt>
<dd>
    <i>File? </i><br />
    Equivalent to fastqc's --limits option.
</dd>
<dt id="VariantCalling.SubreadsProcessing.fastqcRefine.memory"><a href="#VariantCalling.SubreadsProcessing.fastqcRefine.memory">VariantCalling.SubreadsProcessing.fastqcRefine.memory</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"2G"</code><br />
    The amount of memory this job will use.
</dd>
<dt id="VariantCalling.SubreadsProcessing.fastqcRefine.minLength"><a href="#VariantCalling.SubreadsProcessing.fastqcRefine.minLength">VariantCalling.SubreadsProcessing.fastqcRefine.minLength</a></dt>
<dd>
    <i>Int? </i><br />
    Equivalent to fastqc's --min_length option.
</dd>
<dt id="VariantCalling.SubreadsProcessing.fastqcRefine.nano"><a href="#VariantCalling.SubreadsProcessing.fastqcRefine.nano">VariantCalling.SubreadsProcessing.fastqcRefine.nano</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to fastqc's --nano flag.
</dd>
<dt id="VariantCalling.SubreadsProcessing.fastqcRefine.noFilter"><a href="#VariantCalling.SubreadsProcessing.fastqcRefine.noFilter">VariantCalling.SubreadsProcessing.fastqcRefine.noFilter</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to fastqc's --nofilter flag.
</dd>
<dt id="VariantCalling.SubreadsProcessing.fastqcRefine.nogroup"><a href="#VariantCalling.SubreadsProcessing.fastqcRefine.nogroup">VariantCalling.SubreadsProcessing.fastqcRefine.nogroup</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to fastqc's --nogroup flag.
</dd>
<dt id="VariantCalling.SubreadsProcessing.fastqcRefine.timeMinutes"><a href="#VariantCalling.SubreadsProcessing.fastqcRefine.timeMinutes">VariantCalling.SubreadsProcessing.fastqcRefine.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>1 + ceil(size(seqFile,"G")) * 4</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
<dt id="VariantCalling.SubreadsProcessing.libraryDesign"><a href="#VariantCalling.SubreadsProcessing.libraryDesign">VariantCalling.SubreadsProcessing.libraryDesign</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"same"</code><br />
    Barcode structure of the library design.
</dd>
<dt id="VariantCalling.SubreadsProcessing.lima.guess"><a href="#VariantCalling.SubreadsProcessing.lima.guess">VariantCalling.SubreadsProcessing.lima.guess</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>0</code><br />
    Try to guess the used barcodes, using the provided mean score threshold, 0 means guessing deactivated.
</dd>
<dt id="VariantCalling.SubreadsProcessing.lima.guessMinCount"><a href="#VariantCalling.SubreadsProcessing.lima.guessMinCount">VariantCalling.SubreadsProcessing.lima.guessMinCount</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>0</code><br />
    Minimum number of ZMWs observed to whitelist barcodes.
</dd>
<dt id="VariantCalling.SubreadsProcessing.lima.logLevel"><a href="#VariantCalling.SubreadsProcessing.lima.logLevel">VariantCalling.SubreadsProcessing.lima.logLevel</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"WARN"</code><br />
    Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL).
</dd>
<dt id="VariantCalling.SubreadsProcessing.lima.maxInputLength"><a href="#VariantCalling.SubreadsProcessing.lima.maxInputLength">VariantCalling.SubreadsProcessing.lima.maxInputLength</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>0</code><br />
    Maximum input sequence length, 0 means deactivated.
</dd>
<dt id="VariantCalling.SubreadsProcessing.lima.maxScoredAdapters"><a href="#VariantCalling.SubreadsProcessing.lima.maxScoredAdapters">VariantCalling.SubreadsProcessing.lima.maxScoredAdapters</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>0</code><br />
    Analyze at maximum the provided number of adapters per ZMW, 0 means deactivated.
</dd>
<dt id="VariantCalling.SubreadsProcessing.lima.maxScoredBarcodePairs"><a href="#VariantCalling.SubreadsProcessing.lima.maxScoredBarcodePairs">VariantCalling.SubreadsProcessing.lima.maxScoredBarcodePairs</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>0</code><br />
    Only use up to N barcode pair regions to find the barcode, 0 means use all.
</dd>
<dt id="VariantCalling.SubreadsProcessing.lima.maxScoredBarcodes"><a href="#VariantCalling.SubreadsProcessing.lima.maxScoredBarcodes">VariantCalling.SubreadsProcessing.lima.maxScoredBarcodes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>0</code><br />
    Analyze at maximum the provided number of barcodes per ZMW, 0 means deactivated.
</dd>
<dt id="VariantCalling.SubreadsProcessing.lima.memory"><a href="#VariantCalling.SubreadsProcessing.lima.memory">VariantCalling.SubreadsProcessing.lima.memory</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"2G"</code><br />
    The amount of memory available to the job.
</dd>
<dt id="VariantCalling.SubreadsProcessing.lima.minEndScore"><a href="#VariantCalling.SubreadsProcessing.lima.minEndScore">VariantCalling.SubreadsProcessing.lima.minEndScore</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>0</code><br />
    Minimum end barcode score threshold is applied to the individual leading and trailing ends.
</dd>
<dt id="VariantCalling.SubreadsProcessing.lima.minRefSpan"><a href="#VariantCalling.SubreadsProcessing.lima.minRefSpan">VariantCalling.SubreadsProcessing.lima.minRefSpan</a></dt>
<dd>
    <i>Float </i><i>&mdash; Default:</i> <code>0.5</code><br />
    Minimum reference span relative to the barcode length.
</dd>
<dt id="VariantCalling.SubreadsProcessing.lima.minScoringRegion"><a href="#VariantCalling.SubreadsProcessing.lima.minScoringRegion">VariantCalling.SubreadsProcessing.lima.minScoringRegion</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>1</code><br />
    Minimum number of barcode regions with sufficient relative span to the barcode length.
</dd>
<dt id="VariantCalling.SubreadsProcessing.lima.minSignalIncrease"><a href="#VariantCalling.SubreadsProcessing.lima.minSignalIncrease">VariantCalling.SubreadsProcessing.lima.minSignalIncrease</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>10</code><br />
    The minimal score difference, between first and combined, required to call a barcode pair different.
</dd>
<dt id="VariantCalling.SubreadsProcessing.lima.peek"><a href="#VariantCalling.SubreadsProcessing.lima.peek">VariantCalling.SubreadsProcessing.lima.peek</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>0</code><br />
    Demux the first N ZMWs and return the mean score, 0 means peeking deactivated.
</dd>
<dt id="VariantCalling.SubreadsProcessing.lima.peekGuess"><a href="#VariantCalling.SubreadsProcessing.lima.peekGuess">VariantCalling.SubreadsProcessing.lima.peekGuess</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Try to infer the used barcodes subset, by peeking at the first 50,000 ZMWs.
</dd>
<dt id="VariantCalling.SubreadsProcessing.lima.scoredAdapterRatio"><a href="#VariantCalling.SubreadsProcessing.lima.scoredAdapterRatio">VariantCalling.SubreadsProcessing.lima.scoredAdapterRatio</a></dt>
<dd>
    <i>Float </i><i>&mdash; Default:</i> <code>0.25</code><br />
    Minimum ratio of scored vs sequenced adapters.
</dd>
<dt id="VariantCalling.SubreadsProcessing.lima.scoreFullPass"><a href="#VariantCalling.SubreadsProcessing.lima.scoreFullPass">VariantCalling.SubreadsProcessing.lima.scoreFullPass</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Only use subreads flanked by adapters for barcode identification.
</dd>
<dt id="VariantCalling.SubreadsProcessing.lima.timeMinutes"><a href="#VariantCalling.SubreadsProcessing.lima.timeMinutes">VariantCalling.SubreadsProcessing.lima.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>30</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
<dt id="VariantCalling.SubreadsProcessing.merge.dockerImage"><a href="#VariantCalling.SubreadsProcessing.merge.dockerImage">VariantCalling.SubreadsProcessing.merge.dockerImage</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"quay.io/biocontainers/samtools:1.10--h9402c20_2"</code><br />
    The docker image used for this task. Changing this may result in errors which the developers may choose not to address.
</dd>
<dt id="VariantCalling.SubreadsProcessing.merge.force"><a href="#VariantCalling.SubreadsProcessing.merge.force">VariantCalling.SubreadsProcessing.merge.force</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>true</code><br />
    Equivalent to samtools merge's `-f` flag.
</dd>
<dt id="VariantCalling.SubreadsProcessing.merge.memory"><a href="#VariantCalling.SubreadsProcessing.merge.memory">VariantCalling.SubreadsProcessing.merge.memory</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"4G"</code><br />
    The amount of memory this job will use.
</dd>
<dt id="VariantCalling.SubreadsProcessing.merge.timeMinutes"><a href="#VariantCalling.SubreadsProcessing.merge.timeMinutes">VariantCalling.SubreadsProcessing.merge.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>1 + ceil((size(bamFiles,"G") * 2))</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
<dt id="VariantCalling.SubreadsProcessing.mergeCCSReport.dockerImage"><a href="#VariantCalling.SubreadsProcessing.mergeCCSReport.dockerImage">VariantCalling.SubreadsProcessing.mergeCCSReport.dockerImage</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"lumc/pacbio-merge:0.2"</code><br />
    The docker image used for this task. Changing this may result in errors which the developers may choose not to address.
</dd>
<dt id="VariantCalling.SubreadsProcessing.mergeCCSReport.memory"><a href="#VariantCalling.SubreadsProcessing.mergeCCSReport.memory">VariantCalling.SubreadsProcessing.mergeCCSReport.memory</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"4G"</code><br />
    The amount of memory this job will use.
</dd>
<dt id="VariantCalling.SubreadsProcessing.multiqcTask.clConfig"><a href="#VariantCalling.SubreadsProcessing.multiqcTask.clConfig">VariantCalling.SubreadsProcessing.multiqcTask.clConfig</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to MultiQC's `--cl-config` option.
</dd>
<dt id="VariantCalling.SubreadsProcessing.multiqcTask.comment"><a href="#VariantCalling.SubreadsProcessing.multiqcTask.comment">VariantCalling.SubreadsProcessing.multiqcTask.comment</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to MultiQC's `--comment` option.
</dd>
<dt id="VariantCalling.SubreadsProcessing.multiqcTask.config"><a href="#VariantCalling.SubreadsProcessing.multiqcTask.config">VariantCalling.SubreadsProcessing.multiqcTask.config</a></dt>
<dd>
    <i>File? </i><br />
    Equivalent to MultiQC's `--config` option.
</dd>
<dt id="VariantCalling.SubreadsProcessing.multiqcTask.dataFormat"><a href="#VariantCalling.SubreadsProcessing.multiqcTask.dataFormat">VariantCalling.SubreadsProcessing.multiqcTask.dataFormat</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to MultiQC's `--data-format` option.
</dd>
<dt id="VariantCalling.SubreadsProcessing.multiqcTask.dirs"><a href="#VariantCalling.SubreadsProcessing.multiqcTask.dirs">VariantCalling.SubreadsProcessing.multiqcTask.dirs</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to MultiQC's `--dirs` flag.
</dd>
<dt id="VariantCalling.SubreadsProcessing.multiqcTask.dirsDepth"><a href="#VariantCalling.SubreadsProcessing.multiqcTask.dirsDepth">VariantCalling.SubreadsProcessing.multiqcTask.dirsDepth</a></dt>
<dd>
    <i>Int? </i><br />
    Equivalent to MultiQC's `--dirs-depth` option.
</dd>
<dt id="VariantCalling.SubreadsProcessing.multiqcTask.exclude"><a href="#VariantCalling.SubreadsProcessing.multiqcTask.exclude">VariantCalling.SubreadsProcessing.multiqcTask.exclude</a></dt>
<dd>
    <i>Array[String]+? </i><br />
    Equivalent to MultiQC's `--exclude` option.
</dd>
<dt id="VariantCalling.SubreadsProcessing.multiqcTask.export"><a href="#VariantCalling.SubreadsProcessing.multiqcTask.export">VariantCalling.SubreadsProcessing.multiqcTask.export</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to MultiQC's `--export` flag.
</dd>
<dt id="VariantCalling.SubreadsProcessing.multiqcTask.fileList"><a href="#VariantCalling.SubreadsProcessing.multiqcTask.fileList">VariantCalling.SubreadsProcessing.multiqcTask.fileList</a></dt>
<dd>
    <i>File? </i><br />
    Equivalent to MultiQC's `--file-list` option.
</dd>
<dt id="VariantCalling.SubreadsProcessing.multiqcTask.fileName"><a href="#VariantCalling.SubreadsProcessing.multiqcTask.fileName">VariantCalling.SubreadsProcessing.multiqcTask.fileName</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to MultiQC's `--filename` option.
</dd>
<dt id="VariantCalling.SubreadsProcessing.multiqcTask.flat"><a href="#VariantCalling.SubreadsProcessing.multiqcTask.flat">VariantCalling.SubreadsProcessing.multiqcTask.flat</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to MultiQC's `--flat` flag.
</dd>
<dt id="VariantCalling.SubreadsProcessing.multiqcTask.force"><a href="#VariantCalling.SubreadsProcessing.multiqcTask.force">VariantCalling.SubreadsProcessing.multiqcTask.force</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to MultiQC's `--force` flag.
</dd>
<dt id="VariantCalling.SubreadsProcessing.multiqcTask.fullNames"><a href="#VariantCalling.SubreadsProcessing.multiqcTask.fullNames">VariantCalling.SubreadsProcessing.multiqcTask.fullNames</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to MultiQC's `--fullnames` flag.
</dd>
<dt id="VariantCalling.SubreadsProcessing.multiqcTask.ignore"><a href="#VariantCalling.SubreadsProcessing.multiqcTask.ignore">VariantCalling.SubreadsProcessing.multiqcTask.ignore</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to MultiQC's `--ignore` option.
</dd>
<dt id="VariantCalling.SubreadsProcessing.multiqcTask.ignoreSamples"><a href="#VariantCalling.SubreadsProcessing.multiqcTask.ignoreSamples">VariantCalling.SubreadsProcessing.multiqcTask.ignoreSamples</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to MultiQC's `--ignore-samples` option.
</dd>
<dt id="VariantCalling.SubreadsProcessing.multiqcTask.interactive"><a href="#VariantCalling.SubreadsProcessing.multiqcTask.interactive">VariantCalling.SubreadsProcessing.multiqcTask.interactive</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>true</code><br />
    Equivalent to MultiQC's `--interactive` flag.
</dd>
<dt id="VariantCalling.SubreadsProcessing.multiqcTask.lint"><a href="#VariantCalling.SubreadsProcessing.multiqcTask.lint">VariantCalling.SubreadsProcessing.multiqcTask.lint</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to MultiQC's `--lint` flag.
</dd>
<dt id="VariantCalling.SubreadsProcessing.multiqcTask.megaQCUpload"><a href="#VariantCalling.SubreadsProcessing.multiqcTask.megaQCUpload">VariantCalling.SubreadsProcessing.multiqcTask.megaQCUpload</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Opposite to MultiQC's `--no-megaqc-upload` flag.
</dd>
<dt id="VariantCalling.SubreadsProcessing.multiqcTask.memory"><a href="#VariantCalling.SubreadsProcessing.multiqcTask.memory">VariantCalling.SubreadsProcessing.multiqcTask.memory</a></dt>
<dd>
    <i>String? </i><br />
    The amount of memory this job will use.
</dd>
<dt id="VariantCalling.SubreadsProcessing.multiqcTask.module"><a href="#VariantCalling.SubreadsProcessing.multiqcTask.module">VariantCalling.SubreadsProcessing.multiqcTask.module</a></dt>
<dd>
    <i>Array[String]+? </i><br />
    Equivalent to MultiQC's `--module` option.
</dd>
<dt id="VariantCalling.SubreadsProcessing.multiqcTask.pdf"><a href="#VariantCalling.SubreadsProcessing.multiqcTask.pdf">VariantCalling.SubreadsProcessing.multiqcTask.pdf</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to MultiQC's `--pdf` flag.
</dd>
<dt id="VariantCalling.SubreadsProcessing.multiqcTask.sampleNames"><a href="#VariantCalling.SubreadsProcessing.multiqcTask.sampleNames">VariantCalling.SubreadsProcessing.multiqcTask.sampleNames</a></dt>
<dd>
    <i>File? </i><br />
    Equivalent to MultiQC's `--sample-names` option.
</dd>
<dt id="VariantCalling.SubreadsProcessing.multiqcTask.tag"><a href="#VariantCalling.SubreadsProcessing.multiqcTask.tag">VariantCalling.SubreadsProcessing.multiqcTask.tag</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to MultiQC's `--tag` option.
</dd>
<dt id="VariantCalling.SubreadsProcessing.multiqcTask.template"><a href="#VariantCalling.SubreadsProcessing.multiqcTask.template">VariantCalling.SubreadsProcessing.multiqcTask.template</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to MultiQC's `--template` option.
</dd>
<dt id="VariantCalling.SubreadsProcessing.multiqcTask.timeMinutes"><a href="#VariantCalling.SubreadsProcessing.multiqcTask.timeMinutes">VariantCalling.SubreadsProcessing.multiqcTask.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>2 + ceil((size(reports,"G") * 8))</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
<dt id="VariantCalling.SubreadsProcessing.multiqcTask.title"><a href="#VariantCalling.SubreadsProcessing.multiqcTask.title">VariantCalling.SubreadsProcessing.multiqcTask.title</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to MultiQC's `--title` option.
</dd>
<dt id="VariantCalling.SubreadsProcessing.multiqcTask.zipDataDir"><a href="#VariantCalling.SubreadsProcessing.multiqcTask.zipDataDir">VariantCalling.SubreadsProcessing.multiqcTask.zipDataDir</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>true</code><br />
    Equivalent to MultiQC's `--zip-data-dir` flag.
</dd>
<dt id="VariantCalling.SubreadsProcessing.pbindex.dockerImage"><a href="#VariantCalling.SubreadsProcessing.pbindex.dockerImage">VariantCalling.SubreadsProcessing.pbindex.dockerImage</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"quay.io/biocontainers/pbbam:1.6.0--h5b7e6e0_0"</code><br />
    The docker image used for this task. Changing this may result in errors which the developers may choose not to address.
</dd>
<dt id="VariantCalling.SubreadsProcessing.pbindex.memory"><a href="#VariantCalling.SubreadsProcessing.pbindex.memory">VariantCalling.SubreadsProcessing.pbindex.memory</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"2G"</code><br />
    The amount of memory needed for the job.
</dd>
<dt id="VariantCalling.SubreadsProcessing.pbindex.timeMinutes"><a href="#VariantCalling.SubreadsProcessing.pbindex.timeMinutes">VariantCalling.SubreadsProcessing.pbindex.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>1 + ceil((size(bamFile,"G") * 4))</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
<dt id="VariantCalling.SubreadsProcessing.refine.cores"><a href="#VariantCalling.SubreadsProcessing.refine.cores">VariantCalling.SubreadsProcessing.refine.cores</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>2</code><br />
    The number of cores to be used.
</dd>
<dt id="VariantCalling.SubreadsProcessing.refine.logLevel"><a href="#VariantCalling.SubreadsProcessing.refine.logLevel">VariantCalling.SubreadsProcessing.refine.logLevel</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"WARN"</code><br />
    Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL).
</dd>
<dt id="VariantCalling.SubreadsProcessing.refine.memory"><a href="#VariantCalling.SubreadsProcessing.refine.memory">VariantCalling.SubreadsProcessing.refine.memory</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"2G"</code><br />
    The amount of memory available to the job.
</dd>
<dt id="VariantCalling.SubreadsProcessing.refine.minPolyALength"><a href="#VariantCalling.SubreadsProcessing.refine.minPolyALength">VariantCalling.SubreadsProcessing.refine.minPolyALength</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>20</code><br />
    Minimum poly(A) tail length.
</dd>
<dt id="VariantCalling.SubreadsProcessing.refine.timeMinutes"><a href="#VariantCalling.SubreadsProcessing.refine.timeMinutes">VariantCalling.SubreadsProcessing.refine.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>30</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
<dt id="VariantCalling.SubreadsProcessing.runIsoseq3Refine"><a href="#VariantCalling.SubreadsProcessing.runIsoseq3Refine">VariantCalling.SubreadsProcessing.runIsoseq3Refine</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Run isoseq3 refine for de-novo transcript reconstruction. Do not set this to true when analysing dna reads.
</dd>
<dt id="VariantCalling.SubreadsProcessing.splitBamNamed"><a href="#VariantCalling.SubreadsProcessing.splitBamNamed">VariantCalling.SubreadsProcessing.splitBamNamed</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>true</code><br />
    Split bam file(s) by resolved barcode pair name.
</dd>
<dt id="VariantCalling.targetToInterval.dockerImage"><a href="#VariantCalling.targetToInterval.dockerImage">VariantCalling.targetToInterval.dockerImage</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"quay.io/biocontainers/picard:2.20.5--0"</code><br />
    The docker image used for this task. Changing this may result in errors which the developers may choose not to address.
</dd>
<dt id="VariantCalling.targetToInterval.javaXmx"><a href="#VariantCalling.targetToInterval.javaXmx">VariantCalling.targetToInterval.javaXmx</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"3G"</code><br />
    The maximum memory available to the program. Should be lower than `memory` to accommodate JVM overhead.
</dd>
<dt id="VariantCalling.targetToInterval.memory"><a href="#VariantCalling.targetToInterval.memory">VariantCalling.targetToInterval.memory</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"4G"</code><br />
    The amount of memory this job will use.
</dd>
<dt id="VariantCalling.targetToInterval.outputPath"><a href="#VariantCalling.targetToInterval.outputPath">VariantCalling.targetToInterval.outputPath</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"regions.interval_list"</code><br />
    The location the output interval list should be written to.
</dd>
<dt id="VariantCalling.targetToInterval.timeMinutes"><a href="#VariantCalling.targetToInterval.timeMinutes">VariantCalling.targetToInterval.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>5</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
<dt id="VariantCalling.vcfMetrics.dockerImage"><a href="#VariantCalling.vcfMetrics.dockerImage">VariantCalling.vcfMetrics.dockerImage</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"quay.io/biocontainers/picard:2.23.2--0"</code><br />
    The docker image used for this task. Changing this may result in errors which the developers may choose not to address.
</dd>
<dt id="VariantCalling.vcfMetrics.javaXmx"><a href="#VariantCalling.vcfMetrics.javaXmx">VariantCalling.vcfMetrics.javaXmx</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"8G"</code><br />
    The maximum memory available to the program. Should be lower than `memory` to accommodate JVM overhead.
</dd>
<dt id="VariantCalling.vcfMetrics.memory"><a href="#VariantCalling.vcfMetrics.memory">VariantCalling.vcfMetrics.memory</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"9G"</code><br />
    The amount of memory this job will use.
</dd>
<dt id="VariantCalling.vcfMetrics.timeMinutes"><a href="#VariantCalling.vcfMetrics.timeMinutes">VariantCalling.vcfMetrics.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>1440</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
</dl>
</details>





## Do not set these inputs!
The following inputs should ***not*** be set, even though womtool may
show them as being available inputs.

* VariantCalling.SubreadsProcessing.fastqcRefine.NoneFile
* VariantCalling.SubreadsProcessing.fastqcRefine.NoneArray
* VariantCalling.SubreadsProcessing.fastqcLima.NoneFile
* VariantCalling.SubreadsProcessing.fastqcLima.NoneArray
* VariantCalling.SubreadsProcessing.multiqcTask.finished
* VariantCalling.SubreadsProcessing.multiqcTask.dependencies
* VariantCalling.multiqc.finished
* VariantCalling.multiqc.dependencies
