/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_main.cpp
Purpose: sc_main()
Revision History: Dec 15 2023,
------------------------------------------------------------
Build:
    for Functional simulation
    $ verilator --sc -Wall --top-module ALU_wrapper --exe --build -CFLAGS -std=c++17 \
        ../source/ALU.v ../source/array8.v ../source/ALU_wrapper.v sc_main.cpp
        
    for Netlist simulation (Zero-Delay Functional)
    $ verilator --sc --top-module ALU_wrapper --exe --build -CFLAGS -std=c++17 \
        ../../../digital_ETRI/khu_etri05_stdcells_func.v ../synthesis/ALU_wrapper.v sc_main.cpp

Run:
    obj_dir/VALU_wrapper
*******************************************************************************/
#include "sc_ALU_wrapper_top.h"

int sc_main(int argc, char** argv)
{
    //Verilated::commandArgs(argc, argv);

    sc_ALU_wrapper_Top u_sc_ALU_wrapper_Top("u_sc_ALU_wrapper_Top");
    
    sc_start();

    return 0;
}
