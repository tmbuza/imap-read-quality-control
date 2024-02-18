
rule fastqc_trimmed:
    input:
        gzfq=expand("{outdir}/trimmed/{sample}_{sraNum}.fastq.gz", outdir=OUTDIR, sample=SAMPLES, sraNum=config["sraNum"]),
    output:
        html=expand("results/qc/fastqc2/{sample}_{sraNum}_fastqc.html", sample=SAMPLES, sraNum=config["sraNum"]),
        zip=expand("results/qc/fastqc2/{sample}_{sraNum}_fastqc.zip", sample=SAMPLES, sraNum=config["sraNum"]),
    threads: 1
    shell:
        "bash workflow/scripts/fastqc_trim.sh"
