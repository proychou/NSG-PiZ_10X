
#!/bin/bash
#SBATCH --partition=campus-new
#SBATCH -c 16
#SBATCH -t 2
#SBATCH --mem 320G
#SBATCH --mail-type=FAIL
#SBATCH --mail-user=ssathees@fredhutch.org
source /app/lmod/lmod/init/profile
################################

#Load Modules
ml load CellRanger/7.1.0

# Run cellranger count command
cellranger count --id=Sample2_AAV_mm10_trim90 \
   --fastqs=/fh/fast/jerome_k/HBV-AAV-10X_Dans/231004_A01152_0386_BHFLL7DRX3_bclconvert_PR \
   --sample=Sample2_AAV \
   --transcriptome=/shared/biodata/ngs/Reference/10x/refdata-cellranger-mm10-3.0.0 \
   --r2-length=90