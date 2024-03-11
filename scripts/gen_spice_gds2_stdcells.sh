#!/usr/bin/bash

if [[ $# -ne 1 ]]; then
    echo "usage: gen_lef_spice_gds2 <Magic Layout>"
    echo "      Generating LEF/Spice/GDS2 from STD-Cell Magic"
    exit 2
fi

#echo "***************************************************************"
#echo "* Generating LEF"
#echo "***************************************************************"
#magic -dnull -noconsole << EOF
#drc off
#box 0 0 0 0
#load $1 -force
#lef writeall -notop
#quit -force
#EOF

echo "***************************************************************"
echo "* Generating Spice"
echo "***************************************************************"
magic -dnull -noconsole << EOF
drc off
box 0 0 0 0
load $1 -force
drc off
extract all
ext2spice lvs
ext2spice subcircuit top off
ext2spice
quit -force
EOF

echo "***************************************************************"
echo "* Generated .spice symbol linked to stdcells.spice for LVL"
echo "***************************************************************"
rm stdcells.spice
ln -s $1.spice stdcells.spice
rm *.ext

echo "***************************************************************"
echo "* Generating GDS2"
echo "***************************************************************"
magic -dnull -noconsole << EOF
drc off
box 0 0 0 0
load $1 -force
drc off
gds abstract
gds drccheck no
gds labels yes
gds library yes
gds rescale no
gds write $1.gds2
quit -force
EOF

echo "***************************************************************"
echo "* Generated .gds2 symbol linked to etri05_stdcells.gds"
echo "***************************************************************"
rm etri05_stdcells.gds2
ln -s $1.gds2 etri05_stdcells.gds2

