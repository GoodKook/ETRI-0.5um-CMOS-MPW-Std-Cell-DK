//==================================================================
// Co-Simulation of SystemC VPI+iVerilog
// Filename: vpi_space_invaders_engine_glcd_tb_ports.h
// Author: GoodKook, goodkook@gmail.com
// History: 2026, Jul. 31
//

#ifndef VPI_space_invaders_engine_glcd_TB_PORTS_H
#define VPI_space_invaders_engine_glcd_TB_PORTS_H

// from Verilog TB (DUT's output ports)
typedef struct tag_Input
{
    unsigned long   sync_sc;
    unsigned long   v_sync;
    unsigned long   lcd_data;
    unsigned long   clk_o;
} IN_VECTOR;

// to Verilog TB (DUT's input ports)
typedef struct tag_Output
{
    unsigned long   clk;
    unsigned long   rst_n;
    unsigned long   btn_left;
    unsigned long   btn_right;
    unsigned long   btn_fire;
    unsigned long   end_of_sim;
} OUT_VECTOR;

#endif
