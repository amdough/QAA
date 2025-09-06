#!/bin/bash

#SBATCH --account=bgmp                          #REQUIRED: which account to use
#SBATCH --partition=bgmp                        #REQUIRED: which partition to use
#SBATCH --cpus-per-task=8   
#SBATCH --mem=32G              #optional: number of cpus, default is 1
#SBATCH --mail-user=amdo@uoregon.edu     #optional: if you'd like email
#SBATCH --mail-type=END,FAIL                   #optional: must set email first, what type of email you want
#SBATCH --job-name=ps2_staral              #optional: job name
#SBATCH --output=PS2_staral_%j.out       #optional: file to store stdout from job, %j adds the assigned jobID
#SBATCH --error=PS2_staral_%j.err        #optional: file to store stderr from job, %j adds the assigned jobID
#SBATCH --time=10:00:00 

# Ccom61 

mamba activate qaa

# readFilesIn_1=/projects/bgmp/amdo/bioinfo/Bi623/PS2/QAA/CcoxCrh_comrhy61_EO_6cm_1_1_paired.fq.gz
# readFilesIn_2=/projects/bgmp/amdo/bioinfo/Bi623/PS2/QAA/CcoxCrh_comrhy61_EO_6cm_1_2_paired.fq.gz
# genomeDir=/projects/bgmp/amdo/bioinfo/Bi623/PS2/QAA/part3/campylomormyrus_STAR_2.7.11b
# outDir=Ccom61_run1
# outFileNamePrefix=$outDir/campySTARalign_Ccom61_

# mkdir -p $outDir


# /usr/bin/time -v STAR --runThreadN 8 --runMode alignReads \
#     --outFilterMultimapNmax 3 \
#     --outSAMunmapped Within KeepPairs \
#     --alignIntronMax 1000000 --alignMatesGapMax 1000000 \
#     --readFilesCommand zcat \
#     --readFilesIn $readFilesIn_1 $readFilesIn_2 \
#     --genomeDir $genomeDir \
#     --outFileNamePrefix $outFileNamePrefix \
#     --outSAMtype BAM SortedByCoordinate \
#     --outSAMattributes Standard \
#     --outSAMattrRGline ID:CcoxCrh_comrhy61_EO_6cm SM:CcoxCrh_comrhy61_EO_6cm LB:RNA PL:ILLUMINA



#Ccom111


mamba activate qaa

readFilesIn_1=/projects/bgmp/amdo/bioinfo/Bi623/PS2/QAA/CcoxCrh_comrhy111_EO_adult_1_1_paired.fq.gz
readFilesIn_2=/projects/bgmp/amdo/bioinfo/Bi623/PS2/QAA/CcoxCrh_comrhy111_EO_adult_1_2_paired.fq.gz
genomeDir=/projects/bgmp/amdo/bioinfo/Bi623/PS2/QAA/part3/campylomormyrus_STAR_2.7.11b
outDir=Ccom111_run1
outFileNamePrefix=$outDir/campySTARalign_Ccom111_

# mkdir -p $outDir


/usr/bin/time -v STAR --runThreadN 8 --runMode alignReads \
    --outFilterMultimapNmax 3 \
    --outSAMunmapped Within KeepPairs \
    --alignIntronMax 1000000 --alignMatesGapMax 1000000 \
    --readFilesCommand zcat \
    --readFilesIn $readFilesIn_1 $readFilesIn_2 \
    --genomeDir $genomeDir \
    --outFileNamePrefix $outFileNamePrefix \
    --outSAMtype BAM SortedByCoordinate \
    --outSAMattributes Standard \
    --outSAMattrRGline ID:CcoxCrh_comrhy111_EO_adult SM:CcoxCrh_comrhy111_EO_adult LB:RNA PL:ILLUMINA

