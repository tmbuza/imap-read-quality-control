
#!/bin/bash

echo PROGRESS: Getting stats of the trimmed reads.

INPUTDIR="resources/reads/trimmed"
SEQKIT="results/qc/seqkit2"
mkdir -p "${SEQKIT}"
seqkit stat "${INPUTDIR}"/*.fastq.gz >"${SEQKIT}"/seqkit_stats.txt
