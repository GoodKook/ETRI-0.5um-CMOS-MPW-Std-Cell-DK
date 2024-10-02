#!/usr/bin/bash

if [[ $# -ne 7 ]]; then
    echo "usage: generate_chip <core name> <pad_x> <pad_y> <route_x> <route_y> <core_x> <core_y>" >&2
    exit 2
fi

echo "************************************************************************"
echo "* Generate flatten layout for PAD"
echo "************************************************************************"
if ! [ -f $1_Pad.mag ]; then
  echo "PAD file not exist"
  exit
fi
magic -dnull -noconsole << EOF
drc off
box 0 0 0 0
cif istyle lambda=0.30(ETRI-G)
cif ostyle lambda=0.30(ETRI-G)
gds read ~/ETRI050_DesignKit/pads_ETRI050/ETRI_NSPL_GPIO_231208_Klayout.gds
gds read ~/ETRI050_DesignKit/analog_ETRI/GDS/NSPL_0p5um_klayout.gds
load $1_Pad.mag -force
drc off
select top cell
expand
flatten $1_Pad_F
load  $1_Pad_F
save  $1_Pad_F
quit -force
EOF

echo "************************************************************************"
echo "* Generate flatten layout for Core using ETRI Rule"
echo "************************************************************************"
if ! [ -f $1_Core.mag ]; then
  echo "Core file not exist"
  exit
fi
magic -dnull -noconsole << EOF
drc off
box 0 0 0 0
load $1_Core.mag -force
drc off
select top cell
expand
flatten $1_Core_F
load  $1_Core_F
cif ostyle lambda=0.30(ETRI)
gds write $1_Core_F
quit -force
EOF

echo "************************************************************************"
echo "* Convert generated Core to ETRI-G Rule"
echo "************************************************************************"
magic -dnull -noconsole << EOF
drc off
box 0 0 0 0
cif istyle lambda=0.30(ETRI-G)
gds read $1_Core_F
save  $1_Core_F
quit -force
EOF
rm $1_Core_F.gds

echo "************************************************************************"
echo "* Generate flatten layout for Core-Pad Routing using ETRI Rule"
echo "************************************************************************"
if ! [ -f $1_Pin_Route.mag ]; then
  echo "Pin_Route file not exist"
  exit
fi
magic -dnull -noconsole << EOF
drc off
box 0 0 0 0
load $1_Pin_Route.mag -force
drc off
select top cell
expand
flatten $1_Pin_Route_F
load  $1_Pin_Route_F
cif ostyle lambda=0.30(ETRI)
gds write $1_Pin_Route_F
quit -force
EOF

echo "************************************************************************"
echo "* Convert generated Core-Pad Routing to ETRI-G Rule"
echo "************************************************************************"
magic -dnull -noconsole << EOF
drc off
box 0 0 0 0
cif istyle lambda=0.30(ETRI-G)
gds read $1_Pin_Route_F
save  $1_Pin_Route_F
quit -force
EOF
rm $1_Pin_Route_F.gds

echo "************************************************************************"
echo "* Read convert Pad, Core and Routing and align positions"
echo "*    and generate final GDS with ETRI-G Rule"
echo "************************************************************************"
magic -dnull -noconsole << EOF
drc off
box 0 0 0 0
getcell $1_Pad_F
move to $2um $3um
getcell $1_Pin_Route_F
move to $4um $5um
getcell $1_Core_F
move to $6um $7um
flatten $1_Top_F
load $1_Top_F
save $1_Top_F
cif ostyle lambda=0.30(ETRI-G)
gds drccheck no
gds flatten yes
gds labels no
gds write $1_Top
quit -force
EOF

#echo "************************************************************************"
#echo "* Clean-up"
#echo "************************************************************************"
#rm $1_Pad_F.mag
#rm $1_Pin_Route_F.mag
#rm $1_Core_F.mag
