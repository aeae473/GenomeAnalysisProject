#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 8
#SBATCH -J align_durian_star
#SBATCH -t 30:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user andreas.elenborg.7142@student.uu.se
#SBATCH -o outputThingSTAR.tea
#SBATCH -e errorThingSTAR.tea

# Load modules
module load bioinfo-tools

