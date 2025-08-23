/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_main.cpp
Purpose: sc_main()
Revision History: Aug. 1, 2024
*******************************************************************************/
#include "sc_beh_shifter_TB.h"

#include <verilated.h>
#include <verilated_vcd_sc.h>

int sc_main(int argc, char** argv)
{
    //Verilated::commandArgs(argc, argv);
    Verilated::traceEverOn(true);
    VerilatedVcdSc* tfp;    // Verilator VCD

    sc_beh_shifter_TB u_sc_beh_shifter_TB("u_sc_beh_shifter_TB");
    sc_start(SC_ZERO_TIME);

    tfp = new VerilatedVcdSc;
    u_sc_beh_shifter_TB.u_Vbeh_shifter->trace(tfp, 99);  // Trace 99 levels of hierarchy
    tfp->open("sc_beh_shifter_TB.vcd");

    //sc_start(10, SC_MS);
    sc_start();

    tfp->close();
    return 0;
}
