//=======================================================================
// Co-Simulation of SystemC VPI+iVerilog
// Project: Vitis-HLS
// Filename: ALU8_Mult_TB.v
// Purpose: Verilog Testbench
// Author: GoodKook, goodkook@gmail.com
//

`timescale 1ns/1ps

`define N_PE_ARRAY  8

module ALU8_Mult_TB;

    // from SystemC TB to DUT's input ports
	reg clk, reset, LoadA_i, LoadB_i, LoadCmd_i;
    reg [7:0]   ABCmd_i;
    // from DUT's output ports to SystemC TB
    reg [7:0] ACC_o;
    reg Done_o;

    // DUT -------------------------------------
    ALU8_Mult u_ALU8_Mult(
        .clk(clk),
        .reset(reset),
        .ABCmd_i(ABCmd_i),
        .LoadA_i(LoadA_i),
        .LoadB_i(LoadB_i),
        .LoadCmd_i(LoadCmd_i),
        .ACC_o(ACC_o),
        .Done_o(Done_o));

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
        $dumpfile("ALU8_Mult_TB.vcd");
        $dumpvars(1, u_ALU8_Mult);

        // Testbench Positional Connection
        // See sc_ALU8_Mult_tb_tf() in "vpi_stub.cpp"
        $sc_ALU8_Mult_tb(
            // Simulation control from SC-TB
            sync_sc, // Trigger SystemC TB
            end_of_sim,
            // from SystemC TB to DUT's input ports
            clk,
            reset,
            ABCmd_i,
            LoadA_i,
            LoadB_i,
            LoadCmd_i,
            // from DUT's output ports to SystemC TB
            ACC_o,
            Done_o);
    end

    always @(end_of_sim)
    if (end_of_sim)
        $finish;

endmodule
