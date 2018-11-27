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

Work either in your scratch space  

`cd /home/username/scratch`

or our group's shared space

`cd /share/ceph/gil213group/shared/`

clone the pipeline 

`git clone pipeline repo url`

`cd Illumina_shortread_pipeline`


Import reads from princeton iLab 

` wget link_to_Read_1_passed_filter.fastq.gz`

` wget link_to_ ...`

 Delete files that failed QC filter
 
 Rename the files to names specified by the barocode splitter script 
 
 `mv ...Read_1_passed_filter.fastq.gz read1.fastq.gz`
 
 `mv ...Read_2_... read2_N7index.fastq.gz`
 
 `mv ..Read_3_... read3_N5index.fastq.gz`
 
Use `nano` to modify all .sh and .slurm.sh files to reflect the correct paths. If you are in your home directory's scratch folder, replace `PATH/TO/` in all scripts with `/home/username/scratch/Illumina_shortread_pipeline/` . If you are in the lab's shared folder, replace `PATH/TO/` in all scripts with `/share/ceph/gil213group/shared/Illumina_shortread_pipeline`.

Run the barcode splitter slurm file

`sbatch splitter/barcodesplitter.slurm.sh`

barcodesplitter may take between 12-24 hours depending on the size of the files

Verify job completion by checking that each index pair is represented with a fastq file. Delete any empty fastqs of unused index pairs. 

Run the fastx clipper slurm file

`sbatch clipper/clipper.slurm.sh` 

Verify job completion by checking that clipped fastqs are smaller in size than raw fastqs. 

Run the bwa aligner 

`sbatch aligner/aligner.slurm.sh` 

Verify job completion by checking that .bam, and .bai files were generated for all fastqs. 

Run the freebayes variant caller 

`sbatch variant_caller/variant_caller.slurm.sh` 

Verify job completion by checking for a .vcf for each index pair

At this point raw fastqs can be discarded to save space 

# Optional analyses


