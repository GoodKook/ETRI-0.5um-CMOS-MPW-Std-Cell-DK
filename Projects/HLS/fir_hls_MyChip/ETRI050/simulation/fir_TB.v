//=======================================================================
// Co-Simulation of SystemC VPI+iVerilog
// Project: FIR8_c_untimed_Vitis-HLS
// Filename: fir_TB.v
// Purpose: Verilog Testbench
// Author: GoodKook, goodkook@gmail.com
//

`timescale 1ns/1ns

module test_fir;

    // from SystemC TB to DUT's input ports
    reg clk;
    reg rst;
    reg [7:0] x;

    // from DUT's output ports to SystemC TB
    reg ready;
    reg [7:0] y;

    // Instantiate DUT
    fir_hls u_fir (
        .clk(clk),
        .ready(ready),
        .rst(rst),
        .x(x),
        .y(y));

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
        $dumpfile("test_fir.vcd");
        $dumpvars(1, u_fir);

        // Testbench Positional Connection
        // See sc_fir_tb_tf() in "vpi_stub.cpp"
        $sc_fir_tb(
            // Simulation control from SC-TB
            sync_sc, // Trigger SystemC TB
            end_of_sim,
            // from SystemC TB to DUT's input ports
            clk,
            rst,
            x,
            // from DUT's output ports to SystemC TB
            ready,
            y);
        // #100000 $finish;
    end

    always @(end_of_sim)
    if (end_of_sim)
        $finish;

endmodule

