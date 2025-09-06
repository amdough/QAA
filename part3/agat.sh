#!/bin/bash

#SBATCH --account=bgmp                          #REQUIRED: which account to use
#SBATCH --partition=bgmp                        #REQUIRED: which partition to use
#SBATCH --cpus-per-task=8                 #optional: number of cpus, default is 1
#SBATCH --mail-user=amdo@uoregon.edu     #optional: if you'd like email
#SBATCH --mail-type=END,FAIL                   #optional: must set email first, what type of email you want
#SBATCH --job-name=ps2_agat              #optional: job name
#SBATCH --output=PS2_agat_%j.out       #optional: file to store stdout from job, %j adds the assigned jobID
#SBATCH --error=PS2_agat_%j.err        #optional: file to store stderr from job, %j adds the assigned jobID
#SBATCH --time=2:00:00 

mamba activate agat


/usr/bin/time agat_convert_sp_gff2gtf.pl --gff campylomormyrus.gff -o campylomormyrus.gtf