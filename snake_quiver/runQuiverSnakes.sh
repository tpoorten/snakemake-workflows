#!/bin/bash

# run from interactive job: 
# srun --time=4-00:00:00 --pty /bin/bash

# Smrtlink commands bin (add to PATH): `/share/pacbio/smrtlink/current/bundles/smrttools/current/smrtcmds/bin
# export PATH="/share/pacbio/smrtlink/current/bundles/smrttools/current/smrtcmds/bin:$PATH"
# version used: smrtlink-release_5.0.1.9585 on 9/10/17-9/12/17

# go to working directory
cd /path/to/dir

# set up fofn for bams
\ls bams | sed 's/.bam//g' > bams.txt

## Snakemake pipeline

# activate virtual env if necessary
#source activate snakemake-myenv

snakemake -s Snakefile -p --cluster-config cluster.json --cluster "sbatch -p {cluster.partition} -n {cluster.n}  -t {cluster.time} -c {cluster.c} --mem-per-cpu {cluster.mempercpu}" -k -j 80 -w 10 --rerun-incomplete

# clean up
mkdir SlurmOuts
mv slurm* SlurmOuts/

