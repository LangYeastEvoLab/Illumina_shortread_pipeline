#!/bin/bash

# Script to align single end demultiplexed clipped fastq files to W303 genome via BWA 
# Script assumes reference files are kept in a directory called reference_files - update paths if this is not the case. 
# Script assumes diploid clone genome data. If using population data, change --pooled-discrete to --pooled continuous and -p 2 to -p 1


for N5 in 02 03 04 05 06 07 08 17
do
	for N7 in 01 02 03 04 05 06 07 08 09 10 11 12
	do	

	freebayes -f PATH/TO/reference_genome/W303_ann_swb_11-29-17.fasta -p 2 --pooled-discrete PATH/TO/N5$N5\N7$N7\-sorted.bam > PATH/TO/ N5$N5\N7$N7\.vcf

	end 
end 
