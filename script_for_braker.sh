#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -J annotation_durian_braker
#SBATCH -t 1:30:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user andreas.elenborg.7142@student.uu.se
#SBATCH -o outputThingBraker.tea
#SBATCH -e errorThingBraker.tea

# Load modules
module load bioinfo-tools

