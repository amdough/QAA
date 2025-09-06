#!/bin/bash

#SBATCH --account=bgmp                          #REQUIRED: which account to use
#SBATCH --partition=bgmp                        #REQUIRED: which partition to use
#SBATCH --cpus-per-task=8   
#SBATCH --mem=32G              #optional: number of cpus, default is 1
#SBATCH --mail-user=amdo@uoregon.edu     #optional: if you'd like email
#SBATCH --mail-type=END,FAIL                   #optional: must set email first, what type of email you want
#SBATCH --job-name=ps2_pic             #optional: job name
#SBATCH --output=PS2_pic_%j.out       #optional: file to store stdout from job, %j adds the assigned jobID
#SBATCH --error=PS2_pic_%j.err        #optional: file to store stderr from job, %j adds the assigned jobID
#SBATCH --time=12:00:00 

#Ccom61

# conda activate qaa

# /usr/bin/time picard MarkDuplicates \
#     -INPUT /projects/bgmp/amdo/bioinfo/Bi623/PS2/QAA/part3/Ccom61_run1/campySTARalign_Ccom61_Aligned.sortedByCoord.out.bam \
#     -OUTPUT Ccom61_nodupe.bam \
#     -METRICS_FILE Ccom61_nodupe.metrics \
#     -REMOVE_DUPLICATES TRUE \
#     -VALIDATION_STRINGENCY LENIENT



#Ccom111

conda activate qaa

/usr/bin/time picard MarkDuplicates \
  INPUT=/projects/bgmp/amdo/bioinfo/Bi623/PS2/QAA/part3/Ccom111_run1/campySTARalign_Ccom111_Aligned.sortedByCoord.out.bam \
  OUTPUT=Ccom111_nodupe.bam \
  METRICS_FILE=Ccom111_nodupe.metrics \
  REMOVE_DUPLICATES=TRUE \
  VALIDATION_STRINGENCY=LENIENT 