#!/bin/bash

echo PROGRESS: Getting stats of the decontaminated reads.

INPUTDIR="resources/reads/trimmed/decontam"
SEQKIT="results/qc/seqkit3"
mkdir -p "${SEQKIT}"
seqkit stat "${INPUTDIR}"/*.fastq.gz >"${SEQKIT}"/seqkit_stats.txt

