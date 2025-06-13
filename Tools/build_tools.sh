#!/usr/bin/bash

./z3_build.sh
./sdl_install.sh
./sdl2_install.sh
./python_libs.sh
./gsl_build.sh
./graywolf_build.sh
./irsim_build.sh
./magic_build.sh
./klayout_install.sh
./netgen_build.sh
./qrouter_build.sh
./ngspice44_build.sh
./xschem_build.sh
./gtkwave_install.sh
./yosys_build.sh
#./yosys-f4pga-plugins.sh
./systemc_build.sh
./iverilog_build.sh
./verilator_build.sh
./qflow-1.4.100_etri050_build.sh

echo ""
echo "Installed Tools are ....."
echo "--------------------------"
echo "z3:        Problem Solver"
echo "SDL2:      Simple Direct Layer"
echo "gsl:       GNU Scientific Library"
echo "graywolf:  GrayWolf Auto Placer"
echo "qrouter:   Auto-Router"
echo "irsim:     IRSim Switching Level Simulator"
echo "magic:     VLSI Layout Tool"
echo "klayout:   Layout Tool"
echo "netgen:    NetGen Layout vs Schematic compare"
echo "ngspice42: SPICE simulator"
echo "xschem:    XSchem Schematic entry tool"
echo "systemc:   SystemC"
echo "iverilog:  iVerilog HDL simulator"
echo "Verilator: Verilog to C++/SystemC converter"
echo "gtkwave:   gtkWave Digital waveform viewer"
echo "yosys:     Yosys RTL Synthesizer"
echo "QFlow:     qflow-1.4.100_etri050"

