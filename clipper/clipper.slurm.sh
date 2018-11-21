#!/bin/bash

# Modify for each use 
     # --mail-user = 
     # Export path to directory containing splitter script

#SBATCH --partition=all-cpu
#SBATCH --qos=nogpu
#SBATCH --time=24:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --job-name=clipper.sh
#SBATCH --mail-type=ALL
#SBATCH --mail-user=YOU@LEHIGH.EDU

module load fastx-toolkit/0.0.14
export PATH=$PATH:/PATH/TO/DIRECTORY CONTAINING CLIPPER SCRIPT
clipper.sh
exit
