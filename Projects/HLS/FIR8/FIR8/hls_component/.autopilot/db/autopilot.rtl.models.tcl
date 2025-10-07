set SynModuleInfo {
  {SRCNAME FIR8_Pipeline_SHIFTER_LOOP MODELNAME FIR8_Pipeline_SHIFTER_LOOP RTLNAME FIR8_FIR8_Pipeline_SHIFTER_LOOP
    SUBMODULES {
      {MODELNAME FIR8_flow_control_loop_pipe_sequential_init RTLNAME FIR8_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME FIR8_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME FIR8_Pipeline_MACC_LOOP MODELNAME FIR8_Pipeline_MACC_LOOP RTLNAME FIR8_FIR8_Pipeline_MACC_LOOP
    SUBMODULES {
      {MODELNAME FIR8_mac_muladd_8ns_6ns_16ns_16_4_1 RTLNAME FIR8_mac_muladd_8ns_6ns_16ns_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME FIR8_FIR8_Pipeline_MACC_LOOP_filter_taps_ROM_AUTO_1R RTLNAME FIR8_FIR8_Pipeline_MACC_LOOP_filter_taps_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME FIR8 MODELNAME FIR8 RTLNAME FIR8 IS_TOP 1
    SUBMODULES {
      {MODELNAME FIR8_shift_reg_RAM_AUTO_1R1W RTLNAME FIR8_shift_reg_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
