//==================================================================
// Co-Simulation of SystemC VPI+iVerilog
// Filename: vpi_fir_tb_ports.h
// Author: GoodKook, goodkook@gmail.com
// History: 2024, Aug. 31
//

#ifndef VPI_FIR_TB_PORTS_H
#define VPI_FIR_TB_PORTS_H

// from Verilog TB (DUT's output ports)
typedef struct tag_Input
{
    unsigned long   sync_sc;
    unsigned long   ready;
    unsigned long   y;
} IN_VECTOR;

// to Verilog TB (DUT's input ports)
typedef struct tag_Output
{
    unsigned long   clk;
    unsigned long   rst;
    unsigned long   x;
    unsigned long   end_of_sim;
} OUT_VECTOR;

#endif
