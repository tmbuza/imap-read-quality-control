# QC2
rule seqkit_stats_trimmed:
    input:
        expand("{outdir}/trimmed/{sample}_{sraNum}.fastq.gz", outdir=OUTDIR, sample=SAMPLES, sraNum=config["sraNum"]),
    output:
        "results/qc/seqkit2/seqkit_stats.txt",
    threads: 1
    shell:
        "bash workflow/scripts/seqkit_trim.sh"

