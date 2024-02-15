#!/bin/bash

echo PROGRESS: Read decontamination
cd resources/reads/trimmed

for i in `ls -1 *_1.fastq.gz | sed 's/_1.fastq.gz//'`
  do
  bbduk.sh -Xmx3g \
    in1=$i\_1.fastq.gz \
    in2=$i\_2.fastq.gz \
    out1=decontam/$i\_1.fastq.gz \
    out2=decontam/$i\_2.fastq.gz \
    outm1=decontam/matchedphix/$i\_1.fastq.gz \
    outm2=decontam/matchedphix/$i\_2.fastq.gz \
    ref=~/bbmap/resources/phix174_ill.ref.fa.gz \
    k=25 \
    hdist=1 \
    overwrite=True
  done



