/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: shifter.v
Purpose: Shifter, Procedural Assignment
Revision History: Aug. 1, 2024
*******************************************************************************/

`define FOR_LOOP

`define NUM_REG 4
`define BIT_WIDTH   8

module shifter(clk, rst, din, qout);
input clk, rst;
input [`BIT_WIDTH-1:0] din;
output [`BIT_WIDTH-1:0] qout;

reg qout;
reg [`BIT_WIDTH-1:0] x[`NUM_REG];

`ifdef FOR_LOOP
always @(posedge clk or negedge rst) // edge trigger, Async rst
begin
    if (!rst) // Reset
    begin
        for (integer i = 0; i < `NUM_REG; i++)
            x[i] <= 0;
    end
    else
    begin
        for (integer i = `NUM_REG-1; i > 0; i--)
            x[i] <= x[i-1];

        x[0] <= din;
        qout <= x[3];
    end
end
`else
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
`endif

endmodule
