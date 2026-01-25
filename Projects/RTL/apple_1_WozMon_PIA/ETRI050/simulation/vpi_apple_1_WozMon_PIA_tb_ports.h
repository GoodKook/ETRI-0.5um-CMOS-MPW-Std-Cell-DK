//==================================================================
// Co-Simulation of SystemC VPI+iVerilog
// Filename: vpi_apple_1_WozMon_PIA_tb_ports.h
// Author: GoodKook, goodkook@gmail.com
// History: 2025, Aug. 31
//

#ifndef VPI_apple_1_WozMon_PIA_TB_PORTS_H
#define VPI_apple_1_WozMon_PIA_TB_PORTS_H

// from Verilog TB (DUT's output ports)
typedef struct tag_Input
{
    unsigned long   sync_sc;
    unsigned long   AB;
    unsigned long   DO;
    unsigned long   WE;
    unsigned long   kbd_ack;
    unsigned long   dsp_rdy;
    unsigned long   dsp_data;
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
    unsigned long   kbd_rdy;
    unsigned long   kbd_data;
    unsigned long   dsp_ack;
    unsigned long   end_of_sim;
} OUT_VECTOR;

#endif
