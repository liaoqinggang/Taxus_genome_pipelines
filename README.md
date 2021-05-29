# Taxus_genome_pipelines

Taxus_genome_analysis.R is an R script, to generate the plot used in the Figures. The data used in the script were uploaded to the date directory.



Work_p450.sh is a shell script, to identify and count the P450 genes in the genomes. The P450 genes were identified using hmmsearch with the Pfam database, PF00067.txt (it could be found used "PF00067" as key word in Pfam). Then, the P450 family, which the gene belongs, was found used a database that combine the P450 gene information form the NCBI, SWISS-PORT, and Cytochrome P450 homepage.
