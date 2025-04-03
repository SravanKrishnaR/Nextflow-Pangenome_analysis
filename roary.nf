process ROARY {
    publishDir "roary_results", mode: 'copy' // Stores the outputs in "roary_results"

    input:
    path gff_ch  // Receives all gff files at once

    output:
    path "*" // Receives all the output

    script:
    """
    roary -p ${params.cpus} -e -n -v --mafft ${gff_ch.join(' ')}
    """
}
