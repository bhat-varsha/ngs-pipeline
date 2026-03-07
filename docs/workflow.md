# TP53 NGS Pipeline Workflow

The analysis pipeline follows the steps below:

SRA Data (NCBI)
      │
      ▼
prefetch (SRA Toolkit)
      │
      ▼
fasterq-dump
(.fastq paired-end files)
      │
      ▼
FastQC
(Quality control reports)
      │
      ▼
Trimmomatic
(Adapter trimming & quality filtering)
      │
      ▼
HISAT2
(Read alignment to reference genome)
      │
      ▼
SAMtools
(SAM → BAM conversion, sorting, indexing)
      │
      ▼
Final BAM File
(Ready for downstream analysis)