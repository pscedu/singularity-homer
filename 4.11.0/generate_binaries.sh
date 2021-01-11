#!/bin/bash

TOOLS=(homer
homer2
findMotifs.pl
findGO.pl
loadPromoters.pl
findMotifsGenome.pl
makeTagDirectory
makeUCSCfile
makeBigWig.pl
findPeaks
analyzeChIP-Seq.pl
annotatePeaks.pl
analyzeRNA.pl
analyzeRepeats.pl
getDiffExpression.pl
getDifferentialPeaks
getDifferentialPeaksReplicates.pl
mergePeaks
homerTools
tagDir2bed.pl
bed2pos.pl
pos2bed.pl
checkPeakFile.pl
removeOutOfBoundsReads.pl
annotateTranscripts.pl
compareMotifs.pl
motif2Logo.pl
revoppMotif.pl
seq2profile.pl
analyzeHiC
runHiCpca.pl
getHiCcorrDiff.pl
findHiCCompartments.pl
findHiCInteractionsByChr.pl
annotateInteractions.pl
SIMA.pl
addData.pl
addDataHeader.pl
mergeData.pl
getPeakTags
scanMotifGenomeWide.pl
tagDir2bed.pl
getTopPeaks.pl
getFocalPeaks.pl
assignGenomeAnnotation
fasta2tab.pl
tab2fasta.pl
changeNewLine.pl
)

cat << EOF > template
#!/bin/bash

if [ ! \$(command -v singularity) ]; then
	module load singularity
fi

VERSION=4.11.0
PACKAGE=homer
TOOL=TOOL_NAME
DIRECTORY=/opt/packages/\$PACKAGE/\$VERSION

PERSISTENT_FILE_STORAGE=/ocean
if [ -d \$PERSISTENT_FILE_STORAGE ]; then
	OPTIONS="-B \$PERSISTENT_FILE_STORAGE"
fi

if [ -d /local ]; then
	OPTIONS=\$OPTIONS" -B /local"
fi

singularity exec \$OPTIONS \$DIRECTORY/singularity-\$PACKAGE-\$VERSION.sif \$TOOL "\$@"
EOF

for TOOL in "${TOOLS[@]}"
do
	echo "* "$TOOL
        cp template $TOOL
	sed -i "s/TOOL_NAME/$TOOL/g" $TOOL
	chmod +x $TOOL
done

rm -f template
