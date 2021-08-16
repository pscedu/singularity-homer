--
-- homer 4.11.0 modulefile
--
-- "URL: https://www.psc.edu/resources/software"
-- "Category: Biological Sciences"
-- "Description: HOMER (Hypergeometric Optimization of Motif EnRichment) is a suite of tools for Motif Discovery and next-gen sequencing analysis."
-- "Keywords: singularity bioinformatics"

whatis("Name: homer")
whatis("Version: 4.11.0")
whatis("Category: Biological Sciences")
whatis("URL: https://www.psc.edu/resources/software")
whatis("Description: HOMER (Hypergeometric Optimization of Motif EnRichment) is a suite of tools for Motif Discovery and next-gen sequencing analysis.")

help([[
HOMER (Hypergeometric Optimization of Motif EnRichment) is a suite of tools for Motif Discovery and next-gen sequencing analysis.

To load the module, type

> module load homer/4.11.0

To unload the module, type

> module unload homer/4.11.0

Documentation
-------------
http://homer.ucsd.edu/homer/

For help, type

> homer

Repository
----------
http://homer.ucsd.edu/homer/

Tools included in this module are

* homer
* homer2
* findMotifs.pl
* findGO.pl
* loadPromoters.pl
* findMotifsGenome.pl
* makeTagDirectory
* makeUCSCfile
* makeBigWig.pl
* findPeaks
* analyzeChIP-Seq.pl
* annotatePeaks.pl
* analyzeRNA.pl
* analyzeRepeats.pl
* getDiffExpression.pl
* getDifferentialPeaks
* getDifferentialPeaksReplicates.pl
* mergePeaks
* homerTools
* tagDir2bed.pl
* bed2pos.pl
* pos2bed.pl
* checkPeakFile.pl
* removeOutOfBoundsReads.pl
* annotateTranscripts.pl
* compareMotifs.pl
* motif2Logo.pl
* revoppMotif.pl
* seq2profile.pl
* analyzeHiC
* runHiCpca.pl
* getHiCcorrDiff.pl
* findHiCCompartments.pl
* findHiCInteractionsByChr.pl
* annotateInteractions.pl
* SIMA.pl
* addData.pl
* addDataHeader.pl
* mergeData.pl
* getPeakTags
* scanMotifGenomeWide.pl
* tagDir2bed.pl
* getTopPeaks.pl
* getFocalPeaks.pl
* assignGenomeAnnotation
* fasta2tab.pl
* tab2fasta.pl
* changeNewLine.pl
]])

local package = "homer"
local version = "4.11.0"
local base    = pathJoin("/opt/packages",package,version)
prepend_path("PATH", base)
