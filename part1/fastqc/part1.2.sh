#!/bin/bash

#SBATCH --account=bgmp                          #REQUIRED: which account to use
#SBATCH --partition=bgmp                        #REQUIRED: which partition to use
#SBATCH --cpus-per-task=8                 #optional: number of cpus, default is 1
#SBATCH --mem=16GB
#SBATCH --mail-user=amdo@uoregon.edu     #optional: if you'd like email
#SBATCH --mail-type=END,FAIL                    #optional:  
#SBATCH --job-name=qaa              #optional: job name
#SBATCH --output=dem_qaa_%j.out       #optional: file to store stdout from job, %j adds the assigned jobID
#SBATCH --error=dem_qaa_%j.err
#SBATCH --time=02:00:00                     #optional: time limit, default is 1 hour

f1=/projects/bgmp/amdo/bioinfo/Bi623/PS2/QAA/CcoxCrh_comrhy61_EO_6cm_1_1.fastq.gz

f2=/projects/bgmp/amdo/bioinfo/Bi623/PS2/QAA/CcoxCrh_comrhy61_EO_6cm_1_2.fastq.gz

# f3=/projects/bgmp/amdo/bioinfo/Bi623/PS2/QAA/CcoxCrh_comrhy111_EO_adult_1_1.fastq.gz

# f4=/projects/bgmp/amdo/bioinfo/Bi623/PS2/QAA/CcoxCrh_comrhy111_EO_adult_1_2.fastq.gz

conda activate qaa 

/usr/bin/time -v python ./part1.2.py -f $f1 -l coxCrh_comrhy61_Read1 -o coxCrh_comrhy61_Read1

conda activate qaa 

/usr/bin/time -v python ./part1.2.py -f $f2 -l CcoxCrh_comrhy61_Read2 -o coxCrh_comrhy61_Read2

# conda activate qaa 

# /usr/bin/time -v python ./part1.2.py -f $f3 -l CcoxCrh_comrhy111_Read1 -o Read1

# conda activate qaa 

# /usr/bin/time -v python ./part1.2.py -f $f4 -l CcoxCrh_comrhy111_Read2 -o Read2


