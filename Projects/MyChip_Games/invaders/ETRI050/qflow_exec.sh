#!/bin/tcsh -f
#-------------------------------------------
# qflow exec script for project ~/MyChip_Work/invaders/ETRI050
#-------------------------------------------

# /usr/local/share/qflow/scripts/yosys.sh ~/MyChip_Work/invaders/ETRI050 invaders ~/MyChip_Work/invaders/ETRI050/source/invaders.v || exit 1
# /usr/local/share/qflow/scripts/graywolf.sh -d ~/MyChip_Work/invaders/ETRI050 invaders || exit 1
# /usr/local/share/qflow/scripts/opensta.sh  ~/MyChip_Work/invaders/ETRI050 invaders || exit 1
# /usr/local/share/qflow/scripts/qrouter.sh ~/MyChip_Work/invaders/ETRI050 invaders || exit 1
# /usr/local/share/qflow/scripts/opensta.sh  -d ~/MyChip_Work/invaders/ETRI050 invaders || exit 1
# /usr/local/share/qflow/scripts/magic_db.sh ~/MyChip_Work/invaders/ETRI050 invaders || exit 1
# /usr/local/share/qflow/scripts/magic_drc.sh ~/MyChip_Work/invaders/ETRI050 invaders || exit 1
/usr/local/share/qflow/scripts/netgen_lvs.sh ~/MyChip_Work/invaders/ETRI050 invaders || exit 1
# /usr/local/share/qflow/scripts/magic_gds.sh ~/MyChip_Work/invaders/ETRI050 invaders || exit 1
# /usr/local/share/qflow/scripts/cleanup.sh ~/MyChip_Work/invaders/ETRI050 invaders || exit 1
# /usr/local/share/qflow/scripts/cleanup.sh -p ~/MyChip_Work/invaders/ETRI050 invaders || exit 1
# /usr/local/share/qflow/scripts/magic_view.sh ~/MyChip_Work/invaders/ETRI050 invaders || exit 1
