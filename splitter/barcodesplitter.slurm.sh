#!/bin/bash

# Modify for each use 
     # --mail-user = 
     # Export path to directory containing splitter script

#SBATCH --partition=all-cpu
#SBATCH --qos=nogpu
#SBATCH --time=24:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=3
#SBATCH --job-name=barcodesplitter.sh
#SBATCH --mail-type=ALL
#SBATCH --mail-user=YOU@LEHIGH.EDU

module load anaconda/bioinformatics
export PATH=$PATH:/PATH/TO/DIRECTORY CONTAINING SPLITTER SCRIPT
barcodesplitter.sh
exit
