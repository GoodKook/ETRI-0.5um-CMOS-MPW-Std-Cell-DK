#!/usr/bin/bash

if [[ $# -ne 1 ]]; then
    echo "Compare net of a cell with osu050"
    echo " <Layout Name> missing."
    exit 2
fi

# Extract Spice for LVS
WORK=`pwd`
OSU050="../digital_osu050"
cd $OSU050
~/ETRI050_DesignKit/scripts/extract_spice.sh $1
cd $WORK
~/ETRI050_DesignKit/scripts/extract_spice.sh $1

# LVS check with Synthesis netlist
netgen -noc -batch lvs \
    "$WORK/$1.spice $1" \
    "$OSU050/$1.spice $1" \
    ~/ETRI050_DesignKit/tech/etri050_setup.tcl \
    $WORK/LVS_$1.txt

