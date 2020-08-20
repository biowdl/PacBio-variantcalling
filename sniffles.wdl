version 1.0

task Sniffles {
    input {
        File inputBam
        File inputBamIndex
        String outputPath
        String? bedpe_string
        String? ivcf
        String? tmp_file
        Int? minsupport_int
        Int? max_distance
        Int? max_num_splits
        Int? threads_int
        Int? minlength_int
        Int? minmappingqual_int
        Int? numreadsreport_int
        Int? minseqsize_int
        Int? minzmw_int
        Boolean? cs_string
        Boolean? genotype
        Boolean? cluster
        Int? cluster_support
        Float? allelefreq_float
        Float? min_homo_af
        Float? min_het_af
        Boolean? report_bnd
        Boolean? not_report_seq
        Boolean? report_seq
        Boolean? ignore_sd
        Boolean? ccs_reads
        Boolean? report_str
        Boolean? skip_parameter_estimation
        Float? del_ratio
        Float? ins_ratio
        Int? max_diff_per_window
        Int? max_dist_aln_events

        String dockerImage = "quay.io/biocontainers/sniffles:1.0.12--h8b12597_0"
        String memory = "4G"
    }

    runtime {
        docker: dockerImage
        memory: memory
    }

    command {
        sniffles \
        -m ~{inputBam} \
        -v ~{outputPath} \
        ~{if defined(bedpe_string) then ("-b " +  '"' + bedpe_string + '"') else ""} \
        ~{if defined(ivcf) then ("--Ivcf " +  '"' + ivcf + '"') else ""} \
        ~{if defined(max_distance) then ("--max-distance" +  '"' + max_distance + '"') else ""} \
        ~{if defined(tmp_file) then ("--tmp_file " +  '"' + tmp_file + '"') else ""} \
        ~{if defined(minsupport_int) then ("-s " +  '"' + minsupport_int + '"') else ""} \
        ~{if defined(max_num_splits) then ("--max_num_splits " +  '"' + max_num_splits + '"') else ""} \
        ~{if defined(threads_int) then ("-t " +  '"' + threads_int + '"') else ""} \
        ~{if defined(minlength_int) then ("-l " +  '"' + minlength_int + '"') else ""} \
        ~{if defined(minmappingqual_int) then ("-q " +  '"' + minmappingqual_int + '"') else ""} \
        ~{if defined(numreadsreport_int) then ("-n " +  '"' + numreadsreport_int + '"') else ""} \
        ~{if defined(minseqsize_int) then ("-r " +  '"' + minseqsize_int + '"') else ""} \
        ~{if defined(minzmw_int) then ("-z " +  '"' + minzmw_int + '"') else ""} \
        ~{true="--cs_string" false="" cs_string} \
        ~{true="--genotype" false="" genotype} \
        ~{true="--cluster" false="" cluster} \
        ~{if defined(cluster_support) then ("--cluster_support " +  '"' + cluster_support + '"') else ""} \
        ~{if defined(allelefreq_float) then ("-f " +  '"' + allelefreq_float + '"') else ""} \
        ~{if defined(min_homo_af) then ("--min_homo_af " +  '"' + min_homo_af + '"') else ""} \
        ~{if defined(min_het_af) then ("--min_het_af " +  '"' + min_het_af + '"') else ""} \
        ~{true="--report_BND" false="" report_bnd} \
        ~{true="--not_report_seq" false="" not_report_seq} \
        ~{true="--report-seq" false="" report_seq} \
        ~{true="--ignore_sd" false="" ignore_sd} \
        ~{true="--ccs_reads" false="" ccs_reads} \
        ~{true="--report_str" false="" report_str} \
        ~{true="--skip_parameter_estimation" false="" skip_parameter_estimation} \
        ~{if defined(del_ratio) then ("--del_ratio " +  '"' + del_ratio + '"') else ""} \
        ~{if defined(ins_ratio) then ("--ins_ratio " +  '"' + ins_ratio + '"') else ""} \
        ~{if defined(max_diff_per_window) then ("--max_diff_per_window " +  '"' + max_diff_per_window + '"') else ""} \
        ~{if defined(max_dist_aln_events) then ("--max_dist_aln_events " +  '"' + max_dist_aln_events + '"') else ""}
    }
    
    output {
        File outputVCF = outputPath
    }

    parameter_meta {
        inputBam: {description: "The BAM files on which to perform variant calling.", category: "required"}
        inputBamIndex: {description: "The indexes for the input BAM files.", category: "required"}
        outputPath: {description: "The name of the output vcf file", category: "required"}
        bedpe_string: ",  --bedpe <string>"
        ivcf: "Input VCF file name. Enable force calling []"
        tmp_file: "path to temporary file otherwise Sniffles will use the current directory. []"
        minsupport_int: ",  --min_support <int>"
        max_num_splits: "Maximum number of splits per read to be still taken into account. [7]"
        max_distance: ",  --max_distance <int>"
        threads_int: ",  --threads <int>"
        minlength_int: ",  --min_length <int>"
        minmappingqual_int: ",  --minmapping_qual <int>"
        numreadsreport_int: ",  --num_reads_report <int>"
        minseqsize_int: ",  --min_seq_size <int>"
        minzmw_int: ",  --min_zmw <int>"
        cs_string: "Enables the scan of CS string instead of Cigar and MD.  [false]"
        genotype: "Inactivated: Automatically true. [true]"
        cluster: "Enables Sniffles to phase SVs that occur on the same reads [false]"
        cluster_support: "Minimum number of reads supporting clustering of SV. [1]"
        allelefreq_float: ",  --allelefreq <float>"
        min_homo_af: "Threshold on allele frequency (0-1).  [0.8]"
        min_het_af: "Threshold on allele frequency (0-1).  [0.3]"
        report_bnd: "Dont report BND instead use Tra in vcf output.  [true]"
        not_report_seq: "Dont report sequences for indels in vcf output. (Beta version!)  [false]"
        report_seq: "Inactivated (see not_report_seq). [false]"
        ignore_sd: "Ignores the sd based filtering.  [false]"
        ccs_reads: "Preset CCS Pacbio setting. (Beta)  [false]"
        report_str: "Enables the report of str. (alpha testing)  [false]"
        skip_parameter_estimation: "Enables the scan if only very few reads are present.  [false]"
        del_ratio: "Estimated ration of deletions per read (0-1).  [0.0458369]"
        ins_ratio: "Estimated ratio of insertions per read (0-1).  [0.049379]"
        max_diff_per_window: "Maximum differences per 100bp. [50]"
        max_dist_aln_events: "Maximum distance between alignment (indel) events. [4]"
        memory: {description: "The amount of memory this job will use in megabytes.", category: "advanced"}
        dockerImage: {description: "The docker image used for this task. Changing this may result in errors which the developers may choose not to address.", category: "advanced"}
    }
}
