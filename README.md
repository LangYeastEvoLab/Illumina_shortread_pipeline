# Illumina_shortread_pipeline

Workflow: 

## Barcode splitter 
*demultiplexes by N5 and N7 Nextera indices* 
- Input: Illumina generated fastq files 
- Output: Demultiplexed fastq files 
---
## fastx toolkit clipper 
*trims adapter sequences from raw reads* 
- Input: demultiplexed fastq files
- Output: clipped fastq files  
---
## bwa aligner 
*aligns reads to reference genome* 
- Input: clipped fastq files
- Output: aligned sam files 
---
## samtools 
*converts sam files to bam files* 
- Input: sam files
- Output: sorted indexed bam files   
---
## FreeBayes 
*calls variants using reference file* 
- Input: sorted bam files
- Output: VCF files  

# To use pipeline on Lehigh's Sol HPC

Work either in your scratch space () 
or our group's shared space ()

