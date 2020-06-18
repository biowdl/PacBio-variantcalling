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

workflow VariantCalling {
    input {
        File subreadsConfigFile
        File dockerImagesFile
        File referenceFile
        String referencePrefix
    }

    call SubreadsProcessing.SubreadsProcessing as SubreadsProcessing {
      input:
        subreadsConfigFile = subreadsConfigFile,
        dockerImagesFile = dockerImagesFile
    }

    call minimap2.Indexing as index {
      input:
        useHomopolymerCompressedKmer = true,
        outputPrefix = referencePrefix,
        referenceFile = referenceFile
    }

    # Combine the sample names with the bam files
    Array[Pair[String, File]] SampleBam = zip(SubreadsProcessing.outputSamples, SubreadsProcessing.outputLima)

    scatter (pair in SampleBam) {
      call minimap2.Mapping as mapping {
        input:
          presetOption = "map-ont",
          referenceFile = index.outputIndexFile,
          outputPrefix = pair.left,
          queryFile = pair.right
      }
    }
}
