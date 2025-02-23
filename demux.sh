#Strongin/Stone 10X experiment October 2023
#Pavitra Roychoudhury

#to convert raw bcls to fastqs using Illumina bclconvert

cd /fh/fast/jerome_k/HBV-AAV-10X_Dans

module load bcl-convert/4.0.3-2el7.x86_64
bcl-convert --bcl-input-directory ./231004_A01152_0386_BHFLL7DRX3 --output-directory ./231004_A01152_0386_BHFLL7DRX3_bclconvert_PR --sample-sheet ./231004_A01152_0386_BHFLL7DRX3_bclconvert_PR/20231004_10X_KeithLab_Dan_Humanized_mouse_liver_AAV_500cycles_Novaseq_trimindexHX.csv -f --no-lane-splitting true 
chmod -R 750 231004_A01152_0386_BHFLL7DRX3_bclconvert_PR

bcl-convert --bcl-input-directory ./231004_A01152_0387_AHFKGLDRX3 --output-directory ./231004_A01152_0387_AHFKGLDRX3_bclconvert_PR --sample-sheet ./231004_A01152_0387_AHFKGLDRX3_bclconvert_PR/20231004_10X_KeithLab_Dan_Humanized_mouse_liver_NoAAV_500cycles_Novaseq_trimindexHX.csv -f --no-lane-splitting true 
chmod -R 750 231004_A01152_0387_AHFKGLDRX3_bclconvert_PR 