//=======================================================================
// Co-Simulation of SystemC VPI+iVerilog
// Project: pong game example step-by-step
// Filename: pong_SbS_TB.v
// Purpose: Verilog Testbench
// Author: GoodKook, goodkook@gmail.com
//

`timescale 1ns/1ps

module pong_SbS_TB;

    // from SystemC TB to DUT's input ports
    reg         clk;
    reg         reset;
    reg         busy;
    reg         up;
    reg         down;
    // from DUT's output ports to SystemC TB
    reg [6:0]   x_pos;
    reg [5:0]   y_pos;
    reg         pixel;
    reg         p_tick;

    pong_SbS u_pong_SbS (
        .clk(clk),
        .reset(reset),
        .x_pos(x_pos),
        .y_pos(y_pos),
        .pixel(pixel),
        .p_tick(p_tick),
        .busy(busy),
        .up(up),
        .down(down));

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
    // Testbench Positional Connection
    // See sc_pong_SbS_tb_tf() in "vpi_stub.cpp"
    initial begin
        $display("Icarus Verilog started");
        $dumpfile("pong_SbS_TB.vcd");
        $dumpvars(2, u_pong_SbS);

        $sc_pong_SbS_tb(
            // Simulation control from SC-TB
            sync_sc, // Trigger SystemC TB
            end_of_sim,
            // from SystemC TB to DUT's input ports
            clk,
            reset,
            busy,
            up,
            down,
            // from DUT's output ports to SystemC TB
            x_pos,
            y_pos,
            pixel,
            p_tick);
    end

    always @(end_of_sim)
    if (end_of_sim)
        $finish;

endmodule
