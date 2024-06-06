//
// Poorman's Standard-Emulator by GoodKook, goodkook@gmail.com
//
//  DUT: Loadable 8-bit counter.
//       Four sub-module LS163 are used
//

`ifdef ENT_ENP_CONTROL
module DUT(CLK, nCLR, nLOAD, Digit, ENP, ENT, Din, Dout, RCO);
    input           ENP, ENT;
`else
module DUT(CLK, nCLR, nLOAD, Digit, Din, Dout, RCO);
`endif
    input           CLK;
    input           nCLR;
    input           nLOAD;
    input  [1:0]    Digit;
    input  [3:0]    Din;
    output [15:0]   Dout;
    output          RCO;

    wire Full_0, Full_1, Full_2;
    
    LS163 u_LS163x0(
            .nCLR(nCLR),
            .nLOAD((nLOAD==1'b0 && Digit==2'b00)? 1'b0:1'b1),
            .Din(Din[3:0]),
            .CLK(CLK),
`ifdef ENT_ENP_CONTROL
            .ENP(ENP),
            .ENT(ENT),
`else
            .ENP(1'b1),
            .ENT(1'b1),
`endif
            .Dout(Dout[3:0]),
            .RCO(Full_0));

    LS163 u_LS163x1(
            .nCLR(nCLR),
            .nLOAD((nLOAD==1'b0 && Digit==2'b01)? 1'b0:1'b1),
            .Din(Din[3:0]),
            .CLK(CLK),
`ifdef ENT_ENP_CONTROL
            .ENP(ENP),
`else
            .ENP(1'b1),
`endif
            .ENT(Full_0),
            .Dout(Dout[7:4]),
            .RCO(Full_1));

    LS163 u_LS163x2(
            .nCLR(nCLR),
            .nLOAD((nLOAD==1'b0 && Digit==2'b10)? 1'b0:1'b1),
            .Din(Din[3:0]),
            .CLK(CLK),
`ifdef ENT_ENP_CONTROL
            .ENP(ENP),
`else
            .ENP(1'b1),
`endif
            .ENT(Full_1),
            .Dout(Dout[11:8]),
            .RCO(Full_2));

    LS163 u_LS163x3(
            .nCLR(nCLR),
            .nLOAD((nLOAD==1'b0 && Digit==2'b11)? 1'b0:1'b1),
            .Din(Din[3:0]),
            .CLK(CLK),
`ifdef ENT_ENP_CONTROL
            .ENP(ENP),
`else
            .ENP(1'b1),
`endif
            .ENT(Full_2),
            .Dout(Dout[15:12]),
            .RCO(RCO));
endmodule
