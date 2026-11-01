#!/bin/tcsh -f
#-------------------------------------------
# qflow exec script for project ~/MyChip_Work/Project/MyChip_Games/space_invader_by_Gemini/Q.14_SC_Final_ETRI050/ETRI050
#-------------------------------------------

# /usr/local/share/qflow/scripts/yosys.sh ~/MyChip_Work/Project/MyChip_Games/space_invader_by_Gemini/Q.14_SC_Final_ETRI050/ETRI050 space_invaders_engine_glcd ~/MyChip_Work/Project/MyChip_Games/space_invader_by_Gemini/Q.14_SC_Final_ETRI050/ETRI050/source/space_invaders_engine_glcd.v || exit 1
# /usr/local/share/qflow/scripts/graywolf.sh -d ~/MyChip_Work/Project/MyChip_Games/space_invader_by_Gemini/Q.14_SC_Final_ETRI050/ETRI050 space_invaders_engine_glcd || exit 1
# /usr/local/share/qflow/scripts/opensta.sh  ~/MyChip_Work/Project/MyChip_Games/space_invader_by_Gemini/Q.14_SC_Final_ETRI050/ETRI050 space_invaders_engine_glcd || exit 1
# /usr/local/share/qflow/scripts/qrouter.sh ~/MyChip_Work/Project/MyChip_Games/space_invader_by_Gemini/Q.14_SC_Final_ETRI050/ETRI050 space_invaders_engine_glcd || exit 1
# /usr/local/share/qflow/scripts/opensta.sh  -d ~/MyChip_Work/Project/MyChip_Games/space_invader_by_Gemini/Q.14_SC_Final_ETRI050/ETRI050 space_invaders_engine_glcd || exit 1
/usr/local/share/qflow/scripts/magic_db.sh ~/MyChip_Work/Project/MyChip_Games/space_invader_by_Gemini/Q.14_SC_Final_ETRI050/ETRI050 space_invaders_engine_glcd || exit 1
# /usr/local/share/qflow/scripts/magic_drc.sh ~/MyChip_Work/Project/MyChip_Games/space_invader_by_Gemini/Q.14_SC_Final_ETRI050/ETRI050 space_invaders_engine_glcd || exit 1
# /usr/local/share/qflow/scripts/netgen_lvs.sh ~/MyChip_Work/Project/MyChip_Games/space_invader_by_Gemini/Q.14_SC_Final_ETRI050/ETRI050 space_invaders_engine_glcd || exit 1
# /usr/local/share/qflow/scripts/magic_gds.sh ~/MyChip_Work/Project/MyChip_Games/space_invader_by_Gemini/Q.14_SC_Final_ETRI050/ETRI050 space_invaders_engine_glcd || exit 1
# /usr/local/share/qflow/scripts/cleanup.sh ~/MyChip_Work/Project/MyChip_Games/space_invader_by_Gemini/Q.14_SC_Final_ETRI050/ETRI050 space_invaders_engine_glcd || exit 1
# /usr/local/share/qflow/scripts/cleanup.sh -p ~/MyChip_Work/Project/MyChip_Games/space_invader_by_Gemini/Q.14_SC_Final_ETRI050/ETRI050 space_invaders_engine_glcd || exit 1
# /usr/local/share/qflow/scripts/magic_view.sh ~/MyChip_Work/Project/MyChip_Games/space_invader_by_Gemini/Q.14_SC_Final_ETRI050/ETRI050 space_invaders_engine_glcd || exit 1
