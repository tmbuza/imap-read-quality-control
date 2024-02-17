rule qiime2_sample_metadata:
    input:
        "resources/qiime2_manifest_file.tsv",
        "resources/pe_metadata.tsv"
    output:
        "resources/qiime2_sample_metadata.tsv",
    script:
        "../scripts/qiime2_sample_metadata.R"
