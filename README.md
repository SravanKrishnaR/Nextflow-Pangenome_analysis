This is a Nextflow based workflow for Pangenome analysis
This workflow utilizes modules for easy customisation for addition of any other tools to this workflow
The tools used in this workflow are: Prokka for converting the genome to a gff format, Roary for the actual pangenome analysis

The code can be run like this:
 nextflow run main.nf --genome "DATA/*.fna" --cpus 4 --kingdom "Bacteria"
