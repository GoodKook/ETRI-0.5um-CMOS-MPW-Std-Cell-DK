/**************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: dff.v
Purpose: D-FlipFlop
Revision History: Aug. 1, 2024
***************************************/
//       D-FlipFlop
//       +---------+
//       |  [dff]  |
//    ----D       Q---
//       |         |
//       |         |
//       |         |
//    --->CLK      |
//       |         |
//       +---------+

module dff(clk, d, q);
input clk, d;
output q;

reg q;

//always @(posedge clk or posedge d) // edge trigger
always @(posedge clk) // edge trigger
begin
        q <= d;
end

//assign q = (clk)? d : q;    // Circular combinational logic

//always @(clk)   // edge trigger
//begin
//    if (clk)
//        q <= d;
//end

//always @(clk, d)

//always @(clk or d)    // level trigger
//begin
//    if (clk)
//        q <= d;
//end

endmodule
