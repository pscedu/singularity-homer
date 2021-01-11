#!/bin/bash

if [ ! $(command -v singularity) ]; then
	module load singularity
fi

VERSION=4.11.0
PACKAGE=homer
TOOL=findGO.pl
DIRECTORY=/opt/packages/$PACKAGE/$VERSION

PERSISTENT_FILE_STORAGE=/ocean
if [ -d $PERSISTENT_FILE_STORAGE ]; then
	OPTIONS="-B $PERSISTENT_FILE_STORAGE"
fi

if [ -d /local ]; then
	OPTIONS=$OPTIONS" -B /local"
fi

singularity exec $OPTIONS $DIRECTORY/singularity-$PACKAGE-$VERSION.sif $TOOL "$@"
