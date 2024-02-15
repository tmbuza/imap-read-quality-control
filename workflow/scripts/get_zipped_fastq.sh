#!/bin/bash

INPUTDIR="data/reads"

###############################
echo PROGRESS: "Compressing the fastq files"
###############################

gzip --force "${INPUTDIR/*.fastq


