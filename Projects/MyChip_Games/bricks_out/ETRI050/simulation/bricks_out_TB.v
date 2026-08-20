//=======================================================================
// Co-Simulation of SystemC VPI+iVerilog
// Project: Dino Run game example step-by-step
// Filename: bricks_out_TB.v
// Purpose: Verilog Testbench
// Author: GoodKook, goodkook@gmail.com
//

`timescale 1ns/1ps

module bricks_out_TB;

    // from SystemC TB to DUT's input ports
    reg         clk;
    reg         reset;
    reg         game_new;
    reg         btn_left;
    reg         btn_right;
    // from DUT's output ports to SystemC TB
    reg         v_sync;
    reg         pixel;
    reg         p_tick;
    reg         game_over;
    reg         game_complete;
    
    bricks_out u_bricks_out(
        .clk(clk),
        .reset(reset),
        .v_sync(v_sync),
        .pixel(pixel),
        .p_tick(p_tick),
        .btn_left(btn_left),
        .btn_right(btn_right),
        .game_over(game_over),
        .game_complete(game_complete),
        .game_new(game_new));

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
    // See sc_bricks_out_tb_tf() in "vpi_stub.cpp"
    initial begin
        $display("Icarus Verilog started");
        $dumpfile("bricks_out_TB.vcd");
        $dumpvars(2, u_bricks_out);

        $sc_bricks_out_tb(
            // Simulation control from SC-TB
            sync_sc, // Trigger SystemC TB
            end_of_sim,
            // from SystemC TB to DUT's input ports
            clk,
            reset,
            game_new,
            btn_left,
            btn_right,
            // from DUT's output ports to SystemC TB
            v_sync,
            pixel,
            p_tick,
            game_over,
            game_complete);
    end

    always @(end_of_sim)
    if (end_of_sim)
        $finish;

endmodule
