//=======================================================================
// Co-Simulation of SystemC VPI+iVerilog
// Project: Vitis-HLS
// Filename: Clock_TB.v
// Purpose: Verilog Testbench
// Author: GoodKook, goodkook@gmail.com
//

`timescale 1ns/1ps

module Clock_TB;

    // from SystemC TB to DUT's input ports
    reg ap_clk;
    reg ap_rst;
    reg reset;
    reg start_r;

    // from DUT's output ports to SystemC TB
    reg [7:0] hh;
    reg [7:0] mm;
    reg [7:0] ss;

    // Instantiate DUT
    Clock u_Clock (
        .ap_clk(ap_clk),
        .ap_rst(ap_rst),
        .reset(reset),
        .start_r(start_r),
        .hh(hh),
        .mm(mm),
        .ss(ss));

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
        $dumpfile("Clock_TB.vcd");
        $dumpvars(2, u_Clock);

        // Testbench Positional Connection
        // See sc_Clock_tb_tf() in "vpi_stub.cpp"
        $sc_Clock_tb(
            // Simulation control from SC-TB
            sync_sc, // Trigger SystemC TB
            end_of_sim,
            // from SystemC TB to DUT's input ports
            ap_clk,
            ap_rst,
            reset,
            start_r,
            // from DUT's output ports to SystemC TB
            hh,
            mm,
            ss);
    end

    always @(end_of_sim)
    if (end_of_sim)
        $finish;

endmodule
