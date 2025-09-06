//=======================================================================
// Co-Simulation of SystemC VPI+iVerilog
// Project: Vitis-HLS
// Filename: basic_loops_TB.v
// Purpose: Verilog Testbench
// Author: GoodKook, goodkook@gmail.com
//

`timescale 1ns/1ns

module basic_loops_TB;

    // from SystemC TB to DUT's input ports
    reg ap_clk;
    reg ap_rst;
    reg ap_start;
    reg [7:0] A_q0;

    // from DUT's output ports to SystemC TB
    reg ap_done;
    reg ap_idle;
    reg ap_ready;
    reg [3:0] A_address0;
    reg [12:0] ap_return;

    // Instantiate DUT
    basic_loops u_basic_loops (
        .ap_clk(ap_clk),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .A_address0(A_address0),
        .A_ce0(A_ce0),
        .A_q0(A_q0),
        .ap_return(ap_return));

    //--------------------------------------------------------------
    parameter CLOCK_PERIOD=50;
    reg sync_sc;
    reg end_of_sim;
    initial begin: Trigger_SystemC_TB
        sync_sc = 0;
        end_of_sim = 0;
        forever begin
            #CLOCK_PERIOD sync_sc = 1;
            #0  sync_sc = 0;
        end
    end

    //--------------------------------------------------------------
    initial begin: VPI_Task_SystemC_TB
        $display("Icarus Verilog started");
        $dumpfile("basic_loops_TB.vcd");
        $dumpvars(1, u_basic_loops);

        // Testbench Positional Connection
        // See sc_basic_loops_tb_tf() in "vpi_stub.cpp"
        $sc_basic_loops_tb(
            // Simulation control from SC-TB
            sync_sc, // Trigger SystemC TB
            end_of_sim,
            // from SystemC TB to DUT's input ports
            ap_clk,
            ap_rst,
            ap_start,
            A_q0,
            // from DUT's output ports to SystemC TB
            ap_done,
            ap_idle,
            ap_ready,
            A_address0,
            A_ce0,
            ap_return);
        // #100000 $finish;
    end

    always @(end_of_sim)
    if (end_of_sim)
        $finish;

endmodule
