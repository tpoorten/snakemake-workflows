# snake_quiver

Quiver (or Arrow) with Snakemake workflow

Run with: `runQuiverSnakes.sh` or

```
snakemake -s Snakefile -p --cluster-config cluster.json \
--cluster "sbatch -p {cluster.partition} -n {cluster.n} \
-t {cluster.time} -c {cluster.c} --mem-per-cpu {cluster.mempercpu}" \
-k -j 20 -w 10 --rerun-incomplete -n
```

[Workflow](https://github.com/tpoorten/snakemake-workflows/blob/master/snake_quiver/workflowGraph.svg) - Based on [smrtlink manual, page 22](http://www.pacb.com/wp-content/uploads/SMRT-Tools-Reference-Guide-v4.0.0.pdf)
* Align each batch (smrtcell) of subreads
* Sort, index each alignment bam
* Make and merge alignment xmls
* Split xml alignment dataset into chunks, by contigs
* Run Quiver/Arrow on each chunk, merge output fastas

Dependencies
* snakemake
* smrtlink-release_5.0.1.9585

Notes
* Cluster config setting are written for Slurm
* PacBio subreads bam files generated with `bax2bam`
* Set config params in config.json, cluster.json
