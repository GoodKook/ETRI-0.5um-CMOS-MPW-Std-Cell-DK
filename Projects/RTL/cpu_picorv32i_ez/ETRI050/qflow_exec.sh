#!/bin/tcsh -f
#-------------------------------------------
# qflow exec script for project ~/ETRI050_DesignKit/devel/Ref_Design/CPU_picorv32
#-------------------------------------------

# /usr/local/share/qflow/scripts/yosys.sh ~/ETRI050_DesignKit/devel/Ref_Design/CPU_picorv32 picorv32i_ez ~/ETRI050_DesignKit/devel/Ref_Design/CPU_picorv32/source/picorv32i_ez.v || exit 1
/usr/local/share/qflow/scripts/graywolf.sh -d ~/ETRI050_DesignKit/devel/Ref_Design/CPU_picorv32 picorv32i_ez || exit 1
# /usr/local/share/qflow/scripts/vesta.sh  ~/ETRI050_DesignKit/devel/Ref_Design/CPU_picorv32 picorv32i_ez || exit 1
# /usr/local/share/qflow/scripts/qrouter.sh ~/ETRI050_DesignKit/devel/Ref_Design/CPU_picorv32 picorv32i_ez || exit 1
# /usr/local/share/qflow/scripts/vesta.sh  -d ~/ETRI050_DesignKit/devel/Ref_Design/CPU_picorv32 picorv32i_ez || exit 1
# /usr/local/share/qflow/scripts/magic_db.sh ~/ETRI050_DesignKit/devel/Ref_Design/CPU_picorv32 picorv32i_ez || exit 1
# /usr/local/share/qflow/scripts/magic_drc.sh ~/ETRI050_DesignKit/devel/Ref_Design/CPU_picorv32 picorv32i_ez || exit 1
# /usr/local/share/qflow/scripts/netgen_lvs.sh ~/ETRI050_DesignKit/devel/Ref_Design/CPU_picorv32 picorv32i_ez || exit 1
# /usr/local/share/qflow/scripts/magic_gds.sh ~/ETRI050_DesignKit/devel/Ref_Design/CPU_picorv32 picorv32i_ez || exit 1
# /usr/local/share/qflow/scripts/cleanup.sh ~/ETRI050_DesignKit/devel/Ref_Design/CPU_picorv32 picorv32i_ez || exit 1
# /usr/local/share/qflow/scripts/cleanup.sh -p ~/ETRI050_DesignKit/devel/Ref_Design/CPU_picorv32 picorv32i_ez || exit 1
# /usr/local/share/qflow/scripts/magic_view.sh ~/ETRI050_DesignKit/devel/Ref_Design/CPU_picorv32 picorv32i_ez || exit 1
