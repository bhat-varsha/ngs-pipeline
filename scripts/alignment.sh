#!/bin/bash

# Step 5: Alignment using HISAT2
# Requires reference genome index

hisat2 -p 8 -x genome_index \
-1 R1_paired.fastq \
-2 R2_paired.fastq \
-S aligned.sam

# Convert SAM to BAM
samtools view -b aligned.sam > aligned.bam

# Sort BAM
samtools sort aligned.bam -o aligned_sorted.bam

# Index BAM file
samtools index aligned_sorted.bam