#!/usr/bin/bash

~/ETRI050_DesignKit/scripts/run_lvs2.sh ALU_wrapper_Core ALU_wrapper | tee ALU_wrapper_Core_LVS.log
~/ETRI050_DesignKit/scripts/run_drc.sh ALU_wrapper_Core | tee ALU_wrapper_Core_DRC.log
~/ETRI050_DesignKit/scripts/check_via_stack.py ALU_wrapper_Core m2contact m3contact 6 | tee ALU_wrapper_Core_Stacked_VIA.log

~/ETRI050_DesignKit/scripts/xPad.py ALU_wrapper
~/ETRI050_DesignKit/scripts/xPin_Route.py ALU_wrapper
~/ETRI050_DesignKit/scripts/generate_chip.sh ALU_wrapper 97.5 97.5 441.0 441.0 485.0 479.0

