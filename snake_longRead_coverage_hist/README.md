# Generate coverage histograms for long-read alignments to assemblies

Set up:

* edit config.json
* make fofn's for data: `reads.fofn` and `assembly.fofn`

e.g. `\ls reads_dir/*fasta > reads.fofn; \ls asms | sed 's/.fasta//g' > asms.fofn`

Run: `snakemake -s Snakemake -p -j 1 >& snakes.out`


Dependencies:

* minimap2
* samtools
* bedtools
* python modules: pandas, matplotlib, seaborn, numpy



