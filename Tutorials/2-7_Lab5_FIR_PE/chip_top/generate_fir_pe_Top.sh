#!/usr/bin/bash

#~/ETRI050_DesignKit/scripts/run_lvs2.sh fir_pe_Core fir_pe | tee fir_pe_Core_LVS.log
#~/ETRI050_DesignKit/scripts/run_drc.sh fir_pe_Core | tee fir_pe_Core_DRC.log
#~/ETRI050_DesignKit/scripts/check_via_stack.py fir_pe_Core m2contact m3contact 6 | tee fir_pe_Core_Stacked_VIA.log

~/ETRI050_DesignKit/scripts/xPad.py fir_pe
~/ETRI050_DesignKit/scripts/xPin_Route.py fir_pe
~/ETRI050_DesignKit/scripts/generate_chip.sh fir_pe 97.5 97.5 441.0 441.0 489.0 501
