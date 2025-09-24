#!/usr/bin/bash

if [[ $# -ne 1 ]]; then
    echo " <Core name> missing."
    exit 2
fi

magic -dnull -noconsole << EOF
drc off
box 0 0 0 0
load $1_Pad.mag -force
select top cell
view
box
exit
EOF

