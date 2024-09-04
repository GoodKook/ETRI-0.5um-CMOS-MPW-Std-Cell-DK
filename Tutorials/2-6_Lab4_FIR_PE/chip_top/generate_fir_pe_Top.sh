#!/usr/bin/bash

~/ETRI050_DesignKit/scripts/xPad.py fir_pe
~/ETRI050_DesignKit/scripts/xPin_Route.py fir_pe
~/ETRI050_DesignKit/scripts/generate_chip.sh fir_pe 97.5 97.5 441.0 441.0 508.5 541.5
