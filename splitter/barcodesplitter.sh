#!/bin/bash

# General splitter script template for demultiplexing of Nextera barcoded single end short read sequences 
# Script assumes N5barcodes.txt and N7barcodes.txt remain in the splitter directory and paths needed to be adjusted if they are not

# Modify upon use with specific files names and locations 
# UPPERCASE lines indicate code that needs to be specified for each use 
# all paths should be absolute paths 
 

# --FIRST ROUND OF SPLITTING--

# Split read1 by N5

barcode_splitter --bcfile PATH/TO/splitter/N5barcodes.txt PATH/TO/read1.fastq.gz PATH/TO/read3_N5index.fastq.gz --idxread 2 --prefix PATH/TO/read1_ --suffix .fastq --mismatches 1
gzip read1_*.fastq


# Split read2_N7index by N5

barcode_splitter --bcfile PATH/TO/splitter/N5barcodes.txt PATH/TO/read2_N7index.fastq.gz PATH/TO/read3_N5index.fastq.gz --idxread 2 --prefix PATH/TO/read2_N7index_ --suffix .fastq --mismatches 1
gzip read2_*.fastq


# --SECOND ROUND OF SPLITTING--

# Split N517 by N7

barcode_splitter --bcfile PATH/TO/splitter/N7barcodes.txt PATH/TO/read1_N517splitreads-read-1.fastq.gz PATH/TO/read2_N7index_N517splitreads-read-1.fastq.gz --idxread 2 --prefix PATH/TO/N517 --suffix .fastq --mismatches 1


# Split N502 by N7

barcode_splitter --bcfile PATH/TO/splitter/N7barcodes.txt PATH/TO/read1_N502splitreads-read-1.fastq.gz PATH/TO/read2_N7index_N502splitreads-read-1.fastq.gz --idxread 2 --prefix PATH/TO/N502 --suffix .fastq --mismatches 1


# Split N503 by N7

barcode_splitter --bcfile PATH/TO/splitter/N7barcodes.txt PATH/TO/read1_N503splitreads-read-1.fastq.gz PATH/TO/read2_N7index_N503splitreads-read-1.fastq.gz --idxread 2 --prefix PATH/TO/N503 --suffix .fastq --mismatches 1


# Split N504 by N7

barcode_splitter --bcfile PATH/TO/splitter/N7barcodes.txt PATH/TO/read1_N504splitreads-read-1.fastq.gz PATH/TO/read2_N7index_N504splitreads-read-1.fastq.gz --idxread 2 --prefix PATH/TO/N504 --suffix .fastq --mismatches 1


# Split N505 by N7

barcode_splitter --bcfile PATH/TO/splitter/N7barcodes.txt PATH/TO/read1_N505splitreads-read-1.fastq.gz PATH/TO/read2_N7index_N505splitreads-read-1.fastq.gz --idxread 2 --prefix PATH/TO/N505 --suffix .fastq --mismatches 1

# Split N506 by N7

barcode_splitter --bcfile PATH/TO/splitter/N7barcodes.txt PATH/TO/read1_N506splitreads-read-1.fastq.gz PATH/TO/read2_N7index_N506splitreads-read-1.fastq.gz --idxread 2 --prefix PATH/TO/N506 --suffix .fastq --mismatches 1


# Split N507 by N7

barcode_splitter --bcfile PATH/TO/splitter/N7barcodes.txt PATH/TO/read1_N507splitreads-read-1.fastq.gz PATH/TO/read2_N7index_N507splitreads-read-1.fastq.gz --idxread 2 --prefix PATH/TO/N507 --suffix .fastq --mismatches 1


# Split N508 by N7

barcode_splitter --bcfile PATH/TO/splitter/N7barcodes.txt PATH/TO/read1_N508splitreads-read-1.fastq.gz PATH/TO/read2_N7index_N508splitreads-read-1.fastq.gz --idxread 2 --prefix PATH/TO/N508 --suffix .fastq --mismatches 1



