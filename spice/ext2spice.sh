#!/usr/bin/bash

if [[ $# -ne 1 ]]; then
    echo "usage: extract <Magic Layout>"
    echo "      Extract spice netlist for circuit simulation"
    exit 2
fi

magic -dnull -noconsole << EOF
drc off
box 0 0 0 0
load $1 -force
drc off
extract all
ext2spice format ngspice
ext2spice
quit -force
EOF

rm $1.ext
