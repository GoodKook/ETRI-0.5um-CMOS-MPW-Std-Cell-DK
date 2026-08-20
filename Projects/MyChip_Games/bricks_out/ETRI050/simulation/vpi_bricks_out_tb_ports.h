//==================================================================
// Co-Simulation of SystemC VPI+iVerilog
// Filename: vpi_bricks_out_tb_ports.h
// Author: GoodKook, goodkook@gmail.com
// History: 2026, Jul. 31
//

#ifndef VPI_bricks_out_TB_PORTS_H
#define VPI_bricks_out_TB_PORTS_H

// from Verilog TB (DUT's output ports)
typedef struct tag_Input
{
    unsigned long   sync_sc;
    unsigned long   v_sync;
    unsigned long   pixel;
    unsigned long   p_tick;
    unsigned long   game_over;
    unsigned long   game_complete;
} IN_VECTOR;

// to Verilog TB (DUT's input ports)
typedef struct tag_Output
{
    unsigned long   clk;
    unsigned long   reset;
    unsigned long   btn_left;
    unsigned long   btn_right;
    unsigned long   game_new;
    unsigned long   end_of_sim;
} OUT_VECTOR;

#endif
