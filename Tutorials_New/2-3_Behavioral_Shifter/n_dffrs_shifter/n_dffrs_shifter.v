/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: n_dffrs_shifter.v
Purpose: N-Depth Shifter using sub-module "dffrs"
Revision History: Aug. 5, 2024
*******************************************************************************/

`define NUM_REG 4

`ifdef GEN_REPEATIVE

module n_dffrs_shifter(clk, rst, din, qout);
input clk, rst;
input din;
output qout;

initial begin
$display ("\nBuilding Shift Register:");
$display ("\n\tInstantiate Sub-Module as Repeative Generation");
end

wire _din[`NUM_REG+1];

assign _din[0] = din;
for(genvar i=0; i<`NUM_REG; i++)
begin: gen_dffrs
    dffrs u_dffrs (
        .clk(clk),
        .r(rst),
        .s(1'b1),
        .d(_din[i]),
        .q(_din[i+1]));
end
assign qout = _din[`NUM_REG];


endmodule

`elsif INST_ARRAY

module n_dffrs_shifter(clk, rst, din, qout);
input clk, rst;
input din;
output qout;

wire _din[`NUM_REG];
wire _qout[`NUM_REG];

initial begin
$display ("\nBuilding Shift Register:");
$display ("\n\tInstantiate Sub-Module as ARRAY");
end

assign _din[0] = din;
for(genvar i=1; i<`NUM_REG; i++)
begin: align_nets
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


`elsif GEN_REPEATIVE_ARRAY

module n_dffrs_shifter(clk, rst, din, qout);
input clk, rst;
input din;
output qout;

initial begin
$display ("\nBuilding Shift Register:");
$display ("\n\tInstantiate Sub-Module as Repeative generation & Array");
end

wire _din[`NUM_REG];
wire _qout[`NUM_REG];

assign _din[0] = din;

for(genvar i=0; i<`NUM_REG; i++)
begin: gen_array
    assign _din[i+1] = _qout[i];

    dffrs u_dffrs[i+1] (
        .clk(clk),
        .r(rst),
        .s(1'b1),
        .d(_din),
        .q(_qout));
end

assign qout = _qout[`NUM_REG-1];


endmodule

`endif

