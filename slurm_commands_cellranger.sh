cd /fh/fast/jerome_k/HBV-AAV-10X_Dans/ #change dir
sbatch s2_aav_mm10_trim90.sh
sbatch s2_aav_hg38_trim90.sh
sbatch s1_no_aav_mm10_trim90.sh
sbatch s1_no_aav_hg38_trim90.sh
squeue -u ssathees