rule mothur_sample_metadata:
    input:
        "resources/mothur_mapping_file.tsv",
        "resources/pe_metadata.tsv"
    output:
        "resources/mothur_sample_metadata.tsv",
    script:
        "../scripts/mothur_sample_metadata.R"
