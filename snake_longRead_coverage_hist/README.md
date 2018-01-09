# Generate coverage histograms for long-read alignments to assemblies
[Workflow DAG](https://github.com/tpoorten/snakemake-workflows/blob/master/snake_longRead_coverage_hist/dag.png)

[Example plot](https://github.com/tpoorten/snakemake-workflows/blob/master/snake_longRead_coverage_hist/example_plot.pdf)

Set up:

* edit config.json
* make fofn's for data: `reads.fofn` and `assembly.fofn`

e.g. `\ls reads_dir/*fasta > reads.fofn; \ls asms/*fasta > asms.fofn`

* for now, assemblies must be in a directory called `asms` within the working directory



Run: `snakemake -s Snakemake -p -j 1 >& snakes.out`



Dependencies:

* minimap2
* samtools
* bedtools
* python modules: pandas, matplotlib, seaborn, numpy



