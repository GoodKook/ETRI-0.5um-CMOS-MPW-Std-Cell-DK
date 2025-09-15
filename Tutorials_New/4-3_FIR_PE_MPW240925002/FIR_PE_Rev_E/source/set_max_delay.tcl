#set_max_delay 1 -from Rdy -to Vld
create_clock -period 10 clk
propagate_clocks

synth -top fir_pe
