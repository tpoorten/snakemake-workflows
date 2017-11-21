# snake_pbjelly

Using Snakemake to run part of the PBJelly pipeline                  

There are 6 steps in the PBJelly pipeline: setup, mapping, support, extraction, assembly, output

This workflow uses Snakemake for the `mapping` and `support` steps

Run with:

```
snakemake -s Snakefile -p --cluster-config cluster.json \
--cluster "sbatch -p {cluster.partition} -n {cluster.n} \
-t {cluster.time} -c {cluster.c} --mem-per-cpu {cluster.mempercpu}" \
-k -j 20 -w 10 --rerun-incomplete -n
```

