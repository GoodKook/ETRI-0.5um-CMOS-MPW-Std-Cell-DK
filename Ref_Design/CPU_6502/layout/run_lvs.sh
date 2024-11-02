#!/usr/bin/bash

if [[ $# -ne 1 ]]; then
    echo " <Layout Name> missing."
    exit 2
fi

# Extract Spice for LVS
../../../scripts/extract_spice.sh $1

# LVS check with Synthesis netlist
netgen -noc -batch lvs \
    "$1.spice $1" \
    "../synthesis/cpu.spc cpu" \
    setup.tcl \
    LVS_$1.txt

