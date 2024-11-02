#open_project ./ALU_wrapper.xpr

open_hw_manager
connect_hw_server -url localhost:3121 -allow_non_jtag
current_hw_target [get_hw_targets */xilinx_tcf/Digilent/210319B9B157A]
set_property PARAM.FREQUENCY 15000000 [get_hw_targets */xilinx_tcf/Digilent/210319B9B157A]
open_hw_target
set_property PROGRAM.FILE {./fir_pe_wrapper.runs/impl_1/fir_pe_wrapper.bit} [get_hw_devices xc7a100t_0]
current_hw_device [get_hw_devices xc7a100t_0]
set_property PROGRAM.FILE {./fir_pe_wrapper.runs/impl_1/fir_pe_wrapper.bit} [get_hw_devices xc7a100t_0]

program_hw_devices [get_hw_devices xc7a100t_0]

