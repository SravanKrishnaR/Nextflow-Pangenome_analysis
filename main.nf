nextflow.enable.dsl=2

include { PROKKA } from './prokka.nf'
include { ROARY }  from './roary.nf'

workflow {
    genome_ch = Channel.fromPath(params.genome).map { genome -> tuple(genome.baseName, genome) } // create "genome_ch" to store genome data

    annotations_ch = PROKKA(genome_ch) // "annotations_ch" stores the output of the PROKKA process

    gff_ch = annotations_ch.gff_output.collect() // "gff_ch" collects all gff files before passing to Roary

    ROARY(gff_ch)  // ROARY process receives all GFF files at once
}
