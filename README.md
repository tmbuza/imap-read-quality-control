# IMAP: Read Quality Control

Welcome to IMAP: Read Quality Control! This repository provides essential tools and guidelines for conducting quality control (QC) on microbiome sequencing data. By employing a variety of QC tools, we ensure the reliability and accuracy of your analysis. Let's dive into the QC process:

## Seqkit

Seqkit is a versatile tool used for various tasks related to FASTA/Q files. With Seqkit Stat, you can perform basic statistics on FASTA/Q files, providing insights into sequence lengths, GC content, and other relevant metrics. This information is crucial for understanding the characteristics of sequencing data and identifying potential issues.

## FastQC

FastQC is employed to perform a comprehensive quality assessment of raw sequencing data. It provides detailed reports on sequence quality, GC content, sequence duplication levels, overrepresented sequences, and more.

## MultiQC

MultiQC aggregates results from multiple QC tools, including FastQC, into a single, easy-to-read report. It offers a concise summary of QC metrics across multiple samples, enabling quick comparison and identification of trends.

## bbmap-bbduk

bbmap and bbduk are utilized for various QC tasks, including adapter trimming, quality filtering, and removal of low-complexity sequences. These tools ensure that sequencing reads are of high quality and suitable for downstream analysis.

## KneadData

KneadData is employed for contaminant removal and quality control of metagenomic sequencing data. It performs host sequence removal, adapter trimming, and quality filtering to enhance the accuracy of downstream analysis.

## Trimmomatic

Trimmomatic is used for adapter trimming and quality filtering of sequencing reads. It employs various filtering criteria to remove low-quality bases and adapter sequences, resulting in clean and high-quality reads for subsequent analysis.

With these powerful QC tools at your disposal, IMAP: Read Quality Control ensures that your microbiome sequencing data is thoroughly assessed and prepared for downstream analysis. Let's ensure the integrity and robustness of your microbiome analysis with IMAP: Read Quality Control!


<br>

# Related Works

## IMAP GitHub Repos

| IMAP-Repo                                      | Description                                               | GH-Pages                                             |
| :---------------------------------------------- | :--------------------------------------------------------- | :-----------------------------------------------------: |
| [OVERVIEW](https://github.com/tmbuza/imap-project-overview/) | IMAP project overview                                     | [Link](https://tmbuza.github.io/imap-project-overview/) |
| [PART 01](https://github.com/tmbuza/imap-essential-software/) | Software requirement for microbiome data analysis with Snakemake workflows | [Link](https://tmbuza.github.io/imap-essential-software/) |
| [PART 02](https://github.com/tmbuza/imap-sample-metadata/) | Downloading and exploring microbiome sample metadata from SRA Database | [Link](https://tmbuza.github.io/imap-sample-metadata/) |
| [PART 03](https://github.com/tmbuza/imap-download-sra-reads/) | Downloading and filtering microbiome sequencing data from SRA database | [Link](https://tmbuza.github.io/imap-download-sra-reads/) |
| [PART 04](https://github.com/tmbuza/imap-read-quality-control/) | Quality Control of Microbiome Next Generation Sequencing Reads | [Link](https://tmbuza.github.io/imap-read-quality-control/) |
| [PART 05](https://github.com/tmbuza/imap-bioinformatics-mothur/) | Microbial profiling using MOTHUR and Snakemake workflows | [Link](https://tmbuza.github.io/imap-mothur-bioinformatics/) |
| [PART 06](https://github.com/tmbuza/imap-bioinformatics-qiime2/) | Microbial profiling using QIIME2 and Snakemake workflows | [Link](https://tmbuza.github.io/imap-qiime2-bioinformatics/) |
| [PART 07](https://github.com/tmbuza/imap-data-processing/) | Processing Output from 16S-Based microbiome bioinformatics pipelines | [Link](https://tmbuza.github.io/imap-data-preparation/) |
| [PART 08](https://github.com/tmbuza/imap-exploratory-analysis/) | Exploratory Analysis of 16S-Based Microbiome Processed Data | [Link](https://tmbuza.github.io/imap-data-exploration/) |


## Session information

For a detailed overview of the tools and versions suitable for this guide, explore the [session information](session_info.txt).

## Citation
> Please consider citing the [iMAP article](https://rdcu.be/b5iVj) if you find any part of the iMAP practical user guides helpful in your microbiome data analysis.

Buza, T. M., Tonui, T., Stomeo, F., Tiambo, C., Katani, R., Schilling, M., … Kapur, V. (2019). iMAP: An integrated bioinformatics and visualization pipeline for microbiome data analysis. BMC Bioinformatics, 20. https://doi.org/10.1186/S12859-019-2965-4

## :tada: Raise awareness
> Please help increase awareness of freely available tools for microbiome data analysis.
See [Dimensions of the iMAP article](https://badge.dimensions.ai/details/id/pub.1117740326)
