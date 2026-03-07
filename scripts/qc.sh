#!/bin/bash

# Step 3: Quality Control using FastQC
# FastQC generates HTML reports containing sequencing statistics
# including adapter content, sequence quality, GC content, etc.

fastqc SRR36264395_1.fastq
fastqc SRR36264395_2.fastq