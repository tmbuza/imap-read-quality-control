#!/bin/bash

echo PROGRESS: MultiQC - Getting summary of decontaminated read quality scores.

FASTQC="results/qc/fastqc3"
MULTIQC="results/qc/multiqc3"

mkdir -p "${MULTIQC}"
multiqc --force --data-dir "${FASTQC}" -o "${MULTIQC}" --export