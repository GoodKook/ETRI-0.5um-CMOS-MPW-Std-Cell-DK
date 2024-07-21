#!/usr/bin/bash
if [ -f ".magicrc" ] ; then
    echo "Magic rc found"
else
    echo "Magic rc NOT found"
    exit
fi

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
ext2spice default
ext2spice format ngspice
ext2spice cthresh infinite
ext2spice rthresh infinite
ext2spice scale off
ext2spice subcircuit on
ext2spice hierarchy on
ext2spice
quit -force
EOF
