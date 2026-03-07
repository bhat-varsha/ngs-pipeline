# TP53 NGS Analysis Pipeline

This repository demonstrates a basic RNA-seq preprocessing workflow using public SRA sequencing data.

Pipeline Steps:
1. Download sequencing data using SRA Toolkit
2. Convert SRA to FASTQ
3. Quality control with FastQC
4. Adapter trimming using Trimmomatic
5. Alignment using HISAT2
6. SAM to BAM conversion with Samtools

## Tools Used
- SRA Toolkit
- FastQC
- Trimmomatic
- HISAT2
- SAMtools
- Conda
- Linux (WSL)


## Installation

Install required tools using conda:

conda install -c bioconda sra-tools
conda install -c bioconda fastqc
conda install -c bioconda trimmomatic
conda install -c bioconda hisat2
conda install -c bioconda samtools

## Workflow Overview

1. Download SRA data using SRA Toolkit
   - `prefetch` retrieves sequencing data in `.sra` format
   - `fasterq-dump --split-files` converts the file into paired-end FASTQ files

2. Quality Control
   - FastQC generates an HTML report containing sequencing statistics
   - Metrics include adapter content, sequence quality, GC distribution, etc.

3. Adapter Trimming
   - Trimmomatic removes adapters and low-quality bases

4. Alignment
   - Reads are aligned to a reference genome using HISAT2
   - Output SAM file is converted to BAM using Samtools


## Pipeline Overview

```mermaid
flowchart TD
A[NCBI SRA Data] --> B[prefetch]
B --> C[fasterq-dump]
C --> D[FASTQ files]
D --> E[FastQC]
E --> F[Trimmomatic]
F --> G[HISAT2 Alignment]
G --> H[SAM File]
H --> I[SAMtools]
I --> J[Sorted BAM File]