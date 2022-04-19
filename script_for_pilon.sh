#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -J DNA_assembly_durian_pilon
#SBATCH -t 45:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user andreas.elenborg.7142@student.uu.se
#SBATCH -o outputThingPilon.tea
#SBATCH -e errorThingPilon.tea

# Load modules
module load bioinfo-tools
module load Pilon/1.24

# Run Pilon
java -jar $PILON_HOME/pilon.jar \
--genome canu_assembly/assembly_output.outfile.contigs.fasta \
--outdir pilon_assembly \
--output pilon_assembly.outfile
