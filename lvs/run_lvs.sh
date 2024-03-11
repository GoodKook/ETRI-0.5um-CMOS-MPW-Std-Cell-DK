#!/usr/bin/bash

if [[ $# -ne 1 ]]; then
    echo "Netlist compare: Magic's Layout-Vs-XSchem' Schematic"
    echo "usage: run_lvs.sh Circuit Name>"
    exit 2
fi

echo "Generating Netlist from Magic's Layout................"
../scripts/extract_spice.sh ../digital_ETRI/$1
mv $1.spice $1_layout.spice

echo "Generating Netlist from XSchem's Schematic............"
xschem --netlist --spice --quit ../sch/$1.sch
mv ../sch/simulation/$1.spice ./$1_sch.spice

echo "Compare netlist ......................................"
netgen -noc -batch lvs "$1_layout.spice $1" $1_sch.spice setup.tcl $1_comp.out

less $1_comp.out
