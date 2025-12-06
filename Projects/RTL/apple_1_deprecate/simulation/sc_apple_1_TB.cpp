/*******************************************************************************
Poorman's Standard-Emulator
---------------------------
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: sc_apple_1_TB.cpp
Purpose: Testbench
Revision History: Sep. 2025
*******************************************************************************/
#include "sc_apple_1_TB.h"

//
// Environment: Reset/RDY/IRQ/MNI
//
void sc_apple_1_TB::reset_generator(void)
{
    en_woz.write(1);
    IRQ.write(0);
    NMI.write(0);
    RDY.write(0);
    reset.write(1);
    wait(clk.posedge_event());
    wait(clk.posedge_event());
    RDY.write(1);
    wait(clk.posedge_event());
    wait(clk.posedge_event());
    wait(clk.posedge_event());
    wait(clk.posedge_event());
    wait(clk.posedge_event());
    wait(clk.negedge_event());  // avoid setup violation when timing sim.
    reset.write(0);
}

