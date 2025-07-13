/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: dff.v
Purpose: D-FlipFlop in Behavioral Verilog
Revision History: Aug. 1, 2024
*******************************************************************************/

module dff(clk, d, q);
input clk, d;
output q;

reg q;

//assign q = (clk)? d : q;    // Circular combinational logic

//always @(posedge clk) // edge trigger
//always @(clk or d)
always @(clk)
begin
    if (clk)
        q <= d;
end

endmodule
