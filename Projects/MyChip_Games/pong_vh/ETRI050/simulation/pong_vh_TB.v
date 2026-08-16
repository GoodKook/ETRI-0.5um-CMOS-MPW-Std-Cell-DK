//=======================================================================
// Co-Simulation of SystemC VPI+iVerilog
// Project: Dino Run game example step-by-step
// Filename: pong_vh_TB.v
// Purpose: Verilog Testbench
// Author: GoodKook, goodkook@gmail.com
//

`timescale 1ns/1ps

module pong_vh_TB;

    // from SystemC TB to DUT's input ports
    reg         clk;
    reg         reset;
    reg [7:0]   option;
    reg         btn_up;
    reg         btn_down;
    reg         btn_left;
    reg         btn_right;
    // from DUT's output ports to SystemC TB
    reg         v_sync;
    reg         pixel;
    reg         p_tick;
    reg         game_over;

    pong_vh u_pong_vh(
        .clk(clk),
        .reset(reset),
        .v_sync(v_sync),
        .pixel(pixel),
        .p_tick(p_tick),
        .option(option),
        .btn_up(btn_up),
        .btn_down(btn_down),
        .btn_left(btn_left),
        .btn_right(btn_right),
        .game_over(game_over));

    //------------------------------------------
    parameter CLOCK_PERIOD=100;
    reg sync_sc;
    reg end_of_sim;
    initial begin: Trigger_SystemC_TB
        sync_sc = 0;
        end_of_sim = 0;
        forever begin
            #0 sync_sc = 1;
            #CLOCK_PERIOD  sync_sc = 0;
        end
    end

    //------------------------------------------
    // Testbench Positional Connection
    // See sc_pong_vh_tb_tf() in "vpi_stub.cpp"
    initial begin
        $display("Icarus Verilog started");
        $dumpfile("pong_vh_TB.vcd");
        $dumpvars(2, u_pong_vh);

        $sc_pong_vh_tb(
            // Simulation control from SC-TB
            sync_sc, // Trigger SystemC TB
            end_of_sim,
            // from SystemC TB to DUT's input ports
            clk,
            reset,
            btn_up,
            btn_down,
            btn_left,
            btn_right,
            option,
            // from DUT's output ports to SystemC TB
            v_sync,
            pixel,
            p_tick,
            game_over);
    end

    always @(end_of_sim)
    if (end_of_sim)
        $finish;

endmodule
