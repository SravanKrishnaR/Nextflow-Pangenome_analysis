process PROKKA {
    publishDir "prokka_results", mode: 'copy'  // Stores the outputs in "prokka_results"

    input:
    tuple val(sample_id), path(genome) //Receives the genome, file name

    output:
    path "${sample_id}/${sample_id}.gff", emit: gff_output  // Receives and stores only the gff files in their respective folders

    script:
    """
    prokka --cpu ${params.cpus} \\
           --kingdom ${params.kingdom} \\
           --prefix ${sample_id} \\
           --outdir ${sample_id} \\
           ${genome}
    """
}
