rule mothur_mapping_files:
    input:
        seqkit1="results/qc/seqkit1/mouse_gut_seqkit_stats.txt",
    output:
        "results/mothur_mapping_file.tsv",
        "results/mothur_metadata_file.tsv",
        "results/mothur_design_file.tsv",
    script:
        "../scripts/mothur_mapping_files.R"


rule qiime2_mapping_files:
    input:
        seqkit1="results/qc/seqkit1/mouse_gut_seqkit_stats.txt",
    output:
        "results/qiime2_manifest_file.tsv",
        "results/qiime2_metadata_file.tsv",
    script:
        "../scripts/qiime2_mapping_files.R"