// Filename : fir_pe.v
// Purpose  : Processing Element for FIR filter
// Author   : goodkook@gmail.com
// History  : Mar. 2024, First Release

`define Y_CONCURRENT_PROC

/* verilator lint_off UNUSEDSIGNAL */
/* verilator lint_off UNDRIVEN */

module fir_pe (clk, Cin, Xin, Xout, Yin, Yout);
input           clk;
input   [ 7:0]  Cin;
input   [ 7:0]  Xin;
output  [ 7:0]  Xout;
input   [15:0]  Yin;
output  [15:0]  Yout;

    reg     [ 7:0]  Xout;
    reg     [15:0]  Yout;
    reg     [15:0]  rYin;
    reg     [15:0]  mul;

    always @(posedge clk)
    begin : Multiply
        mul <= Xin * Cin; // Multiply
    end

    always @(posedge clk)
    begin : Hold_Yin
        rYin <= Yin; // Hold 1-Clock
    end

    always @(posedge clk)
    begin : Registered_Out
        Xout  <= Xin;
        Yout  <= mul + rYin;    // Accumulation
    end

endmodule
