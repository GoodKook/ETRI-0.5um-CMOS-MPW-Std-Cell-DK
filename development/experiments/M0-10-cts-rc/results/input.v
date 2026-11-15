/* Verilog module written by vlog2Verilog (qflow) */

module shift_reg_8bit(
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
    .CLK(clk),
    .D(dout[4]),
    .Q(dout[5]),
    .R(rst_n),
    .S(_4_)
);

DFFSRX1 _16_ (
    .CLK(clk),
    .D(din),
    .Q(dout[0]),
    .R(rst_n),
    .S(_7_)
);

TIEHIX1 _13_ (
    .Y(_5_)
);

TIEHIX1 _10_ (
    .Y(_2_)
);

DFFSRX1 _21_ (
    .CLK(clk),
    .D(dout[2]),
    .Q(dout[3]),
    .R(rst_n),
    .S(_2_)
);

DFFSRX1 _18_ (
    .CLK(clk),
    .D(dout[5]),
    .Q(dout[6]),
    .R(rst_n),
    .S(_5_)
);

TIEHIX1 _15_ (
    .Y(_7_)
);

TIEHIX1 _9_ (
    .Y(_1_)
);

TIEHIX1 _12_ (
    .Y(_4_)
);

DFFSRX1 _23_ (
    .CLK(clk),
    .D(dout[0]),
    .Q(dout[1]),
    .R(rst_n),
    .S(_0_)
);

DFFSRX1 _20_ (
    .CLK(clk),
    .D(dout[3]),
    .Q(dout[4]),
    .R(rst_n),
    .S(_3_)
);

DFFSRX1 _17_ (
    .CLK(clk),
    .D(dout[6]),
    .Q(dout[7]),
    .R(rst_n),
    .S(_6_)
);

TIEHIX1 _14_ (
    .Y(_6_)
);

TIEHIX1 _8_ (
    .Y(_0_)
);

TIEHIX1 _11_ (
    .Y(_3_)
);

DFFSRX1 _22_ (
    .CLK(clk),
    .D(dout[1]),
    .Q(dout[2]),
    .R(rst_n),
    .S(_1_)
);

endmodule
