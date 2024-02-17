METADATA="../imap-sample-metadata/resources/"
SAMPLESUNITS="../imap-sample-metadata/config"
OUTDIR="resources/"
CONFIG="config"

echo PROGRESS: Importing processed metadata

mkdir -p "${OUTDIR}" "${CONFIG}"

cp "${METADATA}"/*.tsv "${OUTDIR}"
cp "${SAMPLESUNITS}"/*.tsv "${CONFIG}"