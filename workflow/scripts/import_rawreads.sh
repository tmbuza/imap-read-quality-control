#!/bin/bash

# Creating basic variables
INPUTDIR="../imap-download-sra-reads/data/reads"
OUTDIR="resources/reads"

###############################
echo PROGRESS: "Importing rawdata from imap-download-sra-reads"
###############################

mkdir -p "${OUTDIR}"

cp "${INPUTDIR}"/*.gz "${OUTDIR}"/
