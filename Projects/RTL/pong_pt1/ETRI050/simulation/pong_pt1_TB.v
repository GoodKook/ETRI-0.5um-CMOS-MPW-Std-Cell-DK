//=======================================================================
// Co-Simulation of SystemC VPI+iVerilog
// Project: Vitis-HLS
// Filename: pong_pt1_TB.v
// Purpose: Verilog Testbench
// Author: GoodKook, goodkook@gmail.com
//

`timescale 1ns/1ps

`define N_PE_ARRAY  8

module pong_pt1_TB;

    // from SystemC TB to DUT's input ports
    reg clk;
    reg reset;
    reg enable;
    reg up;
    reg down;
    // from DUT's output ports to SystemC TB
    reg p_tick;
    reg hsync;
    reg vsync;
    reg rgb;

    //------------------------------------------
    // Instantiate DUT
    pong_pt1 u_pong_pt1(
        .clk(clk),
        .reset(reset),
        .enable(enable),
        .up(up),
        .down(down),
        .p_tick(p_tick),
        .hsync(hsync),
        .vsync(vsync),
        .rgb(rgb));

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
        $dumpfile("pong_pt1_TB.vcd");
        $dumpvars(2, u_pong_pt1);

        // Testbench Positional Connection
        // See sc_pong_pt1_tb_tf() in "vpi_stub.cpp"
        $sc_pong_pt1_tb(
            // Simulation control from SC-TB
            sync_sc, // Trigger SystemC TB
            end_of_sim,
            // from SystemC TB to DUT's input ports
            clk,
            reset,
            enable,
            up,
            down,
            // from DUT's output ports to SystemC TB
            p_tick,
            hsync,
            vsync,
            rgb);
    end

    always @(end_of_sim)
    if (end_of_sim)
        $finish;

endmodule
