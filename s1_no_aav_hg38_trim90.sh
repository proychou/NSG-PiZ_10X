#!/bin/bash
#SBATCH --partition=campus-new
#SBATCH -c 16
#SBATCH -t 2
#SBATCH --mem 320G


source /app/lmod/lmod/init/profile
################################

#Load Modules
ml load CellRanger/7.1.0

# Run cellranger count command
cellranger count --id=Sample1_No_AAV_hg38_trim90 \
   --fastqs=/fh/fast/jerome_k/HBV-AAV-10X_Dans/231004_A01152_0387_AHFKGLDRX3_bclconvert_PR \
   --sample=Sample1_No_AAV \
   --transcriptome=/shared/biodata/ngs/Reference/10x/refdata-cellranger-GRCh38-3.0.0 \
   --r2-length=90