#!/bin/bash

echo PROGRESS: MultiQC - Getting summary of raw read quality scores.

FASTQC="results/qc/fastqc1"
MULTIQC="results/qc/multiqc1"
mkdir -p "${MULTIQC}"
multiqc --force --data-dir "${FASTQC}" -o "${MULTIQC}" --export

