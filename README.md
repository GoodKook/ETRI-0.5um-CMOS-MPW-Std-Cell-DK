# ETRI 0.5um CMOS MPW Std-Cell DK
ETRI 0.5um CMOS MPW Std-Cell Design-Kit
----------------------------------------

Visit following blog page for more information,

https://fun-teaching-goodkook.blogspot.com/2023/12/etri-05u-cmos-v1a-2023-12-13.html

https://fun-teaching-goodkook.blogspot.com/2024/03/blog-post.html

* Note: Blog page is written in Korean. You may read via machine translation.

![STD-CELL_DFFSR_Layout](https://github.com/GoodKook/ETRI-0.5um-CMOS-MPW-Std-Cell-DK/assets/162967523/c59015a0-d943-4486-bb6c-dc7de91065b1)

![STD-CELL_DFFSR_Sch_1](https://github.com/GoodKook/ETRI-0.5um-CMOS-MPW-Std-Cell-DK/assets/162967523/a6d93666-142b-40f1-a1db-4e1213d0392a)

Tool Installation
-----------------

Change to tool installation script folder,

    $ cd ./Tools
    $ chmod +x *.sh

Install Pre-requisitive packages,

    $ ./prerequisites.sh

Yosys, RTL synthesizer,

    $ ./yosys_build.sh
    
GrayWolf, Auto-Placer,

    $ ./graywolf_build.sh
    
QRouter, Auto-Router,

    $ qrouter_build.sh

Magic, VLSI layout editor,

    $ ./magic_build.sh

iRSim, switch level simulator,

    $ ./irsim_build.sh

KLayout, layout tool,

    $ ./klayout_install.sh
    
Netgen, LVS & LVL Netlist compare,

    $ ./netgen_build.sh
    
Symbolic link 'digital_ETRI' to cell-library folder,

    $ ln -s digital_ETRI050_m2d digital_ETRI

QFlow with ETRI050 tech.,

    $ ./qflow-1.4.100_etri050_build.sh

ngSpice, SPICE circuit simulator,

    $ ./ngspice42_build.sh

XSchem, schematic entry,

    $ ./xschem_build.sh

iVerilog, Verilog Simulator,

    $ ./iverilog_build.sh

SystemC, C++ class library for system level simulation & modeling,

    $ ./systemc_build.sh
    
Verilator, Verilog to SystemC/C++ converter,

    $ ./verilator_build.sh

    
