//=======================================================================
// Co-Simulation of Verilated+SystemC VPI+iVerilog
// Filename: test_fir8.v
// Purpose: Verilog Testbench
// Author: GoodKook, goodkook@gmail.com
//

`timescale 1ns/1ns

module test_fir8;

// to DUT
reg         clk;
reg         clk_sc;
reg  [5:0]  Cin;
reg  [3:0]  Xin;
reg  [3:0]  Yin;
reg         Rdy;
// from DUT
wire [3:0]  Xout;
wire [3:0]  Yout;
wire        Vld;

// DUT
fir_pe u_fir_pe (
  .clk(clk_sc),
  .Cin(4'd4),
  .Xin(Xin),
  .Xout(Xout),
  .Yin(Yin),
  .Yout(Yout),
  .Rdy(Rdy),
  .Vld(Vld));

parameter CLK_HALF_CYCLE=50;

initial begin
  clk = 0;
  forever begin
    #CLK_HALF_CYCLE clk = ~clk;
  end
end

reg integer i;
initial begin
  $display("Icarus Verilog started");
  $dumpfile("test_fir8.vcd");
  $dumpvars(1, u_fir_pe);

  // Testbench Positional Connection(See sc_fir8_tb_tf() in vpi_stub.cpp)
  $sc_fir8_tb(
        clk,
        clk_sc,
        Xin,
        Yin,
        Xout,
        Yout,
        Rdy,
        Vld);

    i = 0;
//  #100000 $finish;
end

always @(posedge Vld)
begin
    if (i>4800)
      $finish;
    else
      i <= i + 1;
end

endmodule
