# QC3
rule seqkit_stats_decontam:
    input:
        reads=expand("{outdir}/trimmed/decontam/{sample}_{sraNum}.fastq.gz", outdir=OUTDIR, sample=SAMPLES, sraNum=config["sraNum"]),
    output:
        "results/qc/seqkit3/seqkit_stats.txt",
    threads: 1
    shell:
        "bash workflow/scripts/seqkit_decontam.sh"




