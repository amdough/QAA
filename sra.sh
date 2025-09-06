#!/bin/bash

#SBATCH --account=bgmp                          #REQUIRED: which account to use
#SBATCH --partition=bgmp                        #REQUIRED: which partition to use
#SBATCH --cpus-per-task=4                #optional: number of cpus, default is 1
#SBATCH --job-name=PS2_QAA                       #optional: job name, default is the user name

#SBATCH --output=PS2_QAA_%j.out               #optional: output file name, default is slurm-<jobid>.out
#SBATCH --error=PS2_QAA_%j.err                #optional: error file name,


#SBATCH --mail-type=END,FAIL  
#SBATCH --mail-user=amdo@uoregon.edu  

#SBATCH --time=1:00:00                           

# conda activate sra_bgmp 

# Downloading and converting SRA files to FASTQ format
# Using /usr/bin/time to measure resource usage
/usr/bin/time prefetch SRR25630296
/usr/bin/time fasterq-dump --split-files --threads 8 SRR25630296/SRR25630296.sra

# Downloading and converting SRA files to FASTQ format
# Using /usr/bin/time to measure resource usage
/usr/bin/time prefetch SRR25630382 
/usr/bin/time fasterq-dump --split-files --threads 8 SRR25630382/SRR25630382.sra




