METADATA="../imap-sample-metadata/resources/metadata"
SAMPLESUNITS="../imap-sample-metadata/config"
OUTDIR="resources/metadata"
CONFIG="config"

echo PROGRESS: Importing processed metadata

mkdir -p "${OUTDIR}" "${CONFIG}"

cp "${METADATA}"/*.tsv "${OUTDIR}"
cp "${SAMPLESUNITS}"/*.tsv "${CONFIG}"