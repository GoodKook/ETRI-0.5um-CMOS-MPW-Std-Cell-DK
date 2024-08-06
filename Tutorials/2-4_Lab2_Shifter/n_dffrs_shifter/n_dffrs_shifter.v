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

wire _din[`NUM_REG];
wire _qout[`NUM_REG];

assign _din[0] = din;
for(genvar i=1; i<`NUM_REG; i++)
begin: gen_assign
    assign _din[i] = _qout[i-1];
end
assign qout = _qout[`NUM_REG-1];

    dffrs u_dffrs[`NUM_REG] (
        .clk(clk),
        .r(rst),
        .s(1'b1),
        .d(_din),
        .q(_qout));

endmodule



