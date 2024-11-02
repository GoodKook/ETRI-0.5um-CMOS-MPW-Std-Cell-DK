#!/bin/tcsh -f
#-------------------------------------------
# qflow exec script for project ~/ETRI050_DesignKit/Ref_Design/CPU_6502
#-------------------------------------------

# /usr/local/share/qflow/scripts/yosys.sh ~/ETRI050_DesignKit/Ref_Design/CPU_6502 cpu ~/ETRI050_DesignKit/Ref_Design/CPU_6502/source/cpu.v || exit 1
# /usr/local/share/qflow/scripts/graywolf.sh -d ~/ETRI050_DesignKit/Ref_Design/CPU_6502 cpu || exit 1
# /usr/local/share/qflow/scripts/vesta.sh  ~/ETRI050_DesignKit/Ref_Design/CPU_6502 cpu || exit 1
# /usr/local/share/qflow/scripts/qrouter.sh ~/ETRI050_DesignKit/Ref_Design/CPU_6502 cpu || exit 1
# /usr/local/share/qflow/scripts/vesta.sh  -d ~/ETRI050_DesignKit/Ref_Design/CPU_6502 cpu || exit 1
# /usr/local/share/qflow/scripts/magic_db.sh ~/ETRI050_DesignKit/Ref_Design/CPU_6502 cpu || exit 1
# /usr/local/share/qflow/scripts/magic_drc.sh ~/ETRI050_DesignKit/Ref_Design/CPU_6502 cpu || exit 1
/usr/local/share/qflow/scripts/netgen_lvs.sh ~/ETRI050_DesignKit/Ref_Design/CPU_6502 cpu || exit 1
# /usr/local/share/qflow/scripts/magic_gds.sh ~/ETRI050_DesignKit/Ref_Design/CPU_6502 cpu || exit 1
# /usr/local/share/qflow/scripts/cleanup.sh ~/ETRI050_DesignKit/Ref_Design/CPU_6502 cpu || exit 1
# /usr/local/share/qflow/scripts/cleanup.sh -p ~/ETRI050_DesignKit/Ref_Design/CPU_6502 cpu || exit 1
# /usr/local/share/qflow/scripts/magic_view.sh ~/ETRI050_DesignKit/Ref_Design/CPU_6502 cpu || exit 1
