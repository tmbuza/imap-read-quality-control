
#!/bin/bash

echo PROGRESS: FastQC - Getting read quality scores of decontaminated reads.

INPUTDIR="resources/reads/trimmed/decontam"
FASTQC="results/qc/fastqc3"
mkdir -p "${FASTQC}"
fastqc "${INPUTDIR}"/*.fastq.gz -o "${FASTQC}"
