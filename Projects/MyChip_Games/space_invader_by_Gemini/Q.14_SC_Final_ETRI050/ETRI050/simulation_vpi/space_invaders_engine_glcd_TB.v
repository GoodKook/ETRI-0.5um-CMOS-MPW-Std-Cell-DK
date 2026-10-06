//=======================================================================
// Co-Simulation of SystemC VPI+iVerilog
// Project: Dino Run game example step-by-step
// Filename: space_invaders_engine_glcd_TB.v
// Purpose: Verilog Testbench
// Author: GoodKook, goodkook@gmail.com
//

`timescale 1ns/1ps

module space_invaders_engine_glcd_TB;

    // from SystemC TB to DUT's input ports
    reg clk;
    reg rst_n;
    reg btn_left;
    reg btn_right;
    reg btn_fire;
    // from DUT's output ports to SystemC TB
    reg v_sync; 
    reg lcd_data;      
    reg clk_o;

    space_invaders_engine_glcd u_space_invaders_engine_glcd(
        .clk(clk),
        .rst_n(rst_n),
        .btn_left(btn_left),
        .btn_right(btn_right),
        .btn_fire(btn_fire),
        .v_sync(v_sync),
        .lcd_data(lcd_data),
        .clk_o(clk_o));

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
    // See sc_space_invaders_engine_glcd_tb_tf() in "vpi_stub.cpp"
    initial begin
        $display("Icarus Verilog started");
        $dumpfile("space_invaders_engine_glcd_TB.vcd");
        $dumpvars(2, u_space_invaders_engine_glcd);

        $sc_space_invaders_engine_glcd_tb(
            // Simulation control from SC-TB
            sync_sc, // Trigger SystemC TB
            end_of_sim,
            // from SystemC TB to DUT's input ports
            clk,
            rst_n,
            btn_left,
            btn_right,
            btn_fire,
            // from DUT's output ports to SystemC TB
            v_sync,
            lcd_data,
            clk_o);
    end

    always @(end_of_sim)
    if (end_of_sim)
        $finish;

endmodule
