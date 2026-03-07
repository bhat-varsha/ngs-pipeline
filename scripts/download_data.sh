#!/bin/bash

# Step 1: Download sequencing data from NCBI SRA
# prefetch downloads the data in .sra format
prefetch SRR36264395

# Step 2: Convert SRA file to FASTQ format
# --split-files separates paired-end reads into forward and reverse files
fasterq-dump SRR36264395 --split-files