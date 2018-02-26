#!/bin/sh
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --time=48:00:00
#SBATCH --mem=64gb
#SBATCH --job-name=Fastqc
#SBATCH --mail-user=edward.hillman3@gmail.com
#SBATCH --mail-type=ALL
#SBATCH --error=./fastqc%J.err
#SBATCH --output=./fastqc%J.out

cd /work/herrlab/eahillman/NCBI/public/sra

module load fastqc

fastqc *.fastq
