#*******************************************************************************
# MTI simulation script
# Vendor: GoodKook
# Associated Filename: simulate_net.do
# Purpose: Pre-Synthesis Functional Simulation with SystemC testbench
# Revision History: 5, Jan. 2024
#********************************************************************************

vsim -voptargs=+acc work.sc_main -t ps

#add wave -label clk sim:/sc_main/u_sc_ALU_wrapper_Top/u_sc_Monitor/clk
#add wave -label reset sim:/sc_main/u_sc_ALU_wrapper_Top/u_sc_Monitor/reset
#add wave -label regA sim:/sc_main/u_sc_ALU_wrapper_Top/u_sc_Monitor/regA
#add wave -label regB sim:/sc_main/u_sc_ALU_wrapper_Top/u_sc_Monitor/regB
#add wave -label regOP -radix ASCII sim:/sc_main/u_sc_ALU_wrapper_Top/u_sc_Monitor/regOP
#add wave -label regACC sim:/sc_main/u_sc_ALU_wrapper_Top/u_sc_Monitor/regACC
#add wave -label regFLAG -radix ASCII sim:/sc_main/u_sc_ALU_wrapper_Top/u_sc_Monitor/regFLAG
#add wave -label regMUL sim:/sc_main/u_sc_ALU_wrapper_Top/u_sc_Monitor/regMUL
#add wave -divider
#add wave -label clk sim:/sc_main/u_sc_ALU_wrapper_Top/u_ALU_wrapper/u_ALU_wrapper/clk
#add wave -label reset sim:/sc_main/u_sc_ALU_wrapper_Top/u_ALU_wrapper/u_ALU_wrapper/reset
#add wave -label iSel sim:/sc_main/u_sc_ALU_wrapper_Top/u_ALU_wrapper/u_ALU_wrapper/iSel
#add wave -label iAB sim:/sc_main/u_sc_ALU_wrapper_Top/u_ALU_wrapper/u_ALU_wrapper/iAB
#add wave -label iOutSel sim:/sc_main/u_sc_ALU_wrapper_Top/u_ALU_wrapper/u_ALU_wrapper/iOutSel
#add wave -label oACC sim:/sc_main/u_sc_ALU_wrapper_Top/u_ALU_wrapper/u_ALU_wrapper/oACC
