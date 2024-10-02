#!/usr/bin/bash

if [[ $# -ne 1 ]]; then
    echo "usage: extract <Magic Layout>"
    echo "      Extract spice netlist for LVL & LVS"
    exit 2
fi

magic -dnull -noconsole << EOF
drc off
box 0 0 0 0
load $1 -force
drc off
extract all
ext2spice lvs
ext2spice subcircuit top off
ext2spice
quit -force
EOF

# LVS
#hierarchy on
#format ngspice
#cthresh infinite
#rthresh infinite
#renumber off
#scale off
#blackbox on
#subcircuit top auto
#global off

#ext2spice cthresh infinite
#ext2spice rthresh infinite
#ext2spice scale off
#ext2spice format ngspice
#ext2spice hierarchy on
#ext2spice subcircuit on
#ext2spice subcircuit top auto
#ext2spice hierarchy off
#ext2spice subcircuit off
#ext2spice subcircuit top off
