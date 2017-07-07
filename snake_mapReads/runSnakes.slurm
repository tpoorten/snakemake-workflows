#!/bin/bash
#
#SBATCH --job-name=snake_mapReads
#SBATCH -c 1 # Number of cores
#SBATCH -N 1 # Ensure that all cores are on one machine
#SBATCH --mem=4G # Memory pool for all cores in MB (see also --mem-per-cpu)
#SBATCH --time 2-00:00:00
#SBATCH -p gc # Partition to submit to
#SBATCH -o snake.out # File to which STDOUT will be written
#SBATCH -e snake.err # File to which STDERR will be written
#SBATCH --mail-type=ALL # Type of email notification- BEGIN,END,FAIL,ALL
#SBATCH --mail-user=tpoorten@ucdavis.edu # Email to which notifications will be sent
date
hostname
cd /working/dir

source activate snakemake-myenv

snakemake -s Snakefile -p --cores 30 --cluster-config cluster.json --cluster "sbatch -p {cluster.partition} -n {cluster.n}  -t {cluster.time} -c {cluster.c} --mem-per-cpu {cluster.mempercpu}" -k -w 5 --use-conda

source deactivate snakemake-myenv

date

