# ETRI 0.5um CMOS MPW Std-Cell DK
ETRI 0.5um CMOS MPW Std-Cell Design-Kit
----------------------------------------

Visit following blog page for more information,

https://fun-teaching-goodkook.blogspot.com/2023/12/etri-05u-cmos-v1a-2023-12-13.html

https://fun-teaching-goodkook.blogspot.com/2024/03/blog-post.html

* Note: Blog page is written in Korean. You may read via machine translation.

![STD-CELL_DFFSR_Layout](https://github.com/GoodKook/ETRI-0.5um-CMOS-MPW-Std-Cell-DK/assets/162967523/c59015a0-d943-4486-bb6c-dc7de91065b1)

![STD-CELL_DFFSR_Sch_1](https://github.com/GoodKook/ETRI-0.5um-CMOS-MPW-Std-Cell-DK/assets/162967523/a6d93666-142b-40f1-a1db-4e1213d0392a)

Installation
------------

Symbolic link 'digital_ETRI' to cell-library folder,

    ln -s digital_ETRI050_m2d digital_ETRI

Make scripts as executable,

    chmod +x ./scripts/*.sh;chmod +x ./scripts/*.py;chmod +x ./Tools/*.sh

Change to tool installation script folder,

    cd ./Tools

Install Pre-requisitive packages,

    ./prerequisites.sh

Yosys, RTL synthesizer, https://github.com/YosysHQ

    ./yosys_build.sh
    
GrayWolf, Auto-Placer, https://github.com/rubund/graywolf

    ./graywolf_build.sh

QRouter, Auto-Router, https://github.com/RTimothyEdwards/qrouter

    ./qrouter_build.sh

Magic, VLSI layout editor, https://github.com/RTimothyEdwards/magic

    ./magic_build.sh

iRSim, switch level simulator, https://github.com/RTimothyEdwards/irsim

    ./irsim_build.sh

KLayout, layout tool, https://www.klayout.de/

    ./klayout_install.sh
    
Netgen, LVS & LVL Netlist compare, https://github.com/RTimothyEdwards/netgen

    ./netgen_build.sh

QFlow with ETRI050 tech., https://github.com/RTimothyEdwards/qflow

    ./qflow-1.4.100_etri050_build.sh

ngSpice, SPICE circuit simulator, https://ngspice.sourceforge.io/

    ./ngspice42_build.sh

XSchem, schematic entry, https://xschem.sourceforge.io/stefan/index.html

    ./xschem_build.sh

iVerilog, Verilog Simulator, https://github.com/steveicarus/iverilog

    ./iverilog_build.sh

SystemC, C++ class library for system level simulation & modeling, https://systemc.org/

    ./systemc_build.sh
    
Verilator, Verilog to SystemC/C++ converter, https://www.veripool.org/verilator/

    ./verilator_build.sh

gtkWave, digital waveform viewer, https://gtkwave.sourceforge.net/

    ./gtkwave_install.sh

Find example design using ETRI 0.5um Std-Cell DK at following link,

    https://github.com/GoodKook/ETRI-0.5u-CMOS-MPW-DK-Example--ALU8

The example includes synthesis, P&R, layout generation, LVS and RTL simulation at system-level using Verilated SystemC testbench.

Have fun!

Kook, goodkook(at)gmail.com
