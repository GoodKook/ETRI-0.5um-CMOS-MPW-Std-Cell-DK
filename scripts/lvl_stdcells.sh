#!/usr/bin/bash

if [[ $# -ne 1 ]]; then
    echo "usage: lvl_stdcells <Reference>"
    echo "      STD-Cells Layout-vs-Layout Netlist compare"
    exit 2
fi

netgen -noc << EOF
lvs $1/stdcells.spice ./stdcells.spice ./lvl_setup.tcl LVL_Result.txt
quit
EOF

