#!/bin/bash

#SBATCH --account=bgmp                          #REQUIRED: which account to use
#SBATCH --partition=bgmp                        #REQUIRED: which partition to use
#SBATCH --cpus-per-task=8   
#SBATCH --mem=32G              #optional: number of cpus, default is 1
#SBATCH --mail-user=amdo@uoregon.edu     #optional: if you'd like email
#SBATCH --mail-type=END,FAIL                   #optional: must set email first, what type of email you want
#SBATCH --job-name=ps2_parseSAM            #optional: job name
#SBATCH --output=parseSAM%j.out       #optional: file to store stdout from job, %j adds the assigned jobID
#SBATCH --error=parseSAM%j.err        #optional: file to store stderr from job, %j adds the assigned jobID
#SBATCH --time=12:00:00 

#Ccom61

/usr/bin/time python parseSAM.py

#Ccom111 --> repeated with different input file (in .py script)