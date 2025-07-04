/**************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: dff.v
Purpose: D-FlipFlop at RTL
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
//

/* verilator lint_off BLKSEQ */

module dff(clk, d, q);
input clk, d;
output q;

reg q;
reg q1;

always @(posedge clk) // edge trigger
begin
        q1 <= d;
        q <= q1;
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
