/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: fir8.v
Purpose: 8-tab FIR filter, Pipelined Architecture
Revision History: Aug. 5, 2024
*******************************************************************************/

`define N_PE_ARRAY  8

module fir8(clk, Xin, Xout, Yin, Yout);
input           clk;
input  [ 7:0]   Xin;
output [ 7:0]   Xout;
input  [15:0]   Yin;
output [15:0]   Yout;

wire [ 7:0] X[`N_PE_ARRAY+1];
wire [15:0] Y[`N_PE_ARRAY+1];

localparam [7:0] C[`N_PE_ARRAY] = {4, 12, 25, 34, 34, 25, 12, 4 };
//localparam [7:0] C[`N_PE_ARRAY] = {3, 12, 25, 34, 34, 25, 12, 4 };	// Faulty const.at C[0]

assign X[0] = Xin;
assign Y[0] = Yin;

for(genvar i=0; i<`N_PE_ARRAY; i++)
begin : gen_fir_pe
    fir_pe u_fir_pe (
        .clk(clk),
        .Cin(C[i]),
        .Xin(X[i]),
        .Xout(X[i+1]),
        .Yin(Y[i]),
        .Yout(Y[i+1]));
end

assign Xout = X[`N_PE_ARRAY];
assign Yout = Y[`N_PE_ARRAY];

endmodule
