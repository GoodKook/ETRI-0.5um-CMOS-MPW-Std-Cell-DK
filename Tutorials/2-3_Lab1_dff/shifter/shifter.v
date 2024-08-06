/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: shifter.v
Purpose: Shifter, Procedural Assignment
Revision History: Aug. 1, 2024
*******************************************************************************/

`define NUM_REG 4

module shifter(clk, rst, din, qout);
input clk, rst;
input [7:0] din;
output [7:0] qout;

reg qout;
reg [7:0] x[4];

always @(posedge clk or negedge rst) // edge trigger, Async rst
begin
    if (!rst) // Reset
    begin
        x[0]<= 0;
        x[1]<= 0;
        x[2]<= 0;
        x[3]<= 0;
    end
    else
    begin
        x[0] <= din;
        x[1] <= x[0];
        x[2] <= x[1];
        x[3] <= x[2];
        qout <= x[3];
    end
end

endmodule

