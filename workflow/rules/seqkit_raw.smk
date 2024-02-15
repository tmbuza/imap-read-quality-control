# QC1
rule seqkit_stats_raw:
    input:
        expand("{outdir}/{sample}_{sraNum}.fastq.gz", outdir=OUTDIR, sample=SAMPLES, sraNum=config["sraNum"]),
    output:
        "results/qc/seqkit1/seqkit_stats.txt",
    threads: 1
    shell:
        "bash workflow/scripts/seqkit_raw.sh"