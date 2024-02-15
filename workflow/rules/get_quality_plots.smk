rule get_quality_plots:
    output:
        "results/qc/base_quality_raw.svg",
        # "results/qc/base_quality_score2.svg",
        # "results/qc/base_quality_score3.svg",
    shell:
        "bash workflow/scripts/get_quality_plots.sh"