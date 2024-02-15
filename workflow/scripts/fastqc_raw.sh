
#!/bin/bash

echo PROGRESS: FastQC - Getting quality scores of raw reads.

INPUTDIR="resources/reads"
FASTQC="results/qc/fastqc1"
mkdir -p "${FASTQC}"
fastqc "${INPUTDIR}"/*.fastq.gz -o "${FASTQC}"
