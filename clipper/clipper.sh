#!/bin/bash


# Script to clip/trim Illumina adapter sequences from demultiplexed fastq files
# Script written for all 96 barcodes - may need to be modified based on barcode usage 

# Modify upon use with specific files names and locations 
# UPPERCASE lines indicate code that needs to be specified for each use 
# all paths should be absolute paths 

for N5 in 02 03 04 05 06 07 08 17
do
	for N7 in 01 02 03 04 05 06 07 08 09 10 11 12
	do
		# gunzip PATH/TO/N5$N5\N7$N7\splitreads-read-1.fastq.gz
		fastx_clipper -a CTGTCTCTTATACACATCT -i PATH/TO/N5$N5\N7$N7\splitreads-read-1.fastq -o PATH/TO/N5$N5\N7$N7\splitreads-read-1-clipped.fastq -Q33 -n 18
		date
	done	
done
