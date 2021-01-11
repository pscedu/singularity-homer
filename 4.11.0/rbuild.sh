#!/bin/bash

IMAGE=singularity-homer-4.11.0.sif
DEFINITION=Singularity

singularity build --remote $IMAGE $DEFINITION
