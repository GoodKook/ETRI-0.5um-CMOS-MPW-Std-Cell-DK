#!/usr/bin/bash

if [[ $# -ne 1 ]]; then
    echo " <Layout Name> missing."
    exit 2
fi

magic -dnull -noconsole << EOF
box 0 0 0 0
load $1.mag -force
select top cell
drc on
drc check
drc statistics
drc count
drc find next
quit -noprompt
EOF
