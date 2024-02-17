# Import metadata

rule import_metadata:
    output:
        "config/pe_samples.tsv",
        "config/pe_units.tsv",
        "resources/pe_metadata.tsv",
        "config/se_samples.tsv",
        "config/se_units.tsv",
        "resources/se_metadata.tsv",
    shell:
        "bash workflow/scripts/import_metadata.sh"
        