#!/bin/bash

# Modify for each use 
     # --mail-user = 
     # Export path to directory containing splitter script

#SBATCH --partition=all-cpu
#SBATCH --qos=nogpu
#SBATCH --time=24:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --job-name=aligner.sh
#SBATCH --mail-type=ALL
#SBATCH --mail-user=YOU@LEHIGH.EDU

module load bwa/0.7.15 samtools/1.4 bamtools/2.4.1 freebayes/1.1.0
export PATH=$PATH:/PATH/TO/DIRECTORY CONTAINING ALIGNER SCRIPT
aligner.sh
exit
