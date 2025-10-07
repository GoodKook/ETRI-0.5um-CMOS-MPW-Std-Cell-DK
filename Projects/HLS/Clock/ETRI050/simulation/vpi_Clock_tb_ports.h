//==================================================================
// Co-Simulation of SystemC VPI+iVerilog
// Filename: vpi_Clock_tb_ports.h
// Author: GoodKook, goodkook@gmail.com
// History: 2025, Aug. 31
//

#ifndef VPI_Clock_TB_PORTS_H
#define VPI_Clock_TB_PORTS_H

// from Verilog TB (DUT's output ports)
typedef struct tag_Input
{
    unsigned long   sync_sc;
    unsigned long   hh;
    unsigned long   mm;
    unsigned long   ss;
} IN_VECTOR;

// to Verilog TB (DUT's input ports)
typedef struct tag_Output
{
    unsigned long   ap_clk;
    unsigned long   ap_rst;
    unsigned long   clear;
    unsigned long   start_r;
    unsigned long   end_of_sim;
} OUT_VECTOR;

#endif
