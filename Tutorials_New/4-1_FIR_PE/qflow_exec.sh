#!/bin/tcsh -f
#-------------------------------------------
# qflow exec script for project ~/ETRI-0.5um-CMOS-MPW-Std-Cell-DK/Tutorials_New/4-1_FIR_PE
#-------------------------------------------

# /usr/local/share/qflow/scripts/yosys.sh ~/ETRI-0.5um-CMOS-MPW-Std-Cell-DK/Tutorials_New/4-1_FIR_PE fir_pe ~/ETRI-0.5um-CMOS-MPW-Std-Cell-DK/Tutorials_New/4-1_FIR_PE/source/fir_pe.v || exit 1
# /usr/local/share/qflow/scripts/graywolf.sh -d ~/ETRI-0.5um-CMOS-MPW-Std-Cell-DK/Tutorials_New/4-1_FIR_PE fir_pe || exit 1
# /usr/local/share/qflow/scripts/vesta.sh  ~/ETRI-0.5um-CMOS-MPW-Std-Cell-DK/Tutorials_New/4-1_FIR_PE fir_pe || exit 1
# /usr/local/share/qflow/scripts/qrouter.sh ~/ETRI-0.5um-CMOS-MPW-Std-Cell-DK/Tutorials_New/4-1_FIR_PE fir_pe || exit 1
# /usr/local/share/qflow/scripts/vesta.sh  -d ~/ETRI-0.5um-CMOS-MPW-Std-Cell-DK/Tutorials_New/4-1_FIR_PE fir_pe || exit 1
# /usr/local/share/qflow/scripts/magic_db.sh ~/ETRI-0.5um-CMOS-MPW-Std-Cell-DK/Tutorials_New/4-1_FIR_PE fir_pe || exit 1
# /usr/local/share/qflow/scripts/magic_drc.sh ~/ETRI-0.5um-CMOS-MPW-Std-Cell-DK/Tutorials_New/4-1_FIR_PE fir_pe || exit 1
/usr/local/share/qflow/scripts/netgen_lvs.sh ~/ETRI-0.5um-CMOS-MPW-Std-Cell-DK/Tutorials_New/4-1_FIR_PE fir_pe || exit 1
# /usr/local/share/qflow/scripts/magic_gds.sh ~/ETRI-0.5um-CMOS-MPW-Std-Cell-DK/Tutorials_New/4-1_FIR_PE fir_pe || exit 1
# /usr/local/share/qflow/scripts/cleanup.sh ~/ETRI-0.5um-CMOS-MPW-Std-Cell-DK/Tutorials_New/4-1_FIR_PE fir_pe || exit 1
# /usr/local/share/qflow/scripts/cleanup.sh -p ~/ETRI-0.5um-CMOS-MPW-Std-Cell-DK/Tutorials_New/4-1_FIR_PE fir_pe || exit 1
# /usr/local/share/qflow/scripts/magic_view.sh ~/ETRI-0.5um-CMOS-MPW-Std-Cell-DK/Tutorials_New/4-1_FIR_PE fir_pe || exit 1
