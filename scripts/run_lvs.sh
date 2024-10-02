#!/usr/bin/bash

if [[ $# -ne 1 ]]; then
    echo " <Layout Name> missing."
    exit 2
fi

# Extract Spice for LVS
~/ETRI050_DesignKit/scripts/extract_spice.sh $1

# LVS check with Synthesis netlist
netgen -noc -batch lvs \
    "$1.spice $1" \
    "../synthesis/$1.spc $1" \
    ~/ETRI050_DesignKit/tech/etri050_setup.tcl \
    LVS_$1.txt

