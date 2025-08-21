/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: rsff.v
Purpose: RS-Latch in Behavioral Verilog (ILLEGAL!)
Revision History: Aug. 1, 2024
*******************************************************************************/

/* verilator lint_off UNOPTFLAT */

module rsff(r, s, q, q_bar);
input   r, s;
output  q, q_bar;

wire _q, _q_bar;

assign q = _q;
assign q_bar = _q_bar;

// ILLEGAL: Circular combinational logic generate Recursive events
assign _q = ~(r & _q_bar);
assign _q_bar = ~(s & _q);

endmodule
