#*******************************************************************************
# MTI simulation scrips for SystemC Co-Simulation with Verilog-6502
# Vendor: GoodKook
# Associated Filename: compile.do
# Purpose: SystemC testbench
# Revision History: 5, Jan. 2023
#********************************************************************************

onbreak {resume}

# create library
if [file exists work] {
    vdel -all
}
vlib work

# Verilog compile
vlog -reportprogress 300 -work work ../source/ALU.v
vlog -reportprogress 300 -work work ../source/cpu.v

# compile and link SC source files
#sccom -reportprogress -g -work work ../simulation/sc_mem.cpp -DCR_LF_LF -I ./mti_sim
sccom -reportprogress -g -work work ../simulation/sc_mem.cpp -DCR_LF_CR -I ./mti_sim
sccom -reportprogress -g -work work ../simulation/sc_main.cpp -I ./mti_sim

sccom -link

quit
