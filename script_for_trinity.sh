#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -J RNA_assembly_durian_trinity
#SBATCH -t 7:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user andreas.elenborg.7142@student.uu.se
#SBATCH -o outputThingCANU.tea
#SBATCH -e errorThingCANU.tea

# Load modules 
module load bioinfo-tools
module load trinity/2.13.2

# Run trinity

