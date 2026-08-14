//=======================================================================
// Co-Simulation of SystemC VPI+iVerilog
// Project: Dino Run game example step-by-step
// Filename: dino_run_TB.v
// Purpose: Verilog Testbench
// Author: GoodKook, goodkook@gmail.com
//

`timescale 1ns/1ps

module dino_run_TB;

    // from SystemC TB to DUT's input ports
    reg         clk;
    reg         reset;
    reg [7:0]   option;
    reg         jump;
    // from DUT's output ports to SystemC TB
    reg         v_sync;
    reg         pixel;
    reg         p_tick;
    reg         game_over;

    dino_run u_dino_run(
        .clk(clk),
        .reset(reset),
        .v_sync(v_sync),
        .pixel(pixel),
        .p_tick(p_tick),
        .option(option),
        .jump(jump),
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
    // See sc_dino_run_tb_tf() in "vpi_stub.cpp"
    initial begin
        $display("Icarus Verilog started");
        $dumpfile("dino_run_TB.vcd");
        $dumpvars(2, u_dino_run);

        $sc_dino_run_tb(
            // Simulation control from SC-TB
            sync_sc, // Trigger SystemC TB
            end_of_sim,
            // from SystemC TB to DUT's input ports
            clk,
            reset,
            option,
            jump,
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
