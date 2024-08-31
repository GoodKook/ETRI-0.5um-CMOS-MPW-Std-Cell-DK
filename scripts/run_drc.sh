#!/usr/bin/bash

if [[ $# -ne 1 ]]; then
    echo " <Layout Name> missing."
    exit 2
fi

magic -dnull -noconsole << EOF
drc off
box 0 0 0 0
load $1.mag -force
view
select top cell
select area
expand
drc on
drc check
drc count
drc why
drc statistics
box
quit -noprompt
EOF
