set_units -time ns -capacitance pF -resistance kOhm -voltage V -current uA

set_max_transition 2.2 [current_design]
set_max_capacitance  1.2 [current_design]
set_max_fanout      10   [current_design]

create_clock -name clk -period 20.0 [get_ports clk]

set_clock_uncertainty -setup 0.5 [get_clocks clk]
set_clock_uncertainty -hold  0.1 [get_clocks clk]

set_input_delay -max 1.0 -clock clk [get_ports {rst_n din}]
set_input_delay -min 0.1 -clock clk [get_ports {rst_n din}]

set_driving_cell -lib_cell INVX4 [get_ports {din}]

set_output_delay -max 1.1 -clock clk [get_ports {dout[7] dout[6] dout[5] dout[4] dout[3] dout[2] dout[1] dout[0]}]
set_output_delay -min 0.2 -clock clk [get_ports {dout[7] dout[6] dout[5] dout[4] dout[3] dout[2] dout[1] dout[0]}]

set_load 0.3 [get_ports {dout[7] dout[6] dout[5] dout[4] dout[3] dout[2] dout[1] dout[0]}]

# M0-10: reset checks retained; no false path
set_input_transition 0.1 [get_ports {clk rst_n}]
