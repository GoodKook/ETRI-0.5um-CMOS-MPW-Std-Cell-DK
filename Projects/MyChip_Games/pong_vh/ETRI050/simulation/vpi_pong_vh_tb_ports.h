//==================================================================
// Co-Simulation of SystemC VPI+iVerilog
// Filename: vpi_pong_vh_tb_ports.h
// Author: GoodKook, goodkook@gmail.com
// History: 2026, Jul. 31
//

#ifndef VPI_pong_vh_TB_PORTS_H
#define VPI_pong_vh_TB_PORTS_H

// from Verilog TB (DUT's output ports)
typedef struct tag_Input
{
    unsigned long   sync_sc;
    unsigned long   v_sync;
    unsigned long   pixel;
    unsigned long   p_tick;
    unsigned long   game_over;
} IN_VECTOR;

// to Verilog TB (DUT's input ports)
typedef struct tag_Output
{
    unsigned long   clk;
    unsigned long   reset;
    unsigned long   option;
    unsigned long   btn_up;
    unsigned long   btn_down;
    unsigned long   btn_left;
    unsigned long   btn_right;
    unsigned long   end_of_sim;
} OUT_VECTOR;

#endif
