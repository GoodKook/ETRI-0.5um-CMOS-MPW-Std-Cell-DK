//==================================================================
// Co-Simulation of SystemC VPI+iVerilog
// Filename: vpi_ALU8_Mult_tb_ports.h
// Author: GoodKook, goodkook@gmail.com
// History: 2025, Aug. 31
//

#ifndef VPI_ALU8_Mult_TB_PORTS_H
#define VPI_ALU8_Mult_TB_PORTS_H

// from Verilog TB (DUT's output ports)
typedef struct tag_Input
{
    unsigned long   sync_sc;
    unsigned long   ACC_o;
    unsigned long   Done_o;
} IN_VECTOR;

// to Verilog TB (DUT's input ports)
typedef struct tag_Output
{
    unsigned long   clk;
	unsigned long   reset;
    unsigned long   LoadA_i;
    unsigned long   LoadB_i;
    unsigned long   LoadCmd_i;
    unsigned long   ABCmd_i;
    unsigned long   end_of_sim;
} OUT_VECTOR;

#endif
