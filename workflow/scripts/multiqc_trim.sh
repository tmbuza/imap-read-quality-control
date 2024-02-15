#!/bin/bash

echo PROGRESS: MultiQC - Getting summary of trimmed read quality scores.

FASTQC="results/qc/fastqc2"
MULTIQC="results/qc/multiqc2"
mkdir -p "${MULTIQC}"
multiqc --force --data-dir "${FASTQC}" -o "${MULTIQC}" --export
