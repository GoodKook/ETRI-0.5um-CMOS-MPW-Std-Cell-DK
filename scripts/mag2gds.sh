#!/usr/bin/bash

if [[ $# -ne 1 ]]; then
    echo "Export Magic layout to flattened GDS without label"
    echo "usage: mag2gds.sh <magic>" >&2
    exit 2
fi

echo "************************************************************************"
echo "* Generate flatten layout for Core using ETRI Rule"
echo "************************************************************************"
if ! [ -f $1.mag ]; then
  echo "Magic file not exist"
  exit
fi
magic -dnull -noconsole << EOF
drc off
box 0 0 0 0
load $1.mag -force
drc off
select top cell
expand
flatten $1_F
load $1_F
save $1_F
cif ostyle lambda=0.30(ETRI)
gds drccheck no
gds flatten yes
gds labels no
gds write $1_F
quit
EOF


