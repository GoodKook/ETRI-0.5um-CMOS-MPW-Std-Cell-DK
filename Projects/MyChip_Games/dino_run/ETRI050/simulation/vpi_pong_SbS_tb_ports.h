//==================================================================
// Co-Simulation of SystemC VPI+iVerilog
// Filename: vpi_pong_SbS_tb_ports.h
// Author: GoodKook, goodkook@gmail.com
// History: 2025, Aug. 31
//

#ifndef VPI_pong_SbS_TB_PORTS_H
#define VPI_pong_SbS_TB_PORTS_H

// from Verilog TB (DUT's output ports)
typedef struct tag_Input
{
    unsigned long   sync_sc;
    unsigned long   x_pos;
    unsigned long   y_pos;
    unsigned long   pixel;
    unsigned long   p_tick;
} IN_VECTOR;

// to Verilog TB (DUT's input ports)
typedef struct tag_Output
{
    unsigned long   clk;
    unsigned long   reset;
    unsigned long   busy;
    unsigned long   up;
    unsigned long   down;
    unsigned long   end_of_sim;
} OUT_VECTOR;

#endif
