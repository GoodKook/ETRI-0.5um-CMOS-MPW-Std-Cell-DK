//==================================================================
// Co-Simulation of SystemC VPI+iVerilog
// Filename: vpi_apple_1_tb_ports.h
// Author: GoodKook, goodkook@gmail.com
// History: 2025, Aug. 31
//

#ifndef VPI_apple_1_TB_PORTS_H
#define VPI_apple_1_TB_PORTS_H

// from Verilog TB (DUT's output ports)
typedef struct tag_Input
{
    unsigned long   sync_sc;
    unsigned long   AB;
    unsigned long   DO;
    unsigned long   WE;
} IN_VECTOR;

// to Verilog TB (DUT's input ports)
typedef struct tag_Output
{
    unsigned long   clk;
    unsigned long   reset;
    unsigned long   DI;
    unsigned long   IRQ;
    unsigned long   NMI;
    unsigned long   RDY;
    unsigned long   en_woz;
    unsigned long   end_of_sim;
} OUT_VECTOR;

#endif
