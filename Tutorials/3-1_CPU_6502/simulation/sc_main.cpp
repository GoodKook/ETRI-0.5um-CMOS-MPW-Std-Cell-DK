/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_main.cpp
Purpose: sc_main()
Revision History: Jan. 1, 2024
------------------------------------------------------------
Build:
    for Functional simulation
    $ verilator --sc -Wall --top-module cpu --exe --build -CFLAGS -g \
        ../source/cpu.v ../source/ALU.v sc_main.cpp sc_mem.cpp
        
    for Netlist simulation (Zero-Delay Functional)
    $ verilator --sc --top-module cpu --exe --build \
        ../../../digital_ETRI/khu_etri05_stdcells_func.v ../synthesis/cpu.v sc_main.cpp

Run:
    obj_dir/Vcpu
*******************************************************************************/
#include "sc_CPU_6502_Top.h"

int sc_main(int argc, char** argv)
{
    //Verilated::commandArgs(argc, argv);

    sc_CPU_6502_Top u_sc_CPU_6502_Top("u_sc_CPU_6502_Top");
    
    //sc_start(10, SC_MS);
    sc_start();

    return 0;
}
