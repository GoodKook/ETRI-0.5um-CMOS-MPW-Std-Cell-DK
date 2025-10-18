#!/bin/tcsh -f
#-------------------------------------------
# qflow exec script for project ~/ETRI050_DesignKit/devel/Projects/HLS/FIR8/ETRI050
#-------------------------------------------

/usr/local/share/qflow/scripts/yosys.sh ~/ETRI050_DesignKit/devel/Projects/HLS/FIR8/ETRI050 FIR8 ~/ETRI050_DesignKit/devel/Projects/HLS/FIR8/ETRI050/source/FIR8_FIR8_Pipeline_MACC_LOOP_filter_taps_ROM_AUTO_1R.v || exit 1
# /usr/local/share/qflow/scripts/graywolf.sh -d ~/ETRI050_DesignKit/devel/Projects/HLS/FIR8/ETRI050 FIR8 || exit 1
# /usr/local/share/qflow/scripts/vesta.sh  ~/ETRI050_DesignKit/devel/Projects/HLS/FIR8/ETRI050 FIR8 || exit 1
# /usr/local/share/qflow/scripts/qrouter.sh ~/ETRI050_DesignKit/devel/Projects/HLS/FIR8/ETRI050 FIR8 || exit 1
# /usr/local/share/qflow/scripts/vesta.sh  -d ~/ETRI050_DesignKit/devel/Projects/HLS/FIR8/ETRI050 FIR8 || exit 1
# /usr/local/share/qflow/scripts/magic_db.sh ~/ETRI050_DesignKit/devel/Projects/HLS/FIR8/ETRI050 FIR8 || exit 1
# /usr/local/share/qflow/scripts/magic_drc.sh ~/ETRI050_DesignKit/devel/Projects/HLS/FIR8/ETRI050 FIR8 || exit 1
# /usr/local/share/qflow/scripts/netgen_lvs.sh ~/ETRI050_DesignKit/devel/Projects/HLS/FIR8/ETRI050 FIR8 || exit 1
# /usr/local/share/qflow/scripts/magic_gds.sh ~/ETRI050_DesignKit/devel/Projects/HLS/FIR8/ETRI050 FIR8 || exit 1
# /usr/local/share/qflow/scripts/cleanup.sh ~/ETRI050_DesignKit/devel/Projects/HLS/FIR8/ETRI050 FIR8 || exit 1
# /usr/local/share/qflow/scripts/cleanup.sh -p ~/ETRI050_DesignKit/devel/Projects/HLS/FIR8/ETRI050 FIR8 || exit 1
# /usr/local/share/qflow/scripts/magic_view.sh ~/ETRI050_DesignKit/devel/Projects/HLS/FIR8/ETRI050 FIR8 || exit 1
