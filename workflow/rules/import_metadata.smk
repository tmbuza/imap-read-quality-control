# Import metadata

rule import_metadata:
    output:
        "config/pe_samples.tsv",
        "config/pe_units.tsv",
        "resources/metadata/pe_metadata.tsv",
        "config/se_samples.tsv",
        "config/se_units.tsv",
        "resources/metadata/se_metadata.tsv",
    shell:
        "bash workflow/scripts/import_metadata.sh"
        