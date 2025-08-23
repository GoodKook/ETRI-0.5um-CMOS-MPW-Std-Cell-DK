#set_max_delay 1 -from Rdy -to Vld
create_clock -period 10 clk
propagate_clocks

#set_dont_use [get_lib_cells */XOR2X1] true

synth -top fir_pe


