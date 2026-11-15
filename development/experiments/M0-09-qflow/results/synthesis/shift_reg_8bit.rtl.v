/* Verilog module written by vlog2Verilog (qflow) */
/* With explicit power connections */

module shift_reg_8bit(
    inout VDD,
    inout VSS,
    input clk,
    input rst_n,
    input din,
    output [7:0] dout
);

wire rst_n ;
wire [7:0] dout ;
wire _7_ ;
wire _4_ ;
wire _1_ ;
wire clk ;
wire _6_ ;
wire _3_ ;
wire _0_ ;
wire _5_ ;
wire din ;
wire _2_ ;

DFFSRX1 _19_ (
    .VSS(VSS),
    .VDD(VDD),
    .CLK(clk),
    .D(dout[4]),
    .Q(dout[5]),
    .R(rst_n),
    .S(_4_)
);

DFFSRX1 _16_ (
    .VSS(VSS),
    .VDD(VDD),
    .CLK(clk),
    .D(din),
    .Q(dout[0]),
    .R(rst_n),
    .S(_7_)
);

TIEHIX1 _13_ (
    .VSS(VSS),
    .VDD(VDD),
    .Y(_5_)
);

TIEHIX1 _10_ (
    .VSS(VSS),
    .VDD(VDD),
    .Y(_2_)
);

DFFSRX1 _21_ (
    .VSS(VSS),
    .VDD(VDD),
    .CLK(clk),
    .D(dout[2]),
    .Q(dout[3]),
    .R(rst_n),
    .S(_2_)
);

DFFSRX1 _18_ (
    .VSS(VSS),
    .VDD(VDD),
    .CLK(clk),
    .D(dout[5]),
    .Q(dout[6]),
    .R(rst_n),
    .S(_5_)
);

TIEHIX1 _15_ (
    .VSS(VSS),
    .VDD(VDD),
    .Y(_7_)
);

TIEHIX1 _9_ (
    .VSS(VSS),
    .VDD(VDD),
    .Y(_1_)
);

TIEHIX1 _12_ (
    .VSS(VSS),
    .VDD(VDD),
    .Y(_4_)
);

DFFSRX1 _23_ (
    .VSS(VSS),
    .VDD(VDD),
    .CLK(clk),
    .D(dout[0]),
    .Q(dout[1]),
    .R(rst_n),
    .S(_0_)
);

DFFSRX1 _20_ (
    .VSS(VSS),
    .VDD(VDD),
    .CLK(clk),
    .D(dout[3]),
    .Q(dout[4]),
    .R(rst_n),
    .S(_3_)
);

DFFSRX1 _17_ (
    .VSS(VSS),
    .VDD(VDD),
    .CLK(clk),
    .D(dout[6]),
    .Q(dout[7]),
    .R(rst_n),
    .S(_6_)
);

TIEHIX1 _14_ (
    .VSS(VSS),
    .VDD(VDD),
    .Y(_6_)
);

TIEHIX1 _8_ (
    .VSS(VSS),
    .VDD(VDD),
    .Y(_0_)
);

TIEHIX1 _11_ (
    .VSS(VSS),
    .VDD(VDD),
    .Y(_3_)
);

DFFSRX1 _22_ (
    .VSS(VSS),
    .VDD(VDD),
    .CLK(clk),
    .D(dout[1]),
    .Q(dout[2]),
    .R(rst_n),
    .S(_1_)
);

endmodule
