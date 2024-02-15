Read Quality Control snakemake workflow::

    This workflow explores the reads by:
        - Computing simple statistics with seqkit.
        - Performing quality score inspection using fastqc. 
        - Summarizing FastQC results using multiqc.
        - Trimming poor reads.
        - Removing contaminated reads.
        - Plots the statistics and status of processed reads.
        - Finally, it deploys a user-generated report to GitHub pages. 