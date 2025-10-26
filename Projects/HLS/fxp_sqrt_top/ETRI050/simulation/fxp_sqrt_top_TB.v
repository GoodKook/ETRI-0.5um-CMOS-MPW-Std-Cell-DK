//=======================================================================
// Co-Simulation of SystemC VPI+iVerilog
// Project: Vitis-HLS
// Filename: fxp_sqrt_top_TB.v
// Purpose: Verilog Testbench
// Author: GoodKook, goodkook@gmail.com
//

`timescale 1ns/1ps

module fxp_sqrt_top_TB;

    // from SystemC TB to DUT's input ports
    reg         ap_clk;
    reg         ap_rst;
    reg         ap_start;
    reg [23:0]  in_val;

    // from DUT's output ports to SystemC TB
    reg         ap_done;
    reg         ap_idle;
    reg         ap_ready;
    reg [27:0]  ap_return;

    // Instantiate DUT
    fxp_sqrt_top u_fxp_sqrt_top (
        .ap_clk(ap_clk),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .in_val(in_val),
        .ap_return(ap_return));

    //--------------------------------------------------------------
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

    //--------------------------------------------------------------
    initial begin: VPI_Task_SystemC_TB
        $display("Icarus Verilog started");
        $dumpfile("fxp_sqrt_top_TB.vcd");
        $dumpvars(2, u_fxp_sqrt_top);

        // Testbench Positional Connection
        // See sc_fxp_sqrt_top_tb_tf() in "vpi_stub.cpp"
        $sc_fxp_sqrt_top_tb(
            // Simulation control from SC-TB
            sync_sc, // Trigger SystemC TB
            end_of_sim,
            // from SystemC TB to DUT's input ports
            ap_clk,
            ap_rst,
            ap_start,
            in_val,
            // from DUT's output ports to SystemC TB
            ap_done,
            ap_idle,
            ap_ready,
            ap_return);
    end

    always @(end_of_sim)
    if (end_of_sim)
        $finish;

endmodule
