#!/usr/bin/bash

if [[ $# -ne 1 ]]; then
    echo "usage: size_core.sh <core name>" >&2
    exit 2
fi

echo "************************************************************************"
echo "* Measure the size of the Core"
echo "************************************************************************"
cd ./layout
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
quit -force
EOF
cd ..
