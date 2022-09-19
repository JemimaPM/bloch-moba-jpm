#!/bin/bash

GA=7
AV_COILS=3
AV=10

# Optimization Parameter
OS=1
REDU_FAC=3
INNER_ITER=250
STEP_SIZE=0.95
MIN_R1=0.001

ITER=12
LAMBDA=0.0005


# Model specifics
BWTP=4
TR=0.00488
TE=0.00244
FA=45
PREP_LEN=${TE}
RF_DUR=0.001
INV_LEN=0.01
INV_SPOILER=0.005
SLICE_PROFILE_SPINS=1
SS_GRAD_STRENGTH=0

SLICEPROFILE=0
PERFECT_INVERSION=0