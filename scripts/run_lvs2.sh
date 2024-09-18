#!/usr/bin/bash

if [[ $# -ne 2 ]]; then
    echo "Layout Name missing: Test Circuit vs Ref. Circuit"
    exit 2
fi

# Extract Spice for LVS
~/ETRI050_DesignKit/scripts/extract_spice.sh $1

# LVS check with Synthesis netlist
netgen -noc -batch lvs \
    "$1.spice $1" \
    "../synthesis/$2.spc $2" \
    ~/ETRI050_DesignKit/tech/etri050_setup.tcl \
    LVS_$1.txt

