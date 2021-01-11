#!/bin/bash

IMAGE=singularity-homer-4.11.0.sif
DEFINITION=Singularity

sudo singularity build $IMAGE $DEFINITION
