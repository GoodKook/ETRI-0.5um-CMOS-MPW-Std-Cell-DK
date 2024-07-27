#!/usr/bin/bash

if [[ $# -ne 1 ]]; then
    echo "usage: ext2spice_flatten.sh <Magic Layout>"
    echo "      Extract flatten spice netlist with top sub-circuit for LVL & LVS"
    exit 2
fi

magic -dnull -noconsole << EOF
drc off
box 0 0 0 0
load $1 -force
drc off
extract all
ext2spice lvs
ext2spice hierarchy off
ext2spice subcircuit top on
ext2spice
quit -force
EOF
