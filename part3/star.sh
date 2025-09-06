#!/bin/bash

#SBATCH --account=bgmp                          #REQUIRED: which account to use
#SBATCH --partition=bgmp                        #REQUIRED: which partition to use
#SBATCH --cpus-per-task=8                 #optional: number of cpus, default is 1
#SBATCH --mail-user=amdo@uoregon.edu     #optional: if you'd like email
#SBATCH --mail-type=END,FAIL                   #optional: must set email first, what type of email you want
#SBATCH --job-name=ps2_stardb               #optional: job name
#SBATCH --output=PS2_stardb_%j.out       #optional: file to store stdout from job, %j adds the assigned jobID
#SBATCH --error=PS2_stardb_%j.err        #optional: file to store stderr from job, %j adds the assigned jobID
#SBATCH --time=12:00:00 


mamba activate qaa

/usr/bin/time -v STAR \
    --runThreadN 8 \
    --runMode genomeGenerate \
    --genomeDir /projects/bgmp/amdo/bioinfo/Bi623/PS2/QAA/part3/campylomormyrus_STAR_2.7.11b \
    --genomeFastaFiles /projects/bgmp/amdo/bioinfo/Bi623/PS2/QAA/part3/campylomormyrus.fasta \
    --sjdbGTFfile /projects/bgmp/amdo/bioinfo/Bi623/PS2/QAA/part3/campylomormyrus.gtf \