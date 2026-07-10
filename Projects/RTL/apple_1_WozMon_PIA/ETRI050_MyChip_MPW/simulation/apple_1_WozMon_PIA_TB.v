//=======================================================================
// Co-Simulation of SystemC VPI+iVerilog
// Project: Vitis-HLS
// Filename: apple_1_WozMon_PIA_TB.v
// Purpose: Verilog Testbench
// Author: GoodKook, goodkook@gmail.com
//

`timescale 1ns/1ps

`define N_PE_ARRAY  8

module apple_1_WozMon_PIA_TB;

    // from SystemC TB to DUT's input ports
    reg         clk;
    reg         reset;
    reg [7:0]   DI;
    reg         IRQ;
    reg         NMI;
    reg         RDY;
    reg         kbd_rdy;
    reg [6:0]   kbd_data;   // ASCII
    reg         dsp_ack;
    // from DUT's output ports to SystemC TB
    reg [15:0]  AB;
    reg [7:0]   DO;
    reg         WE;
    reg         kbd_ack;
    reg         dsp_rdy;
    reg [6:0]   dsp_data;   // ASCII

    //------------------------------------------
    // Instantiate DUT
    apple_1_WozMon_PIA u_apple_1_WozMon_PIA
    (
        .clk(clk),      // CPU clock 
        .reset(reset),  // reset signal
        .AB(AB),        // address bus
        .DI(DI),        // data in, read bus
        .DO(DO),        // data out, write bus
        .WE(WE),        // write enable
        .IRQ(IRQ),      // interrupt request
        .NMI(NMI),      // non-maskable interrupt request
        .RDY(RDY),      // Ready signal. Pauses CPU when RDY=0
        .kbd_rdy(kbd_rdy),
        .kbd_ack(kbd_ack),
        .kbd_data(kbd_data),
        .dsp_rdy(dsp_rdy),
        .dsp_ack(dsp_ack),
        .dsp_data(dsp_data)
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
        $dumpfile("apple_1_WozMon_PIA_TB.vcd");
        $dumpvars(1, u_apple_1_WozMon_PIA);
`endif
        // Testbench Positional Connection
        // See sc_apple_1_WozMon_PIA_tb_tf() in "vpi_stub.cpp"
        $sc_apple_1_WozMon_PIA_tb(
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
            kbd_rdy,
            kbd_data,
            dsp_ack,
            // from DUT's output ports to SystemC TB
            AB,
            DO,
            WE,
            kbd_ack,
            dsp_rdy,
            dsp_data
        );
    end

    always @(end_of_sim)
    if (end_of_sim)
        $finish;

endmodule
