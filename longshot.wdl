version 1.0

task Longshot {
    input {
        File inputBam
        File inputBamIndex
        File referenceFile
        File referenceFileIndex
        String outputPath
        String? outputBamPath

        String memory = "3G"
        Int timeMinutes = 5
        String dockerImage = "quay.io/biocontainers/longshot:0.4.1--h80880c6_0"
    }

    command {
        set -e

        longshot \
        ~{if defined(outputBamPath) then ("--out_bam " +  '"' + outputBamPath+ '"') else ""} \
        --bam ~{inputBam} \
        --ref ~{referenceFile} \
        --out ~{outputPath} \
    }

    runtime {
        docker: dockerImage
        time_minutes: timeMinutes
        memory: memory
    }
    output {
        File outputVCF = outputPath
    }

    parameter_meta {
        inputBam: "sorted, indexed BAM file with error-prone reads"
        inputBamIndex: "Index for the inputBam file"
        referenceFile: "indexed FASTA reference that BAM file is aligned to"
        referenceFileIndex: "Index for the referenceFile"
        outputPath: "output VCF file with called variants."
        outputBamPath: "Write new bam file with haplotype tags (HP:i:1 and HP:i:2) for reads assigned to each haplotype, any existing HP and PS tags are removed"
        memory: {description: "The amount of memory this job will use.", category: "advanced"}
        timeMinutes: {description: "The maximum amount of time the job will run in minutes.", category: "advanced"}
        dockerImage: {description: "The docker image used for this task. Changing this may result in errors which the developers may choose not to address.",
                      category: "advanced"}
    }
}
