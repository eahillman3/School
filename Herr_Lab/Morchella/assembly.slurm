#!/bin/sh
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --time=48:00:00
#SBATCH --mem=64gb
#SBATCH --job-name=septimelata_assembly
#SBATCH --mail-user=edward.hillman3@gmail.com
#SBATCH --mail-type=ALL
#SBATCH --error=./septimelata_assembly_spades_%J.err
#SBATCH --output=./septimelata_assembly_spades_%J.out

cd /work/herrlab/eahillman/NCBI/public/sra/septimelata

module load spades

spades.py -1 septimelata_forward.fastq -2 septimelata_reverse.fastq -o assembly
