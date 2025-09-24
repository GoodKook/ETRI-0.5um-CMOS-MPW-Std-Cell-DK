//=======================================================================
// Co-Simulation of SystemC VPI+iVerilog
// Project: Vitis-HLS
// Filename: TOP_MODULE_TB.v
// Purpose: Verilog Testbench
// Author: GoodKook, goodkook@gmail.com
//

`timescale 1ns/1ps

module TOP_MODULE_TB;

    // from SystemC TB to DUT's input ports
    reg clk;
    reg Rdy;
    reg [5:0] Cin;
    reg [3:0] Xin;
    reg [3:0] Yin

    // from DUT's output ports to SystemC TB
    reg Vld;
    reg [3:0] Xout;
    reg [3:0] Yout;

    // Instantiate DUT
    TOP_MODULE u_TOP_MODULE (
        .clk(clk),
        .Rdy(Rdy),
        .Cin(Cin),
        .Xin(Xin),
        .Yin(Yin),
        .Vld(Vld),
        .Xout(Xout),
        .Yout(Yout));

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
        $dumpfile("TOP_MODULE_TB.vcd");
        $dumpvars(2, u_TOP_MODULE);

        // Testbench Positional Connection
        // See sc_TOP_MODULE_tb_tf() in "vpi_stub.cpp"
        $sc_TOP_MODULE_tb(
            // Simulation control from SC-TB
            sync_sc, // Trigger SystemC TB
            end_of_sim,
            // from SystemC TB to DUT's input ports
            clk,
            Rdy,
            Cin,
            Xin,
            Yin,
            // from DUT's output ports to SystemC TB
            Vld,
            Xout,
            Yout);
    end

    always @(end_of_sim)
    if (end_of_sim)
        $finish;

endmodule
