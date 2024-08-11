open_project ./fir_pe_wrapper.xpr
reset_run impl_1
launch_runs impl_1 -to_step write_bitstream
wait_on_run impl_1

