/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: fir8.v
Purpose: 8-tab FIR filter, Pipelined Architecture
Revision History: Aug. 5, 2024
                  Feb. 2, 2025 / Revision for Yosys Synthesis
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

//localparam [7:0] C[`N_PE_ARRAY] = {4, 12, 25, 34, 34, 25, 12, 4 };
wire [ 7:0] C[`N_PE_ARRAY];
assign C[0] = 8'd4;
assign C[1] = 8'd12;
assign C[2] = 8'd25;
assign C[3] = 8'd34;
assign C[4] = 8'd34;
assign C[5] = 8'd25;
assign C[6] = 8'd12;
assign C[7] = 8'd4;

assign X[0] = Xin;
assign Y[0] = Yin;

`ifdef USE_GENVAR
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
`else
// Some RTL Synthesizer DON'T SUPPORT genvar-Loop
    fir_pe u_fir_pe0 (.clk(clk), .Cin(C[0]), .Xin(X[0]), .Xout(X[1]), .Yin(Y[0]), .Yout(Y[1]));
    fir_pe u_fir_pe1 (.clk(clk), .Cin(C[1]), .Xin(X[1]), .Xout(X[2]), .Yin(Y[1]), .Yout(Y[2]));
    fir_pe u_fir_pe2 (.clk(clk), .Cin(C[2]), .Xin(X[2]), .Xout(X[3]), .Yin(Y[2]), .Yout(Y[3]));
    fir_pe u_fir_pe3 (.clk(clk), .Cin(C[3]), .Xin(X[3]), .Xout(X[4]), .Yin(Y[3]), .Yout(Y[4]));
    fir_pe u_fir_pe4 (.clk(clk), .Cin(C[4]), .Xin(X[4]), .Xout(X[5]), .Yin(Y[4]), .Yout(Y[5]));
    fir_pe u_fir_pe5 (.clk(clk), .Cin(C[5]), .Xin(X[5]), .Xout(X[6]), .Yin(Y[5]), .Yout(Y[6]));
    fir_pe u_fir_pe7 (.clk(clk), .Cin(C[6]), .Xin(X[6]), .Xout(X[7]), .Yin(Y[6]), .Yout(Y[7]));
    fir_pe u_fir_pe6 (.clk(clk), .Cin(C[7]), .Xin(X[7]), .Xout(X[8]), .Yin(Y[7]), .Yout(Y[8]));
`endif

assign Xout = X[`N_PE_ARRAY];
assign Yout = Y[`N_PE_ARRAY];

endmodule


