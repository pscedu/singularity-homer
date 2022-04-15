#!/bin/bash

VERSION=4.11.0
PACKAGE=homer
TOOL=annotateInteractions.pl
DIRECTORY=$(dirname $0)

PERSISTENT_FILE_STORAGE=/ocean
if [ -d $PERSISTENT_FILE_STORAGE ]; then
	OPTIONS="-B $PERSISTENT_FILE_STORAGE"
fi

if [ -d /local ]; then
	OPTIONS=$OPTIONS" -B /local"
fi

singularity exec $OPTIONS $DIRECTORY/singularity-$PACKAGE-$VERSION.sif $TOOL "$@"
