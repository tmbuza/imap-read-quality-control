rule mothur_sample_metadata:
    input:
        "resources/metadata/mothur_mapping_file.tsv",
        "resources/metadata/pe_metadata.tsv"
    output:
        "resources/metadata/mothur_sample_metadata.tsv",
    script:
        "../scripts/mothur_sample_metadata.R"
