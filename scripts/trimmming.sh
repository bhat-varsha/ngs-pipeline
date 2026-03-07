#!/bin/bash

# Step 4: Adapter trimming using Trimmomatic
# Make sure Trimmomatic is installed and the conda environment is activated

# Activate environment (example)
# conda activate trimomatic

trimmomatic PE -threads 8 -phred33 \
SRR36264395_1.fastq SRR36264395_2.fastq \
R1_paired.fastq R1_unpaired.fastq \
R2_paired.fastq R2_unpaired.fastq \
ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 \
LEADING:3 TRAILING:3 SLIDINGWINDOW:4:20 MINLEN:36