/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: beh_shifter.v
Purpose: Behavioral Shifter
Revision History: Aug. 5, 2024
*******************************************************************************/

`define NUM_REG 4
`define WIDTH 8

module beh_shifter(clk, rst, din, qout);
input clk, rst;
input  [`WIDTH-1:0]   din;
output [`WIDTH-1:0]  qout;

initial begin
$display ("\nBehavioral Shifter: Width =%2d, Length =%2d", `WIDTH, `NUM_REG);
end

reg [`WIDTH-1:0]    shifter[`NUM_REG+1];

assign shifter[0] = din;
assign qout = shifter[`NUM_REG];

always @(posedge clk or negedge rst)
begin
    if (!rst)
        for (integer i=0; i<`NUM_REG; i++)
            shifter[i] <= `WIDTH'd0;
    else
`ifdef FORWARD_ORDER
        for (integer i=0; i<`NUM_REG; i++)
`elsif REVERSE_ORDER
        for (integer i=`NUM_REG-1; i>=0; i--)
`endif
            shifter[i+1] <= shifter[i];
end

endmodule
