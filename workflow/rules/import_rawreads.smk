# Import reads

rule import_rawreads:
    output:
        gzfq=expand("{outdir}/{sample}_{sraNum}.fastq.gz", outdir=OUTDIR, sample=SAMPLES, sraNum=config["sraNum"]),
    shell:
        "bash workflow/scripts/import_rawreads.sh"