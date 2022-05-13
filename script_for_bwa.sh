#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -J align_durian_bwa
#SBATCH -t 1:30:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user andreas.elenborg.7142@student.uu.se
#SBATCH -o outputThingBWA.tea
#SBATCH -e errorThingBWA.tea

# Load modules
module load bioinfo-tools
module load bwa/0.7.17
module load samtools/1.14

bwa samse canu_assembly/assembly_output.outfile.contigs.fasta /$USER/genome_analysis/link_to_paper4_data/illumina_data/SRR6058604_scaffold_06.1U.fastq.gz > bwa_out.sam
