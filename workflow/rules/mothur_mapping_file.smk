rule mothur_mapping_file:
    input:
        "results/qc/seqkit1/seqkit_stats.txt",
    output:
        "resources/metadata/mothur_mapping_file.tsv",
    script:
        "../scripts/mothur_mapping_file.R"

