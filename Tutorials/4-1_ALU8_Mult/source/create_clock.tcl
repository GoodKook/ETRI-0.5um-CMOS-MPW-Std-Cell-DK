
create_clock -period 10 clk
propagate_clocks

synth -top ALU_wrapper
