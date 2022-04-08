#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -J assemble_durian_things
#SBATCH -t 19:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user andreas.elenborg.7142@student.uu.se
#SBATCH -o outputThingCANU.tea
#SBATCH -e errorThingCANU.tea

# Load modules
module load bioinfo-tools
module load canu/2.2

# Actually run CANU
canu \
-p assembly_output.outfile \
-d canu_assembly \
genomeSize=24m \
useGrid=False \
-pacbio /home/zoyabean/genome_analysis/link_to_paper4_data/pacbio_data/SRR6037732_scaffold_06.fq.gz

