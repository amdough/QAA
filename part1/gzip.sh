#!/bin/bash

#SBATCH --account=bgmp                          #REQUIRED: which account to use
#SBATCH --partition=bgmp                        #REQUIRED: which partition to use
#SBATCH --cpus-per-task=4                #optional: number of cpus, default is 1
#SBATCH --job-name=PS2_QAA                       #optional: job name, default is the user name

#SBATCH --output=PS2_QAA_%j.out               #optional: output file name, default is slurm-<jobid>.out
#SBATCH --error=PS2_QAA_%j.err                #optional: error file name,


#SBATCH --mail-type=END,FAIL  
#SBATCH --mail-user=amdo@uoregon.edu  

#SBATCH --time=2:00:00                           

conda activate qaa

/usr/bin/time gzip SRR25630296_1.fastq
/usr/bin/time gzip SRR25630296_2.fastq
/usr/bin/time gzip SRR25630382_1.fastq
/usr/bin/time gzip SRR25630382_2.fastq


