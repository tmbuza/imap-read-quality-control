# Decontaminate trimmed reads

rule bbduk_decontam:
    input:
        trimmed=expand("{outdir}/trimmed/{sample}_{sraNum}.fastq.gz", outdir=OUTDIR, sample=SAMPLES, sraNum=config["sraNum"]),
    output:
        expand("{outdir}/trimmed/decontam/{sample}_{sraNum}.fastq.gz", outdir=OUTDIR, sample=SAMPLES, sraNum=config["sraNum"]),
    shell:
        "bash workflow/scripts/bbduk_decontam.sh"



