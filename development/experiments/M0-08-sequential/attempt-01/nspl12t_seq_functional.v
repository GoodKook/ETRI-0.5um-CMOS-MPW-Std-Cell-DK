// M0-08: authored zero-delay FUNCTIONAL contract for the four NSPL 12T
// sequential cells. Source/evidence and restrictions: decisions/002 and README.
// Binary CLK/R/S only; no timing, metastability, power or silicon guarantee.
// Compile instead of the four vendor modules, never alongside duplicates.
`timescale 1ns/1ps
module DFFPOSX1(input D, CLK, output reg Q);
  always @(posedge CLK) Q <= D;
endmodule

module DFFNEGX1(input D, CLK, output reg Q);
  always @(negedge CLK) Q <= D;
endmodule

module LATCHX1(input D, CLK, output reg Q);
  always @(*) if (CLK) Q <= D;
endmodule

module DFFSRX1(input D, CLK, R, S, output reg Q);
  reg previous_clk;
  // Observe BOTH control transitions: releasing R while S=0 must set Q
  // without waiting for a clock. Releasing a lone control must hold Q,
  // including while CLK=1, rather than sampling D on that release.
  // A clock history distinguishes an actual rising edge from control release.
  // Simultaneous control changes use the settled binary input tuple in this
  // ideal functional abstraction; physical release/collision timing is open.
  always @(CLK or R or S) begin
    if (R === 1'b0) Q <= 1'b0;
    else if (R !== 1'b1 || S !== 1'b1 && S !== 1'b0) Q <= 1'bx;
    else if (S === 1'b0) Q <= 1'b1;
    else if (CLK === 1'b1 && previous_clk === 1'b0) Q <= D;
    previous_clk = CLK;
  end
endmodule
