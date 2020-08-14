version 1.0

# Copyright (c) 2018 Leiden University Medical Center
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

task Longshot {
    input {
        File inputBam
        File inputBamIndex
        File referenceFile
        File referenceFileIndex
        String outputPath
        String sampleID
        String? outputBamPath

        String memory = "3G"
        Int timeMinutes = 5
        String dockerImage = "quay.io/biocontainers/longshot:0.4.1--h80880c6_0"
    }

    command {
        set -e

        longshot \
        --bam ~{inputBam} \
        --ref ~{referenceFile} \
        --out ~{outputPath} \
        ~{if defined(outputBamPath) then "-O " +  outputBamPath  else ""} \
        --sample_id ~{sampleID}
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
        sampleID: "Specify a sample ID to write to the output VCF"
        memory: {description: "The amount of memory this job will use.", category: "advanced"}
        timeMinutes: {description: "The maximum amount of time the job will run in minutes.", category: "advanced"}
        dockerImage: {description: "The docker image used for this task. Changing this may result in errors which the developers may choose not to address.",
                      category: "advanced"}
    }
}
