/**************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: dff.v
Purpose: D-FlipFlop at Gate Level
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
/* verilator lint_off UNOPTFLAT */
/* verilator lint_off DECLFILENAME */
module d_latch(clk, d, q);
input clk, d;
output q;

wire _q, q_bar, nand0, nand1;

assign q = _q;

assign nand0 = ~(d & clk);
assign nand1 = ~(~d & clk);

assign _q = ~(nand0 & q_bar);
assign q_bar = ~(nand1 & _q);
endmodule

module dff(clk, d, q);
    input clk,d;
    output q;
    wire _q;

    d_latch master(.d(d),  .clk(~clk), .q(_q));
    d_latch slave (.d(_q), .clk(clk),  .q(q));
endmodule

