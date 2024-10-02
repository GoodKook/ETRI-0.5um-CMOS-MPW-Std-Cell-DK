#!/usr/bin/bash

if [[ $# -ne 1 ]]; then
    echo "usage: drc_core.sh <core name>" >&2
    exit 2
fi

echo "************************************************************************"
echo "* DRC for the Core"
echo "************************************************************************"
if ! [ -f $1.mag ]; then
  echo "magic file not exist"
  exit
fi
magic -dnull -noconsole << EOF
drc off
box 0 0 0 0
load $1.mag -force
select top cell
box
drc on
drc catchup
drc check
drc count
drc why
drc ignore {This layer can't abut or partially overlap between subcells}
drc check
drc count
drc why
drc statistics
quit -force
EOF
