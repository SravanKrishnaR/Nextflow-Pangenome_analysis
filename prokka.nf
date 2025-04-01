process PROKKA{
	publishDir(params.prokka_output, mode:'copy')

	input:
	tuple val(sample_id),path (genome)

	output:
	path "${sample_id}*", emit: prokka_out

	script:
	"""
        prokka --cpu ${params.cpus} \\
	       --kingdom ${params.kingdom} \\
	       --locustag ${params.locustag} \\
	       --prefix ${sample_id} \\
	       --outdir ${sample_id} \\
	       ${genome}
	"""
}
