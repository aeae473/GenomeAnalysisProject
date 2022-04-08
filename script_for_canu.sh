#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -p core
#SBATCH -J assemble_durian_things
#SBATCH -t 20:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user andreas.elenborg.7142@student.uu.se
#SBATCH -o outputThingCANU.tea
#SBATCH -e errorThingCANU.tea

# Troubleshoot command
set -x

# Load modules
module load bioinfo-tools
module load canu/2.2

# Actually run CANU
canu 
-p assembly_output.outfile 
-d canu_assembly 
genomeSize=42.1g 
-pacbio /~/genome_analysis/link_to_paper4_data/pacbio_data/SRR6037732_scaffold_06.fq.gz

# Troubleshoot off
set +x
