//==================================================================
// Co-Simulation of SystemC VPI+iVerilog
// Filename: vpi_FIR8_tb_ports.h
// Author: GoodKook, goodkook@gmail.com
// History: 2025, Aug. 31
//

#ifndef VPI_FIR8_TB_PORTS_H
#define VPI_FIR8_TB_PORTS_H

// from Verilog TB (DUT's output ports)
typedef struct tag_Input
{
    unsigned long   sync_sc;

    unsigned long   ap_done;
    unsigned long   ap_idle;
    unsigned long   ap_ready;
    unsigned long   y_ap_vld;
    unsigned long   y;
} IN_VECTOR;

// to Verilog TB (DUT's input ports)
typedef struct tag_Output
{
    unsigned long   ap_clk;
    unsigned long   ap_rst;
    unsigned long   ap_start;
    unsigned long   x;

    unsigned long   end_of_sim;
} OUT_VECTOR;

#endif

