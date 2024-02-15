rule multiqc_trimmed:
    input:
        zip=rules.fastqc_trimmed.output.zip,
    output:
        "results/qc/multiqc2/multiqc_report.html",
        report("results/qc/multiqc2/multiqc_plots/svg/mqc_fastqc_per_base_sequence_quality_plot_1.svg", caption="../report/multiqc2.rst", category="MultiQC 2"),
    threads: 1
    shell:
        "bash workflow/scripts/multiqc_trim.sh"