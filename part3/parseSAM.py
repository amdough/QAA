#!/usr/bin/env python

# setting variables for the infile and where my output is going to go, all two lines of it!
# f = "/projects/bgmp/amdo/bioinfo/Bi623/PS2/QAA/part3/Ccom61_nodupe.sam"
# o = "readsinfo.Ccom61.txt"

f = "/projects/bgmp/amdo/bioinfo/Bi623/PS2/QAA/part3/Ccom111_nodupe.sam"
o = "readsinfo.Ccom111.txt"

# initializing counts for mapped and unmapped
mappedcount = 0
unmappedcount = 0

# opening the sam file and looping through each line
with open (f, "r") as fh:
    for line in fh: 
        # leaving the header lines in our dust
        if line.startswith("@"):
            continue
        else: 
            new = line.split("\t") #splitting up the alignment section by tab separators

        head = new[0]
        flag = int(new[1]) # converting the flag at position one to an integer

        # making it so that we only add to either counts if it is a primary read 
        if(((flag & 4) != 4) and ((flag & 256) != 256)):
            mapped = True
            primary = True
            mappedcount += 1 

        elif (flag & 256) != 256:
            unmappedcount += 1
        
with open (o, "w") as fo:
    fo.write(f"there are {mappedcount} reads mapped to reference genome\n")
    fo.write(f"there are {unmappedcount} unmapped reads\n")