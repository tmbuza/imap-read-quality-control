rule multiqc_raw:
    input:
        zip=rules.fastqc_raw.output.zip,
    output:
        "results/qc/multiqc1/multiqc_report.html",
        report("results/qc/multiqc1/multiqc_plots/svg/mqc_fastqc_per_base_sequence_quality_plot_1.svg", caption="../report/multiqc1.rst", category="MultiQC 1"),
    threads: 1
    shell:
        "bash workflow/scripts/multiqc_raw.sh"