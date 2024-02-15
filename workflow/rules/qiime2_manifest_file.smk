rule qiime2_manifest_file:
    input:
        "results/qc/seqkit1/seqkit_stats.txt",
    output:
        "resources/metadata/qiime2_manifest_file.tsv",
    script:
        "../scripts/qiime2_manifest_file.R"

        