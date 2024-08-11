#*******************************************************************************
# MTI simulation scrips for SystemC Co-Simulation with FIR8
# Vendor: GoodKook
# Associated Filename: compile.do
# Purpose: SystemC testbench
# Revision History: Mar. 2024
#********************************************************************************

onbreak {resume}

# create library
if [file exists work] {
    vdel -all
}
vlib work

# Verilog compile
vlog -reportprogress 300 -work work ../source/fir_pe.v

# compile and link SC source files
sccom -reportprogress -g -work work \
        ../../0_algorithm/c_untimed/fir8.cpp \
        ./sc_fir8_tb.cpp -DMTI_SIM \
        ./sc_main.cpp -DMTI_SIM \
        -I. -I./mti_sim \
        -I../../0_algorithm/c_untimed
#        -I../../0_algorithm/sc_timed

sccom -link

quit
