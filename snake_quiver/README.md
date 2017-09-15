# snake_quiver

Quiver with Snakemake workflow

Run with: `runQuiverSnakes.sh` or
`snakemake -s Snakefile -p --cluster-config cluster.json --cluster "sbatch -p {cluster.partition} -n {cluster.n}  -t {cluster.time} -c {cluster.c} --mem-per-cpu {cluster.mempercpu}" -k -j 20 -w 10 --rerun-incomplete -n`

Dependencies
* snakemake
* smrtlink-release_5.0.1.9585

Notes
* Cluster config setting are written for Slurm
* PacBio subreads bam files generated with `bax2bam`

