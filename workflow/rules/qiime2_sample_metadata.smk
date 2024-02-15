rule qiime2_sample_metadata:
    input:
        "resources/metadata/qiime2_manifest_file.tsv",
        "resources/metadata/pe_metadata.tsv"
    output:
        "resources/metadata/qiime2_sample_metadata.tsv",
    script:
        "../scripts/qiime2_sample_metadata.R"
