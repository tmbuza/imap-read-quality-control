# Read simple statistics

Assuming that the `seqkit` installation was successful, we can use it to get the simple statistics of the reads. Later we will use the `seqkit` output to prepare sample mapping files automatically.

- If the files are uncompressed, we can save space by compressing them.
- Let's navigate to the folder containing the fastq files and compress them using `gzip` function.

```bash
gzip *.fastq
```

> From this point forward, we will assume that all the fastq files are in fastq.gz format. 

```bash
#!/bin/bash

echo PROGRESS: Getting stats of the raw reads.

INPUTDIR="resources/reads"
SEQKIT="results/qc/seqkit1"
mkdir -p "${SEQKIT}"
seqkit stat "${INPUTDIR}"/*.fastq.gz >"${SEQKIT}"/seqkit_stats.txt
```
