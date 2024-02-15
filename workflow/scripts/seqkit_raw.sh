#!/bin/bash

echo PROGRESS: Getting stats of the raw reads.

INPUTDIR="resources/reads"
SEQKIT="results/qc/seqkit1"

mkdir -p "${SEQKIT}"
seqkit stat "${INPUTDIR}"/*.fastq.gz >"${SEQKIT}"/seqkit_stats.txt

