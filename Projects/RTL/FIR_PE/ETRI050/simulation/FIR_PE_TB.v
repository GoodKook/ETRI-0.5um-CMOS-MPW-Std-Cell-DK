//=======================================================================
// Co-Simulation of SystemC VPI+iVerilog
// Project: Vitis-HLS
// Filename: FIR_PE_TB.v
// Purpose: Verilog Testbench
// Author: GoodKook, goodkook@gmail.com
//

`timescale 1ns/1ps

`define N_PE_ARRAY  8

module FIR_PE_TB;

    // from SystemC TB to DUT's input ports
    reg clk;
    reg Rdy;
    reg [3:0] Xin;
    reg [3:0] Yin;
    // from DUT's output ports to SystemC TB
    reg Vld;
    reg [3:0] Xout;
    reg [3:0] Yout;

    //------------------------------------------
    // Instantiate DUT in ARRAY
    wire _Rdy[`N_PE_ARRAY+1];
    wire _Vld[`N_PE_ARRAY];
    wire [ 3:0] _Xin[`N_PE_ARRAY+1];
    wire [ 3:0] _Xout[`N_PE_ARRAY];
    wire [ 3:0] _Yin[`N_PE_ARRAY+1];
    wire [ 3:0] _Yout[`N_PE_ARRAY];
    wire [ 5:0] _Cin[`N_PE_ARRAY];
    //localparam [7:0] _Cin[`N_PE_ARRAY] = {4, 12, 25, 34, 34, 25, 12, 4 };
    assign _Cin[0] = 6'd4;
    assign _Cin[1] = 6'd12;
    assign _Cin[2] = 6'd25;
    assign _Cin[3] = 6'd34;
    assign _Cin[4] = 6'd34;
    assign _Cin[5] = 6'd25;
    assign _Cin[6] = 6'd12;
    assign _Cin[7] = 6'd4;

    for(genvar i=0; i<`N_PE_ARRAY; i++)
    begin : gen_FIR_PE
    FIR_PE u_FIR_PE (
        .clk(clk),
        .Rdy(_Rdy[i]),
        .Cin(_Cin[i]),
        .Xin(_Xin[i]),
        .Yin(_Yin[i]),
        .Vld(_Vld[i]),
        .Xout(_Xout[i]),
        .Yout(_Yout[i]));
    assign _Rdy[i+1] = _Vld[i];
    assign _Xin[i+1] = _Xout[i];
    assign _Yin[i+1] = _Yout[i];
    end

    //------------------------------------------
    // Inputs to ARRAY
    assign _Xin[0] = Xin;
    assign _Yin[0] = Yin;
    assign _Rdy[0] = Rdy;
    //------------------------------------------
    // Outputs from ARRAY
    assign Xout = _Xout[`N_PE_ARRAY-1];
    assign Yout = _Yout[`N_PE_ARRAY-1];
    assign Vld  = _Rdy[`N_PE_ARRAY-1];

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
    initial begin: VPI_Task_SystemC_TB
        $display("Icarus Verilog started");
        $dumpfile("FIR_PE_TB.vcd");
        $dumpvars(1, gen_FIR_PE[0].u_FIR_PE);
        $dumpvars(1, gen_FIR_PE[1].u_FIR_PE);
        $dumpvars(1, gen_FIR_PE[2].u_FIR_PE);
        $dumpvars(1, gen_FIR_PE[3].u_FIR_PE);
        $dumpvars(1, gen_FIR_PE[4].u_FIR_PE);
        $dumpvars(1, gen_FIR_PE[5].u_FIR_PE);
        $dumpvars(1, gen_FIR_PE[6].u_FIR_PE);
        $dumpvars(1, gen_FIR_PE[7].u_FIR_PE);

//        for(integer j=0; j<`N_PE_ARRAY; j++)
//        begin: FIR_PE_Dump
//        $dumpvars(2, gen_FIR_PE[j].u_FIR_PE); // Index must be constant
//        end

        // Testbench Positional Connection
        // See sc_FIR_PE_tb_tf() in "vpi_stub.cpp"
        $sc_FIR_PE_tb(
            // Simulation control from SC-TB
            sync_sc, // Trigger SystemC TB
            end_of_sim,
            // from SystemC TB to DUT's input ports
            clk,
            Rdy,
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
