# Trim raw reads
rule bbduk_trim_reads:
    input:
        rawreads=expand("{outdir}/{sample}_{sraNum}.fastq.gz", outdir=OUTDIR, sample=SAMPLES, sraNum=config["sraNum"]),
    output:
        trimmed=expand("{outdir}/trimmed/{sample}_{sraNum}.fastq.gz", outdir=OUTDIR, sample=SAMPLES, sraNum=config["sraNum"]),
    shell:
        "bash workflow/scripts/bbduk_trim.sh"
