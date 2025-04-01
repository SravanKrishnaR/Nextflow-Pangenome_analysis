This is a in progress Nextflow based workflow for Pangenome analysis
This workflow utilizes modules for easy customisation
The tools used in this workflow are: Prokka for converting the genome to a gff format, Roary for the actual pangenome analysis

The code can be run like this:
 
 nextflow run main.nf --genome "DATA/*/*.fna" --prokka_output "results/" --cpus 4 --kingdom "Bacteria" --locustag "GENOME"
