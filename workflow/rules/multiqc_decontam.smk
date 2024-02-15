rule multiqc_decontam:
    input:
        zip=rules.fastqc_decontam.output.zip,
    output:
        html="results/qc/multiqc3/multiqc_report.html",
        svg=report("results/qc/multiqc3/multiqc_plots/svg/mqc_fastqc_per_base_sequence_quality_plot_1.svg", caption="../report/multiqc3.rst", category="MultiQC 3"),
    threads: 1
    shell:
        "bash workflow/scripts/multiqc_decontam.sh"