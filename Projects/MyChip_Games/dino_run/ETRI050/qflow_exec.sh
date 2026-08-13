#!/bin/tcsh -f
#-------------------------------------------
# qflow exec script for project ~/ETRI050_DesignKit/devel/Projects/MyChip_Games/dino_run/ETRI050
#-------------------------------------------

# /usr/local/share/qflow/scripts/yosys.sh ~/ETRI050_DesignKit/devel/Projects/MyChip_Games/dino_run/ETRI050 dino_run ~/ETRI050_DesignKit/devel/Projects/MyChip_Games/dino_run/ETRI050/source/dino_run.v || exit 1
# /usr/local/share/qflow/scripts/graywolf.sh -d ~/ETRI050_DesignKit/devel/Projects/MyChip_Games/dino_run/ETRI050 dino_run || exit 1
# /usr/local/share/qflow/scripts/vesta.sh  ~/ETRI050_DesignKit/devel/Projects/MyChip_Games/dino_run/ETRI050 dino_run || exit 1
# /usr/local/share/qflow/scripts/qrouter.sh ~/ETRI050_DesignKit/devel/Projects/MyChip_Games/dino_run/ETRI050 dino_run || exit 1
# /usr/local/share/qflow/scripts/vesta.sh  -d ~/ETRI050_DesignKit/devel/Projects/MyChip_Games/dino_run/ETRI050 dino_run || exit 1
/usr/local/share/qflow/scripts/magic_db.sh ~/ETRI050_DesignKit/devel/Projects/MyChip_Games/dino_run/ETRI050 dino_run || exit 1
# /usr/local/share/qflow/scripts/magic_drc.sh ~/ETRI050_DesignKit/devel/Projects/MyChip_Games/dino_run/ETRI050 dino_run || exit 1
# /usr/local/share/qflow/scripts/netgen_lvs.sh ~/ETRI050_DesignKit/devel/Projects/MyChip_Games/dino_run/ETRI050 dino_run || exit 1
# /usr/local/share/qflow/scripts/magic_gds.sh ~/ETRI050_DesignKit/devel/Projects/MyChip_Games/dino_run/ETRI050 dino_run || exit 1
# /usr/local/share/qflow/scripts/cleanup.sh ~/ETRI050_DesignKit/devel/Projects/MyChip_Games/dino_run/ETRI050 dino_run || exit 1
# /usr/local/share/qflow/scripts/cleanup.sh -p ~/ETRI050_DesignKit/devel/Projects/MyChip_Games/dino_run/ETRI050 dino_run || exit 1
# /usr/local/share/qflow/scripts/magic_view.sh ~/ETRI050_DesignKit/devel/Projects/MyChip_Games/dino_run/ETRI050 dino_run || exit 1
