#!/usr/bin/bash

if [[ $# -ne 2 ]]; then
    echo " Compare Netlist(LVS): <Layout> <Schematic>"
    exit 2
else
    MAG_NETLIST="./$1.spice"
    SCH_NETLIST="../Sch/simulation/$2_TB.spice"
    echo ""
    echo "-----------------------------------------------------------"
    echo " Compare Netlist(LVS):"
    echo "      $MAG_NETLIST vs. $SCH_NETLIST"
fi

echo "-----------------------------------------------------------"
echo " Extract Spice netlist for LVS"
echo "  from Magic layout: $1.mag"
if [[ ! -f "$1.mag" ]]; then
    echo ""
    echo "-----------------------------------------------------------"
    echo " ERROR: Layout file NOT found: $1.mag"
    exit 2
else
    echo "-----------------------------------------------------------"
    ../../1-3_Inverter_Netgen/extract_spice_lvs.sh $1.mag
fi

if [[ ! -f "$SCH_NETLIST" ]]; then
    echo ""
    echo "-----------------------------------------------------------"
    echo " ERROR: Schematic netlist NOT found: $SCH_NETLIST"
    exit 2
fi

if [[ ! -f "$MAG_NETLIST" ]]; then
    echo ""
    echo "-----------------------------------------------------------"
    echo " ERROR: Layout netlist NOT found: $SCH_NETLIST"
    exit 2
fi

# LVS check with Synthesis netlist
echo ""
echo "-----------------------------------------------------------"
echo " Netgen compare netlist(LVS):"
echo "      $MAG_NETLIST vs. $SCH_NETLIST"
echo "-----------------------------------------------------------"
echo ""

netgen -noc -batch lvs \
    "$MAG_NETLIST $1" "$SCH_NETLIST $2" \
    ./netgen_setup.tcl LVS_$1_$2.txt

echo ""
echo "-----------------------------------------------------------"
echo " LVS Report: LVS_$1_$2.txt"
echo "-----------------------------------------------------------"
echo ""
