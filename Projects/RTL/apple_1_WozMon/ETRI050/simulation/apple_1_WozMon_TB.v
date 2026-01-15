//=======================================================================
// Co-Simulation of SystemC VPI+iVerilog
// Project: Apple-1
// Filename: apple_1_WozMon_TB.v
// Purpose: Verilog Testbench
// Author: GoodKook, goodkook@gmail.com
//

`timescale 1ns/1ps

`define N_PE_ARRAY  8

module apple_1_WozMon_TB;

    // from SystemC TB to DUT's input ports
    reg clk;
    reg reset;
    reg [7:0] DI;
    reg IRQ;
    reg NMI;
    reg RDY;
    reg en_woz;
    // from DUT's output ports to SystemC TB
    reg [15:0] AB;
    reg [7:0] DO;
    reg WE;

    //------------------------------------------
    // Instantiate DUT
    apple_1_WozMon u_apple_1_WozMon
    (
        .clk(clk),    // CPU clock 
        .reset(reset),  // reset signal
        .AB(AB),     // address bus
        .DI(DI),     // data in, read bus
        .DO(DO),     // data out, write bus
        .WE(WE),     // write enable
        .IRQ(IRQ),    // interrupt request
        .NMI(NMI),    // non-maskable interrupt request
        .RDY(RDY),    // Ready signal. Pauses CPU when RDY=0
        .en_woz(en_woz) // Enable Woz-Mon ROM
    );

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
`ifdef VCD_TRACE
        $dumpfile("apple_1_WozMon_TB.vcd");
        $dumpvars(1, u_apple_1_WozMon);
`endif
        // Testbench Positional Connection
        // See sc_apple_1_WozMon_tb_tf() in "vpi_stub.cpp"
        $sc_apple_1_WozMon_tb(
            // Simulation control from SC-TB
            sync_sc, // Trigger SystemC TB
            end_of_sim,
            // from SystemC TB to DUT's input ports
            clk,
            reset,
            DI,
            IRQ,
            NMI,
            RDY,
            en_woz,
            // from DUT's output ports to SystemC TB
            AB,
            DO,
            WE);
    end

    always @(end_of_sim)
    if (end_of_sim)
        $finish;

endmodule
