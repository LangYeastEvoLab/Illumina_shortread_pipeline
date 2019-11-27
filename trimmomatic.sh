#!/bin/bash


# Trimmomatic script for paired end reads - retooled for Sol on 11-27-19 by KJF
# KJF

# the module to load in the slurm submission file is trimmomatic/0.38
# adapters.fa file from bbmap package added to supply all Illumina adapter sequences 

#N5s and N7s for most recent run of KJF and RVC whi2 LOH project
for N5 in 02 03 04 05 06 07 08 17
do
        for N7 in 21 22 23 24 26 27 
        do

gunzip Read_1_N5$N5\N7$N7\-read-1.fastq.gz
gunzip Read_4_N5$N5\N7$N7\-read-1.fastq.gz 
        
trimmomatic PE -phred33 Read_1_N5$N5\N7$N7\-read-1.fastq Read_4_N5$N5\N7$N7\-read-1.fastq N5$N5\N7$N7\_read1_paired_trimmed.fastq N5$N5\N7$N7\_read1_unpaired_trimmed.fastq N5$N5\N7$N7\_read4_paired_trimmed.fastq N5$N5\N7$N7\_read1_unpaired_trimmed.fastq ILLUMINACLIP:adapters.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

# this will produce 2 files for each forward and reverse reads:
#       reads in which both paired reads made it through processing (paired) 
#       and reads in which one paired read did not make it through (unpaired) 
# we're not going to use the unpaired reads, so we will remove them. 

rm *unpaired_trimmed.fastq

# now we'll rename the remaining files to make things easier
mv N5$N5\N7$N7\_read1_paired_trimmed.fastq N5$N5\N7$N7\_read1_trimmed.fastq
mv N5$N5\N7$N7\_read4_paired_trimmed.fastq N5$N5\N7$N7\_read4_trimmed.fastq

rm Read_1_N5$N5\N7$N7\-read-1.fastq
rm Read_4_N5$N5\N7$N7\-read-1.fastq

gzip N5$N5\N7$N7\_read1_trimmed.fastq
gzip N5$N5\N7$N7\_read4_trimmed.fastq   
        done    
done
