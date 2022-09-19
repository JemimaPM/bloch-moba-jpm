#!/bin/bash

set -e

# Run reconstructions

./run_reco.sh LL
./run_reco.sh M0A
./run_reco.sh Bloch

./run_reco.sh Bloch_SP


# Improve testing

# Join ROIs
bart join 6 $(ls vertices/*.cfl | sed -e 's/\.cfl//') results/rois

# Extract ROIs
bart fmac results/LL/t1map results/rois results/LL/t1test

bart fmac results/M0A/t1map results/rois results/M0A/t1test

bart fmac results/Bloch/t1map results/rois results/Bloch/t1test
bart fmac results/Bloch/m0map results/rois results/Bloch/m0test
bart fmac results/Bloch/b1map results/rois results/Bloch/b1test

bart fmac results/Bloch_SP/t1map results/rois results/Bloch_SP/t1test
bart fmac results/Bloch_SP/m0map results/rois results/Bloch_SP/m0test
bart fmac results/Bloch_SP/b1map results/rois results/Bloch_SP/b1test