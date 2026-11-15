module shift_reg_8bit (clk,
    din,
    rst_n,
    dout);
 input clk;
 input din;
 input rst_n;
 output [7:0] dout;

 wire _0_;
 wire _1_;
 wire _2_;
 wire _3_;
 wire _4_;
 wire _5_;
 wire _6_;
 wire _7_;
 wire clknet_0_clk;
 wire clknet_1_0__leaf_clk;
 wire clknet_1_1__leaf_clk;

 TIEHIX1 _10_ (.Y(_2_));
 TIEHIX1 _11_ (.Y(_3_));
 TIEHIX1 _12_ (.Y(_4_));
 TIEHIX1 _13_ (.Y(_5_));
 TIEHIX1 _14_ (.Y(_6_));
 TIEHIX1 _15_ (.Y(_7_));
 DFFSRX1 _16_ (.CLK(clknet_1_0__leaf_clk),
    .D(din),
    .Q(dout[0]),
    .R(rst_n),
    .S(_7_));
 DFFSRX1 _17_ (.CLK(clknet_1_1__leaf_clk),
    .D(dout[6]),
    .Q(dout[7]),
    .R(rst_n),
    .S(_6_));
 DFFSRX1 _18_ (.CLK(clknet_1_1__leaf_clk),
    .D(dout[5]),
    .Q(dout[6]),
    .R(rst_n),
    .S(_5_));
 DFFSRX1 _19_ (.CLK(clknet_1_1__leaf_clk),
    .D(dout[4]),
    .Q(dout[5]),
    .R(rst_n),
    .S(_4_));
 DFFSRX1 _20_ (.CLK(clknet_1_1__leaf_clk),
    .D(dout[3]),
    .Q(dout[4]),
    .R(rst_n),
    .S(_3_));
 DFFSRX1 _21_ (.CLK(clknet_1_0__leaf_clk),
    .D(dout[2]),
    .Q(dout[3]),
    .R(rst_n),
    .S(_2_));
 DFFSRX1 _22_ (.CLK(clknet_1_0__leaf_clk),
    .D(dout[1]),
    .Q(dout[2]),
    .R(rst_n),
    .S(_1_));
 DFFSRX1 _23_ (.CLK(clknet_1_0__leaf_clk),
    .D(dout[0]),
    .Q(dout[1]),
    .R(rst_n),
    .S(_0_));
 TIEHIX1 _8_ (.Y(_0_));
 TIEHIX1 _9_ (.Y(_1_));
 CLKBUFX2 clkbuf_0_clk (.A(clk),
    .Y(clknet_0_clk));
 CLKBUFX2 clkbuf_1_0__f_clk (.A(clknet_0_clk),
    .Y(clknet_1_0__leaf_clk));
 CLKBUFX2 clkbuf_1_1__f_clk (.A(clknet_0_clk),
    .Y(clknet_1_1__leaf_clk));
endmodule
