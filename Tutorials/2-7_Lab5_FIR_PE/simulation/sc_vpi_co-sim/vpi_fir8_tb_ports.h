//==================================================================
// Co-Simulation of Verilated+SystemC VPI+iVerilog
// Filename: vpi_fir8_tb_ports.h
// Author: GoodKook, goodkook@gmail.com
// History: 2024, Aug. 31
//

#ifndef VPI_FIR8_TB_PORTS_H
#define VPI_FIR8_TB_PORTS_H

// from Verilog
typedef struct tag_Input {
    unsigned long   sync_sc;
    unsigned long   eXout;
    unsigned long   eYout;
    unsigned long   eVld;
} IN_VECTOR;

// to Verilog
typedef struct tag_Output {
    unsigned long   clk;
    unsigned long   eXin;
    unsigned long   eYin;
    unsigned long   eRdy;
    unsigned long   end_of_sim;
} OUT_VECTOR;

#endif
