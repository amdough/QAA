#!/bin/bash

#SBATCH --account=bgmp                          #REQUIRED: which account to use
#SBATCH --partition=bgmp                        #REQUIRED: which partition to use
#SBATCH --cpus-per-task=8   
#SBATCH --mem=32G              #optional: number of cpus, default is 1
#SBATCH --mail-user=amdo@uoregon.edu     #optional: if you'd like email
#SBATCH --mail-type=END,FAIL                   #optional: must set email first, what type of email you want
#SBATCH --job-name=htseq            #optional: job name
#SBATCH --output=htseq%j.out       #optional: file to store stdout from job, %j adds the assigned jobID
#SBATCH --error=htseq%j.err        #optional: file to store stderr from job, %j adds the assigned jobID
#SBATCH --time=2:00:00 


 
conda activate qaa 

# Run with stranded = yes --> Ccom61 R1
/usr/bin/time htseq-count -s yes -t exon -i Parent -m union /projects/bgmp/amdo/bioinfo/Bi623/PS2/QAA/part3/Ccom61_nodupe.sam /projects/bgmp/amdo/bioinfo/Bi623/PS2/QAA/part3/campylomormyrus.gff > CCom61_counts_stranded_yes.txt

# Run with stranded = reverse --> Ccom61 R2
/usr/bin/time htseq-count -s reverse -t exon -i Parent -m union /projects/bgmp/amdo/bioinfo/Bi623/PS2/QAA/part3/Ccom61_nodupe.sam /projects/bgmp/amdo/bioinfo/Bi623/PS2/QAA/part3/campylomormyrus.gff > Ccom61_counts_stranded_reverse.txt

# Run with stranded = yes --> Ccom111 R1
/usr/bin/time htseq-count -s yes -t exon -i Parent -m union /projects/bgmp/amdo/bioinfo/Bi623/PS2/QAA/part3/Ccom111_nodupe.sam /projects/bgmp/amdo/bioinfo/Bi623/PS2/QAA/part3/campylomormyrus.gff > Ccom111_counts_stranded_yes.txt

# Run with stranded = reverse --> Ccom111 R2
/usr/bin/time htseq-count -s reverse -t exon -i Parent -m union /projects/bgmp/amdo/bioinfo/Bi623/PS2/QAA/part3/Ccom111_nodupe.sam /projects/bgmp/amdo/bioinfo/Bi623/PS2/QAA/part3/campylomormyrus.gff > Ccom111_counts_stranded_reverse.txt   