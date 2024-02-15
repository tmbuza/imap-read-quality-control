rule plot_read_hist:
    input:
        "results/qc/seqkit1/seqkit_stats.txt",
        "results/qc/seqkit2/seqkit_stats.txt",
        "results/qc/seqkit3/seqkit_stats.txt",
    output:
        report("images/samples_hist.svg", caption ="../report/samplehist.rst", category="Sample Histogram"),
        report("images/qc_hist.svg", caption ="../report/qchist.rst", category="Read Histogram"),
    script:
        "../scripts/plot_qc_hist.R"