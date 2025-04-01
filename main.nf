nextflow.enable.dsl=2

include { PROKKA } from './prokka.nf'

workflow {
    genome_ch = Channel.fromPath(params.genome)
                  .map { genome -> tuple(genome.baseName, genome) }  // Extract sample_id

    gff = PROKKA(genome_ch)
}

