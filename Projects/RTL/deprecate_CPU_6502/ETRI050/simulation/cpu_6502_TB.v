//=======================================================================
// Co-Simulation of SystemC VPI+iVerilog
// Project: Vitis-HLS
// Filename: cpu_6502_TB.v
// Purpose: Verilog Testbench
// Author: GoodKook, goodkook@gmail.com
//

`timescale 1ns/1ps

`define N_PE_ARRAY  8

module cpu_6502_TB;

    // from SystemC TB to DUT's input ports
    reg clk;            // CPU clock 
    reg reset;          // reset signal
    reg [7:0] DI;       // data in, read bus
    reg IRQ;            // interrupt request
    reg NMI;            // non-maskable interrupt request
    reg RDY;            // Ready signal. Pauses CPU when RDY=0 
    // from DUT's output ports to SystemC TB
    reg [15:0] AB;      // address bus
    reg [7:0] DO;       // data out, write bus
    reg WE;             // write enable

    // Instantiate DUT
    cpu_6502 u_cpu_6502 (
        .clk(clk),      // CPU clock 
        .reset(reset),  // reset signal
        .AB(AB),        // address bus
        .DI(DI),        // data in, read bus
        .DO(DO),        // data out, write bus
        .WE(WE),        // write enable
        .IRQ(IRQ),      // interrupt request
        .NMI(NMI),      // non-maskable interrupt request
        .RDY(RDY));     // Ready signal. Pauses CPU when RDY=0 

    //------------------------------------------
    parameter CLOCK_PERIOD=100;
    reg sync_sc;
    reg end_of_sim;
    initial begin: Trigger_SystemC_TB
        sync_sc = 0;
        end_of_sim = 0;
        forever begin
            //#CLOCK_PERIOD sync_sc = 1;
            //#0  sync_sc = 0;
            #0 sync_sc = 1;
            #CLOCK_PERIOD  sync_sc = 0;
        end
    end

    //------------------------------------------
    initial begin: VPI_Task_SystemC_TB
        $display("Icarus Verilog started");
        $dumpfile("cpu_6502_TB.vcd");
        $dumpvars(1, u_cpu_6502);

        // Testbench Positional Connection
        // See sc_cpu_6502_tb_tf() in "vpi_stub.cpp"
        $sc_cpu_6502_tb(
            // Simulation control from SC-TB
            sync_sc, // Trigger SystemC TB
            end_of_sim,
            // from SystemC TB to DUT's input ports
            clk,    // CPU clock 
            reset,  // reset signal
            DI,     // data in, read bus
            IRQ,    // interrupt request
            NMI,    // non-maskable interrupt request
            RDY,    // Ready signal. Pauses CPU when RDY=0 
            // from DUT's output ports to SystemC TB
            AB,     // address bus
            DO,     // data out, write bus
            WE);    // write enable
    end

    always @(end_of_sim)
    if (end_of_sim)
        $finish;

endmodule
