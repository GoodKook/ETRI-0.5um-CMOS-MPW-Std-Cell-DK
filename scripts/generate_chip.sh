#!/usr/bin/bash

if [[ $# -ne 7 ]]; then
    echo "usage: generate_chip <core name> <pad_x> <pad_y> <route_x> <route_y> <core_x> <core_y>" >&2
    exit 2
fi

echo "************************************************************************"
echo "* Generate GDS layout for Pad"
echo "************************************************************************"
if ! [ -f $1_Pad.mag ]; then
  echo "PAD file not exist"
  exit
fi
magic -dnull -noconsole << EOF
drc off
box 0 0 0 0
drc off
load  $1_Pad
select top cell
expand
cif ostyle lambda=0.30(ETRI-G)
gds write $1_Pad
quit -noprompt
EOF

echo "************************************************************************"
echo "* Generate GDS layout for Pin_Route"
echo "************************************************************************"
if ! [ -f $1_Pin_Route.mag ]; then
  echo "Pin_Route file not exist"
  exit
fi
magic -dnull -noconsole << EOF
drc off
box 0 0 0 0
drc off
load  $1_Pin_Route
select top cell
expand
flatten $1_Pin_Route_F
load $1_Pin_Route_F
cif ostyle lambda=0.30(ETRI)
gds write $1_Pin_Route_F
quit -noprompt
EOF

echo "************************************************************************"
echo "* Generate GDS layout for Core"
echo "************************************************************************"
if ! [ -f $1_Core.mag ]; then
  echo "Core file not exist"
  exit
fi
magic -dnull -noconsole << EOF
drc off
box 0 0 0 0
drc off
load  $1_Core
select top cell
expand
flatten $1_Core_F
load  $1_Core_F
cif ostyle lambda=0.30(ETRI)
gds write $1_Core_F
quit -noprompt
EOF

echo "************************************************************************"
echo "* Read generated GDS layout for Core, Pin_Route, Pad"
echo "************************************************************************"
if ! [ -f $1_Core.mag ]; then
  echo "Core file not exist"
  exit
fi
magic -dnull -noconsole << EOF
drc off
box 0 0 0 0
drc off
cif istyle lambda=0.30(ETRI-G)
cif ostyle lambda=0.30(ETRI-G)
gds read $1_Core_F
gds read $1_Pin_Route_F
gds read $1_Pad
box $4um $5um $4um $5um
getcell $1_Pin_Route_F
box $6um $7um $6um $7um
getcell $1_Core_F
gds labels no
gds write $1_Top
quit -noprompt
EOF

