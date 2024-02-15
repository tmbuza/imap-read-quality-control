
#!/bin/bash

echo PROGRESS: FastQC - Getting read quality scores of trimmed reads.

INPUTDIR="resources/reads/trimmed/"
FASTQC="results/qc/fastqc2"
mkdir -p "${FASTQC}"
fastqc "${INPUTDIR}"/*.fastq.gz -o "${FASTQC}"

