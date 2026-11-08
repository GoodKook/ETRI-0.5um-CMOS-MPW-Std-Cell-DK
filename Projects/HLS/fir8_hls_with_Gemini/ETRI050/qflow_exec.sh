#!/bin/tcsh -f
#-------------------------------------------
# qflow exec script for project ~/MyChip_Work/fir8_hls_with_Gemini/ETRI050
#-------------------------------------------

# /usr/local/share/qflow/scripts/yosys.sh ~/MyChip_Work/fir8_hls_with_Gemini/ETRI050 fir8 ~/MyChip_Work/fir8_hls_with_Gemini/ETRI050/source/0_fir8_parallel.v || exit 1
# /usr/local/share/qflow/scripts/graywolf.sh -d ~/MyChip_Work/fir8_hls_with_Gemini/ETRI050 fir8 || exit 1
# /usr/local/share/qflow/scripts/opensta.sh  ~/MyChip_Work/fir8_hls_with_Gemini/ETRI050 fir8 || exit 1
# /usr/local/share/qflow/scripts/qrouter.sh ~/MyChip_Work/fir8_hls_with_Gemini/ETRI050 fir8 || exit 1
# /usr/local/share/qflow/scripts/opensta.sh  -d ~/MyChip_Work/fir8_hls_with_Gemini/ETRI050 fir8 || exit 1
/usr/local/share/qflow/scripts/magic_db.sh ~/MyChip_Work/fir8_hls_with_Gemini/ETRI050 fir8 || exit 1
# /usr/local/share/qflow/scripts/magic_drc.sh ~/MyChip_Work/fir8_hls_with_Gemini/ETRI050 fir8 || exit 1
# /usr/local/share/qflow/scripts/netgen_lvs.sh ~/MyChip_Work/fir8_hls_with_Gemini/ETRI050 fir8 || exit 1
# /usr/local/share/qflow/scripts/magic_gds.sh ~/MyChip_Work/fir8_hls_with_Gemini/ETRI050 fir8 || exit 1
# /usr/local/share/qflow/scripts/cleanup.sh ~/MyChip_Work/fir8_hls_with_Gemini/ETRI050 fir8 || exit 1
# /usr/local/share/qflow/scripts/cleanup.sh -p ~/MyChip_Work/fir8_hls_with_Gemini/ETRI050 fir8 || exit 1
# /usr/local/share/qflow/scripts/magic_view.sh ~/MyChip_Work/fir8_hls_with_Gemini/ETRI050 fir8 || exit 1
