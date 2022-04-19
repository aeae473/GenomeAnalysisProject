#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -J RNA_assembly_durian_trinity
#SBATCH -t 7:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user andreas.elenborg.7142@student.uu.se
#SBATCH -o outputThingTrinity.tea
#SBATCH -e errorThingTrinity.tea

# Load modules 
module load bioinfo-tools
module load trinity/2.13.2

# Run trinity
$TRINITY_HOME/Trinity --seqType fq \
--single /home/zoyabean/genome_analysis/link_to_paper4_data/pacbio_data/SRR6037732_scaffold_06.fq.gz \
--max_memory 7G \ 
--CPU 4 \
--output /home/zoyabean/genome_analysis/GenomeAnalysisProject/trinity_assembly
