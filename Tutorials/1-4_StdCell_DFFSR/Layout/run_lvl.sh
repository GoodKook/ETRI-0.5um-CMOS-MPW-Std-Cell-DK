#!/usr/bin/bash

#if [[ $# -ne 1 ]]; then
#    echo " <Layout Name> missing."
#    exit 2
#fi

# Extract Spice for LVS
../../1-3_Inverter_Netgen/extract_spice_lvs.sh DFFSR.mag
../../1-3_Inverter_Netgen/extract_spice_lvs.sh DFFSR74.mag

# LVS check with Synthesis netlist
netgen -noc -batch lvs \
    "DFFSR.spice DFFSR" \
    "DFFSR74.spice DFFSR74" \
    ./netgen_setup.tcl LVL_DFFSR.txt

