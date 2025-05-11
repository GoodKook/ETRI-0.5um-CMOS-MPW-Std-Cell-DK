//=======================================================================
// Co-Simulation of Verilated+SystemC VPI+iVerilog
// Filename: test_fir8.v
// Purpose: Verilog Testbench
// Author: GoodKook, goodkook@gmail.com
//

`timescale 1ns/1ns

module test_fir8;

    // from SystemC TB to DUT
    reg         clk;
    reg  [5:0]  Cin;
    reg  [3:0]  Xin;
    reg  [3:0]  Yin;
    reg         Rdy;
    // from DUT to SystemC TB
    wire [3:0]  Xout;
    wire [3:0]  Yout;
    wire        Vld;

    // Instantiate DUT
    fir_pe u_fir_pe (
        .clk(clk),
        .Cin(6'd4),
        .Xin(Xin),
        .Xout(Xout),
        .Yin(Yin),
        .Yout(Yout),
        .Rdy(Rdy),
        .Vld(Vld));

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

    initial begin: VPI_Task_SystemC_TB
        $display("Icarus Verilog started");
        $dumpfile("test_fir8.vcd");
        $dumpvars(1, u_fir_pe);

        // Testbench Positional Connection
        // See sc_fir8_tb_tf() in "vpi_stub.cpp"
        $sc_fir8_tb(
            // Simulation control from SC-TB
            sync_sc, // Trigger SystemC TB
            end_of_sim,
            // Stimulus from SC-TB to DUT
            clk,
            Xin,
            Yin,
            // Result from DUT to SC-TB
            Xout,
            Yout,
            Rdy,
            Vld);
    //  #100000 $finish;
    end

    always @(end_of_sim)
    if (end_of_sim)
        $finish;

endmodule
