/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: n_dffrs_shifter.v
Purpose: N-Depth Shifter using sub-module "dffrs"
Revision History: Aug. 5, 2024
*******************************************************************************/

`define NUM_REG 4

module n_dffrs_shifter(clk, rst, din, qout);
input clk, rst;
input din;
output qout;

//wire x[`NUM_REG+1];

//assign x[0] = din;

//genvar i;
//generate
//    for (genvar i=1; i<=`NUM_REG; i++)
//    begin : gen_dffrs
    dffrs u_dffrs[`NUM_REG] (
        .clk(clk),
        .r(rst),
        .s(1'b1),
        .d(din),
        .q(qout));
//    end 
//endgenerate

//assign qout = x[`NUM_REG];

endmodule



