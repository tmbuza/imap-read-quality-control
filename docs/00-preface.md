
# Tools, Resources, and Environments {#toos-resources}
## Essential Read QC tools
- Seqkit
- Fastqc
- MultiQC
- BBDuk script
- Trimmomatic
- Kneaddata

## Required QC resources
- Adapter fasta files
- PhiX fasta file

## Basic YAML file for read QC (environment.yml)

```bash
name: readqc
channels:
    - bioconda
    - biobakery
dependencies:
    - seqkit =2.3.1
    - fastqc =0.12.1
    - multiqc =1.14
    - bbmap =39.01
    - trimmomatic =0.39
    - knead-data =0.12.0
```
## Creating an environment for QC {#conda-environment}
```bash
conda activate base
mamba install -c bioconda -c biobakery -c conda-forge -n readqc -file environment.yml
```


