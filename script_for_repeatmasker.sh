#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -J assembly_durian_repeatmasker
#SBATCH -t 1:30:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user andreas.elenborg.7142@student.uu.se
#SBATCH -o outputThingRepeatMasker.tea
#SBATCH -e errorThingRepeatMasker.tea

# Load modules
module load bioinfo-tools
