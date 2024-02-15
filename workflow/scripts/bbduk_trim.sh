#!/bin/bash

echo PROGRESS: Read trimming
cd resources/reads

for i in `ls -1 *_1.fastq.gz | sed 's/_1.fastq.gz//'`
  do
  bbduk.sh -Xmx3g \
    in1=$i\_1.fastq.gz \
    in2=$i\_2.fastq.gz \
    out1=trimmed/$i\_1.fastq.gz \
    out2=trimmed/$i\_2.fastq.gz \
    qtrim=r \
    trimq=25 \
    overwrite=True
  done
