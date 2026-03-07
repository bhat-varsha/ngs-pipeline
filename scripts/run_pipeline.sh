#!/bin/bash

echo "Step 1: Downloading data"
bash scripts/download_data.sh

echo "Step 2: Quality control"
bash scripts/qc.sh

echo "Step 3: Trimming reads"
bash scripts/trimming.sh

echo "Step 4: Alignment"
bash scripts/alignment.sh

echo "Pipeline completed successfully"