#*******************************************************************************
# MTI simulation scrips for SystemC Co-Simulation with ALU8
# Vendor: GoodKook
# Associated Filename: compile.do
# Purpose: SystemC testbench
# Revision History: Feb. 2024
#********************************************************************************

onbreak {resume}

# create library
if [file exists work] {
    vdel -all
}
vlib work

# Verilog compile
vlog -reportprogress 300 -work work ../../../digital_ETRI/etri05_stdcells.v
vlog -reportprogress 300 -work work ../synthesis/ALU_wrapper.v

# compile and link SC source files
sccom -reportprogress -g -work work sc_main.cpp -I . -I ./mti_sim

sccom -link

quit
