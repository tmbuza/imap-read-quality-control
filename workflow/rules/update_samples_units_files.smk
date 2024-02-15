rule update_samples_units_files:
    input:
        "resources/metadata/mothur_mapping_file.tsv",
        "resources/metadata/pe_metadata.tsv",
    output:
        "config/mothur/samples.tsv",
        "config/mothur/units.tsv",
        "config/qiime2/samples.tsv",
        "config/qiime2/units.tsv",
    script:
        "../scripts/update_samples_units_files.R"
