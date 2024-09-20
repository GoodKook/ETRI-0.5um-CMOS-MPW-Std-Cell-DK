#!/usr/bin/bash
rm -f *.spice
rm -f LVL_Result.txt
../scripts/gen_spice_gds2_stdcells.sh khu_etri050_stdcells

if ! [ -f khu_etri050_stdcells.spice ]; then
  echo "Spice netlist negeration FAIL"
  exit 2
fi

../scripts/gen_lef_stdcells.py khu_etri050_stdcells
netgen -noc -batch lvs  "./khu_etri050_stdcells.spice khu_etri050_stdcells" \
                        "../digital_osu050/iit_stdcells.spice iit_stdcells" \
                        ../tech/etri050_setup.tcl LVL_Result.txt
