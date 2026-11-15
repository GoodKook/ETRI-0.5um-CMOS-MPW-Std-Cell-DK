`timescale 1ns/1ps
module tb;
reg c,d,r; wire [7:0] q;
integer checks=0, errors=0;
shift_reg_8bit dut(.clk(c),.rst_n(r),.din(d),.dout(q));
initial begin
c=1'b0; d=1'b0; r=1'b1; #1;
#9;
c=1'b0; d=1'b0; r=1'b0; #1;
checks=checks+1; if(q !== 8'd0) begin
$display("MISMATCH id=1 expected=0 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b0; #1;
checks=checks+1; if(q !== 8'd0) begin
$display("MISMATCH id=2 expected=0 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b0; #1;
checks=checks+1; if(q !== 8'd0) begin
$display("MISMATCH id=3 expected=0 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd0) begin
$display("MISMATCH id=4 expected=0 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd0) begin
$display("MISMATCH id=5 expected=0 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd0) begin
$display("MISMATCH id=6 expected=0 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd0) begin
$display("MISMATCH id=7 expected=0 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd0) begin
$display("MISMATCH id=8 expected=0 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd0) begin
$display("MISMATCH id=9 expected=0 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd0) begin
$display("MISMATCH id=10 expected=0 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd0) begin
$display("MISMATCH id=11 expected=0 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd0) begin
$display("MISMATCH id=12 expected=0 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd0) begin
$display("MISMATCH id=13 expected=0 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd0) begin
$display("MISMATCH id=14 expected=0 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd0) begin
$display("MISMATCH id=15 expected=0 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd0) begin
$display("MISMATCH id=16 expected=0 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd0) begin
$display("MISMATCH id=17 expected=0 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd1) begin
$display("MISMATCH id=18 expected=1 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd1) begin
$display("MISMATCH id=19 expected=1 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd1) begin
$display("MISMATCH id=20 expected=1 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd1) begin
$display("MISMATCH id=21 expected=1 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd3) begin
$display("MISMATCH id=22 expected=3 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd3) begin
$display("MISMATCH id=23 expected=3 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd3) begin
$display("MISMATCH id=24 expected=3 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd3) begin
$display("MISMATCH id=25 expected=3 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd7) begin
$display("MISMATCH id=26 expected=7 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd7) begin
$display("MISMATCH id=27 expected=7 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd7) begin
$display("MISMATCH id=28 expected=7 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd7) begin
$display("MISMATCH id=29 expected=7 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd15) begin
$display("MISMATCH id=30 expected=15 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd15) begin
$display("MISMATCH id=31 expected=15 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd15) begin
$display("MISMATCH id=32 expected=15 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd15) begin
$display("MISMATCH id=33 expected=15 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd31) begin
$display("MISMATCH id=34 expected=31 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd31) begin
$display("MISMATCH id=35 expected=31 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd31) begin
$display("MISMATCH id=36 expected=31 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd31) begin
$display("MISMATCH id=37 expected=31 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd63) begin
$display("MISMATCH id=38 expected=63 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd63) begin
$display("MISMATCH id=39 expected=63 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd63) begin
$display("MISMATCH id=40 expected=63 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd63) begin
$display("MISMATCH id=41 expected=63 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd126) begin
$display("MISMATCH id=42 expected=126 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd126) begin
$display("MISMATCH id=43 expected=126 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd126) begin
$display("MISMATCH id=44 expected=126 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd126) begin
$display("MISMATCH id=45 expected=126 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd253) begin
$display("MISMATCH id=46 expected=253 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd253) begin
$display("MISMATCH id=47 expected=253 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd253) begin
$display("MISMATCH id=48 expected=253 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd253) begin
$display("MISMATCH id=49 expected=253 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd250) begin
$display("MISMATCH id=50 expected=250 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd250) begin
$display("MISMATCH id=51 expected=250 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd250) begin
$display("MISMATCH id=52 expected=250 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd250) begin
$display("MISMATCH id=53 expected=250 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd245) begin
$display("MISMATCH id=54 expected=245 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd245) begin
$display("MISMATCH id=55 expected=245 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd245) begin
$display("MISMATCH id=56 expected=245 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd245) begin
$display("MISMATCH id=57 expected=245 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd234) begin
$display("MISMATCH id=58 expected=234 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd234) begin
$display("MISMATCH id=59 expected=234 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd234) begin
$display("MISMATCH id=60 expected=234 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd234) begin
$display("MISMATCH id=61 expected=234 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd212) begin
$display("MISMATCH id=62 expected=212 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd212) begin
$display("MISMATCH id=63 expected=212 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd212) begin
$display("MISMATCH id=64 expected=212 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd212) begin
$display("MISMATCH id=65 expected=212 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd168) begin
$display("MISMATCH id=66 expected=168 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd168) begin
$display("MISMATCH id=67 expected=168 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd168) begin
$display("MISMATCH id=68 expected=168 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd168) begin
$display("MISMATCH id=69 expected=168 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd80) begin
$display("MISMATCH id=70 expected=80 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd80) begin
$display("MISMATCH id=71 expected=80 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd80) begin
$display("MISMATCH id=72 expected=80 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd80) begin
$display("MISMATCH id=73 expected=80 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd160) begin
$display("MISMATCH id=74 expected=160 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd160) begin
$display("MISMATCH id=75 expected=160 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b0; #1;
checks=checks+1; if(q !== 8'd0) begin
$display("MISMATCH id=76 expected=0 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd0) begin
$display("MISMATCH id=77 expected=0 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd0) begin
$display("MISMATCH id=78 expected=0 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd0) begin
$display("MISMATCH id=79 expected=0 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd1) begin
$display("MISMATCH id=80 expected=1 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd1) begin
$display("MISMATCH id=81 expected=1 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd1) begin
$display("MISMATCH id=82 expected=1 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd1) begin
$display("MISMATCH id=83 expected=1 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd2) begin
$display("MISMATCH id=84 expected=2 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd2) begin
$display("MISMATCH id=85 expected=2 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd2) begin
$display("MISMATCH id=86 expected=2 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd2) begin
$display("MISMATCH id=87 expected=2 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd5) begin
$display("MISMATCH id=88 expected=5 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd5) begin
$display("MISMATCH id=89 expected=5 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd5) begin
$display("MISMATCH id=90 expected=5 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd5) begin
$display("MISMATCH id=91 expected=5 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd11) begin
$display("MISMATCH id=92 expected=11 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd11) begin
$display("MISMATCH id=93 expected=11 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd11) begin
$display("MISMATCH id=94 expected=11 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd11) begin
$display("MISMATCH id=95 expected=11 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd23) begin
$display("MISMATCH id=96 expected=23 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd23) begin
$display("MISMATCH id=97 expected=23 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd23) begin
$display("MISMATCH id=98 expected=23 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd23) begin
$display("MISMATCH id=99 expected=23 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd47) begin
$display("MISMATCH id=100 expected=47 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd47) begin
$display("MISMATCH id=101 expected=47 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd47) begin
$display("MISMATCH id=102 expected=47 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd47) begin
$display("MISMATCH id=103 expected=47 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd95) begin
$display("MISMATCH id=104 expected=95 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd95) begin
$display("MISMATCH id=105 expected=95 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd95) begin
$display("MISMATCH id=106 expected=95 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd95) begin
$display("MISMATCH id=107 expected=95 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd191) begin
$display("MISMATCH id=108 expected=191 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd191) begin
$display("MISMATCH id=109 expected=191 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd191) begin
$display("MISMATCH id=110 expected=191 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd191) begin
$display("MISMATCH id=111 expected=191 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd126) begin
$display("MISMATCH id=112 expected=126 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd126) begin
$display("MISMATCH id=113 expected=126 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd126) begin
$display("MISMATCH id=114 expected=126 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd126) begin
$display("MISMATCH id=115 expected=126 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd252) begin
$display("MISMATCH id=116 expected=252 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd252) begin
$display("MISMATCH id=117 expected=252 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd252) begin
$display("MISMATCH id=118 expected=252 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd252) begin
$display("MISMATCH id=119 expected=252 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd248) begin
$display("MISMATCH id=120 expected=248 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd248) begin
$display("MISMATCH id=121 expected=248 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd248) begin
$display("MISMATCH id=122 expected=248 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd248) begin
$display("MISMATCH id=123 expected=248 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd241) begin
$display("MISMATCH id=124 expected=241 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd241) begin
$display("MISMATCH id=125 expected=241 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd241) begin
$display("MISMATCH id=126 expected=241 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd241) begin
$display("MISMATCH id=127 expected=241 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd226) begin
$display("MISMATCH id=128 expected=226 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd226) begin
$display("MISMATCH id=129 expected=226 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd226) begin
$display("MISMATCH id=130 expected=226 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd226) begin
$display("MISMATCH id=131 expected=226 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd197) begin
$display("MISMATCH id=132 expected=197 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd197) begin
$display("MISMATCH id=133 expected=197 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd197) begin
$display("MISMATCH id=134 expected=197 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd197) begin
$display("MISMATCH id=135 expected=197 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd139) begin
$display("MISMATCH id=136 expected=139 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd139) begin
$display("MISMATCH id=137 expected=139 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd139) begin
$display("MISMATCH id=138 expected=139 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd139) begin
$display("MISMATCH id=139 expected=139 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd23) begin
$display("MISMATCH id=140 expected=23 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd23) begin
$display("MISMATCH id=141 expected=23 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd23) begin
$display("MISMATCH id=142 expected=23 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd23) begin
$display("MISMATCH id=143 expected=23 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd47) begin
$display("MISMATCH id=144 expected=47 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd47) begin
$display("MISMATCH id=145 expected=47 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd47) begin
$display("MISMATCH id=146 expected=47 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd47) begin
$display("MISMATCH id=147 expected=47 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd94) begin
$display("MISMATCH id=148 expected=94 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd94) begin
$display("MISMATCH id=149 expected=94 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd94) begin
$display("MISMATCH id=150 expected=94 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd94) begin
$display("MISMATCH id=151 expected=94 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd189) begin
$display("MISMATCH id=152 expected=189 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd189) begin
$display("MISMATCH id=153 expected=189 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd189) begin
$display("MISMATCH id=154 expected=189 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd189) begin
$display("MISMATCH id=155 expected=189 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd122) begin
$display("MISMATCH id=156 expected=122 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd122) begin
$display("MISMATCH id=157 expected=122 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd122) begin
$display("MISMATCH id=158 expected=122 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd122) begin
$display("MISMATCH id=159 expected=122 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd244) begin
$display("MISMATCH id=160 expected=244 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd244) begin
$display("MISMATCH id=161 expected=244 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd244) begin
$display("MISMATCH id=162 expected=244 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd244) begin
$display("MISMATCH id=163 expected=244 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd232) begin
$display("MISMATCH id=164 expected=232 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd232) begin
$display("MISMATCH id=165 expected=232 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd232) begin
$display("MISMATCH id=166 expected=232 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd232) begin
$display("MISMATCH id=167 expected=232 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd208) begin
$display("MISMATCH id=168 expected=208 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd208) begin
$display("MISMATCH id=169 expected=208 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd208) begin
$display("MISMATCH id=170 expected=208 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd208) begin
$display("MISMATCH id=171 expected=208 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd161) begin
$display("MISMATCH id=172 expected=161 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd161) begin
$display("MISMATCH id=173 expected=161 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd161) begin
$display("MISMATCH id=174 expected=161 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd161) begin
$display("MISMATCH id=175 expected=161 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd67) begin
$display("MISMATCH id=176 expected=67 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd67) begin
$display("MISMATCH id=177 expected=67 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd67) begin
$display("MISMATCH id=178 expected=67 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd67) begin
$display("MISMATCH id=179 expected=67 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd134) begin
$display("MISMATCH id=180 expected=134 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd134) begin
$display("MISMATCH id=181 expected=134 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd134) begin
$display("MISMATCH id=182 expected=134 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd134) begin
$display("MISMATCH id=183 expected=134 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd13) begin
$display("MISMATCH id=184 expected=13 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd13) begin
$display("MISMATCH id=185 expected=13 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd13) begin
$display("MISMATCH id=186 expected=13 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd13) begin
$display("MISMATCH id=187 expected=13 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd27) begin
$display("MISMATCH id=188 expected=27 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd27) begin
$display("MISMATCH id=189 expected=27 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd27) begin
$display("MISMATCH id=190 expected=27 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd27) begin
$display("MISMATCH id=191 expected=27 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd54) begin
$display("MISMATCH id=192 expected=54 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd54) begin
$display("MISMATCH id=193 expected=54 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd54) begin
$display("MISMATCH id=194 expected=54 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd54) begin
$display("MISMATCH id=195 expected=54 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd109) begin
$display("MISMATCH id=196 expected=109 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd109) begin
$display("MISMATCH id=197 expected=109 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd109) begin
$display("MISMATCH id=198 expected=109 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd109) begin
$display("MISMATCH id=199 expected=109 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd219) begin
$display("MISMATCH id=200 expected=219 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd219) begin
$display("MISMATCH id=201 expected=219 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd219) begin
$display("MISMATCH id=202 expected=219 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd219) begin
$display("MISMATCH id=203 expected=219 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd183) begin
$display("MISMATCH id=204 expected=183 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd183) begin
$display("MISMATCH id=205 expected=183 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd183) begin
$display("MISMATCH id=206 expected=183 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd183) begin
$display("MISMATCH id=207 expected=183 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd111) begin
$display("MISMATCH id=208 expected=111 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd111) begin
$display("MISMATCH id=209 expected=111 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd111) begin
$display("MISMATCH id=210 expected=111 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd111) begin
$display("MISMATCH id=211 expected=111 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd222) begin
$display("MISMATCH id=212 expected=222 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd222) begin
$display("MISMATCH id=213 expected=222 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd222) begin
$display("MISMATCH id=214 expected=222 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd222) begin
$display("MISMATCH id=215 expected=222 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd188) begin
$display("MISMATCH id=216 expected=188 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd188) begin
$display("MISMATCH id=217 expected=188 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd188) begin
$display("MISMATCH id=218 expected=188 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd188) begin
$display("MISMATCH id=219 expected=188 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd121) begin
$display("MISMATCH id=220 expected=121 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd121) begin
$display("MISMATCH id=221 expected=121 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd121) begin
$display("MISMATCH id=222 expected=121 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd121) begin
$display("MISMATCH id=223 expected=121 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd243) begin
$display("MISMATCH id=224 expected=243 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd243) begin
$display("MISMATCH id=225 expected=243 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd243) begin
$display("MISMATCH id=226 expected=243 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd243) begin
$display("MISMATCH id=227 expected=243 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd231) begin
$display("MISMATCH id=228 expected=231 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd231) begin
$display("MISMATCH id=229 expected=231 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd231) begin
$display("MISMATCH id=230 expected=231 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd231) begin
$display("MISMATCH id=231 expected=231 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd206) begin
$display("MISMATCH id=232 expected=206 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd206) begin
$display("MISMATCH id=233 expected=206 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd206) begin
$display("MISMATCH id=234 expected=206 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd206) begin
$display("MISMATCH id=235 expected=206 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd157) begin
$display("MISMATCH id=236 expected=157 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd157) begin
$display("MISMATCH id=237 expected=157 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd157) begin
$display("MISMATCH id=238 expected=157 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd157) begin
$display("MISMATCH id=239 expected=157 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd59) begin
$display("MISMATCH id=240 expected=59 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd59) begin
$display("MISMATCH id=241 expected=59 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd59) begin
$display("MISMATCH id=242 expected=59 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd59) begin
$display("MISMATCH id=243 expected=59 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd118) begin
$display("MISMATCH id=244 expected=118 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd118) begin
$display("MISMATCH id=245 expected=118 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd118) begin
$display("MISMATCH id=246 expected=118 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd118) begin
$display("MISMATCH id=247 expected=118 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd237) begin
$display("MISMATCH id=248 expected=237 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd237) begin
$display("MISMATCH id=249 expected=237 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd237) begin
$display("MISMATCH id=250 expected=237 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd237) begin
$display("MISMATCH id=251 expected=237 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd218) begin
$display("MISMATCH id=252 expected=218 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd218) begin
$display("MISMATCH id=253 expected=218 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd218) begin
$display("MISMATCH id=254 expected=218 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd218) begin
$display("MISMATCH id=255 expected=218 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd180) begin
$display("MISMATCH id=256 expected=180 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd180) begin
$display("MISMATCH id=257 expected=180 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd180) begin
$display("MISMATCH id=258 expected=180 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd180) begin
$display("MISMATCH id=259 expected=180 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd104) begin
$display("MISMATCH id=260 expected=104 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd104) begin
$display("MISMATCH id=261 expected=104 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd104) begin
$display("MISMATCH id=262 expected=104 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd104) begin
$display("MISMATCH id=263 expected=104 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd209) begin
$display("MISMATCH id=264 expected=209 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd209) begin
$display("MISMATCH id=265 expected=209 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd209) begin
$display("MISMATCH id=266 expected=209 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd209) begin
$display("MISMATCH id=267 expected=209 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd162) begin
$display("MISMATCH id=268 expected=162 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd162) begin
$display("MISMATCH id=269 expected=162 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd162) begin
$display("MISMATCH id=270 expected=162 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd162) begin
$display("MISMATCH id=271 expected=162 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd68) begin
$display("MISMATCH id=272 expected=68 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd68) begin
$display("MISMATCH id=273 expected=68 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd68) begin
$display("MISMATCH id=274 expected=68 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd68) begin
$display("MISMATCH id=275 expected=68 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd136) begin
$display("MISMATCH id=276 expected=136 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd136) begin
$display("MISMATCH id=277 expected=136 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd136) begin
$display("MISMATCH id=278 expected=136 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd136) begin
$display("MISMATCH id=279 expected=136 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd17) begin
$display("MISMATCH id=280 expected=17 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd17) begin
$display("MISMATCH id=281 expected=17 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd17) begin
$display("MISMATCH id=282 expected=17 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd17) begin
$display("MISMATCH id=283 expected=17 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd35) begin
$display("MISMATCH id=284 expected=35 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd35) begin
$display("MISMATCH id=285 expected=35 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd35) begin
$display("MISMATCH id=286 expected=35 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd35) begin
$display("MISMATCH id=287 expected=35 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd70) begin
$display("MISMATCH id=288 expected=70 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd70) begin
$display("MISMATCH id=289 expected=70 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd70) begin
$display("MISMATCH id=290 expected=70 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd70) begin
$display("MISMATCH id=291 expected=70 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd140) begin
$display("MISMATCH id=292 expected=140 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd140) begin
$display("MISMATCH id=293 expected=140 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b0; #1;
checks=checks+1; if(q !== 8'd0) begin
$display("MISMATCH id=294 expected=0 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd0) begin
$display("MISMATCH id=295 expected=0 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd0) begin
$display("MISMATCH id=296 expected=0 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd0) begin
$display("MISMATCH id=297 expected=0 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd1) begin
$display("MISMATCH id=298 expected=1 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd1) begin
$display("MISMATCH id=299 expected=1 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd1) begin
$display("MISMATCH id=300 expected=1 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd1) begin
$display("MISMATCH id=301 expected=1 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd3) begin
$display("MISMATCH id=302 expected=3 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd3) begin
$display("MISMATCH id=303 expected=3 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd3) begin
$display("MISMATCH id=304 expected=3 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd3) begin
$display("MISMATCH id=305 expected=3 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd6) begin
$display("MISMATCH id=306 expected=6 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd6) begin
$display("MISMATCH id=307 expected=6 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd6) begin
$display("MISMATCH id=308 expected=6 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd6) begin
$display("MISMATCH id=309 expected=6 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd13) begin
$display("MISMATCH id=310 expected=13 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd13) begin
$display("MISMATCH id=311 expected=13 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd13) begin
$display("MISMATCH id=312 expected=13 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd13) begin
$display("MISMATCH id=313 expected=13 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd27) begin
$display("MISMATCH id=314 expected=27 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd27) begin
$display("MISMATCH id=315 expected=27 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd27) begin
$display("MISMATCH id=316 expected=27 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd27) begin
$display("MISMATCH id=317 expected=27 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd55) begin
$display("MISMATCH id=318 expected=55 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd55) begin
$display("MISMATCH id=319 expected=55 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd55) begin
$display("MISMATCH id=320 expected=55 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd55) begin
$display("MISMATCH id=321 expected=55 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd111) begin
$display("MISMATCH id=322 expected=111 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd111) begin
$display("MISMATCH id=323 expected=111 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd111) begin
$display("MISMATCH id=324 expected=111 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd111) begin
$display("MISMATCH id=325 expected=111 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd222) begin
$display("MISMATCH id=326 expected=222 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd222) begin
$display("MISMATCH id=327 expected=222 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd222) begin
$display("MISMATCH id=328 expected=222 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd222) begin
$display("MISMATCH id=329 expected=222 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd189) begin
$display("MISMATCH id=330 expected=189 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd189) begin
$display("MISMATCH id=331 expected=189 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd189) begin
$display("MISMATCH id=332 expected=189 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd189) begin
$display("MISMATCH id=333 expected=189 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd122) begin
$display("MISMATCH id=334 expected=122 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd122) begin
$display("MISMATCH id=335 expected=122 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd122) begin
$display("MISMATCH id=336 expected=122 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd122) begin
$display("MISMATCH id=337 expected=122 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd245) begin
$display("MISMATCH id=338 expected=245 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd245) begin
$display("MISMATCH id=339 expected=245 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd245) begin
$display("MISMATCH id=340 expected=245 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd245) begin
$display("MISMATCH id=341 expected=245 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd234) begin
$display("MISMATCH id=342 expected=234 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd234) begin
$display("MISMATCH id=343 expected=234 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd234) begin
$display("MISMATCH id=344 expected=234 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd234) begin
$display("MISMATCH id=345 expected=234 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd213) begin
$display("MISMATCH id=346 expected=213 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd213) begin
$display("MISMATCH id=347 expected=213 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd213) begin
$display("MISMATCH id=348 expected=213 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd213) begin
$display("MISMATCH id=349 expected=213 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd171) begin
$display("MISMATCH id=350 expected=171 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd171) begin
$display("MISMATCH id=351 expected=171 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd171) begin
$display("MISMATCH id=352 expected=171 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd171) begin
$display("MISMATCH id=353 expected=171 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd86) begin
$display("MISMATCH id=354 expected=86 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd86) begin
$display("MISMATCH id=355 expected=86 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd86) begin
$display("MISMATCH id=356 expected=86 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd86) begin
$display("MISMATCH id=357 expected=86 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd173) begin
$display("MISMATCH id=358 expected=173 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd173) begin
$display("MISMATCH id=359 expected=173 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd173) begin
$display("MISMATCH id=360 expected=173 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd173) begin
$display("MISMATCH id=361 expected=173 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd91) begin
$display("MISMATCH id=362 expected=91 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd91) begin
$display("MISMATCH id=363 expected=91 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd91) begin
$display("MISMATCH id=364 expected=91 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd91) begin
$display("MISMATCH id=365 expected=91 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd183) begin
$display("MISMATCH id=366 expected=183 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd183) begin
$display("MISMATCH id=367 expected=183 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd183) begin
$display("MISMATCH id=368 expected=183 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd183) begin
$display("MISMATCH id=369 expected=183 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd111) begin
$display("MISMATCH id=370 expected=111 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd111) begin
$display("MISMATCH id=371 expected=111 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd111) begin
$display("MISMATCH id=372 expected=111 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd111) begin
$display("MISMATCH id=373 expected=111 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd223) begin
$display("MISMATCH id=374 expected=223 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd223) begin
$display("MISMATCH id=375 expected=223 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd223) begin
$display("MISMATCH id=376 expected=223 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd223) begin
$display("MISMATCH id=377 expected=223 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd191) begin
$display("MISMATCH id=378 expected=191 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd191) begin
$display("MISMATCH id=379 expected=191 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd191) begin
$display("MISMATCH id=380 expected=191 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd191) begin
$display("MISMATCH id=381 expected=191 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd126) begin
$display("MISMATCH id=382 expected=126 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd126) begin
$display("MISMATCH id=383 expected=126 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd126) begin
$display("MISMATCH id=384 expected=126 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd126) begin
$display("MISMATCH id=385 expected=126 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd253) begin
$display("MISMATCH id=386 expected=253 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd253) begin
$display("MISMATCH id=387 expected=253 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd253) begin
$display("MISMATCH id=388 expected=253 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd253) begin
$display("MISMATCH id=389 expected=253 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd250) begin
$display("MISMATCH id=390 expected=250 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd250) begin
$display("MISMATCH id=391 expected=250 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd250) begin
$display("MISMATCH id=392 expected=250 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd250) begin
$display("MISMATCH id=393 expected=250 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd244) begin
$display("MISMATCH id=394 expected=244 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd244) begin
$display("MISMATCH id=395 expected=244 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd244) begin
$display("MISMATCH id=396 expected=244 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd244) begin
$display("MISMATCH id=397 expected=244 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd232) begin
$display("MISMATCH id=398 expected=232 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd232) begin
$display("MISMATCH id=399 expected=232 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd232) begin
$display("MISMATCH id=400 expected=232 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd232) begin
$display("MISMATCH id=401 expected=232 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd208) begin
$display("MISMATCH id=402 expected=208 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd208) begin
$display("MISMATCH id=403 expected=208 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd208) begin
$display("MISMATCH id=404 expected=208 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd208) begin
$display("MISMATCH id=405 expected=208 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd161) begin
$display("MISMATCH id=406 expected=161 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd161) begin
$display("MISMATCH id=407 expected=161 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd161) begin
$display("MISMATCH id=408 expected=161 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd161) begin
$display("MISMATCH id=409 expected=161 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd66) begin
$display("MISMATCH id=410 expected=66 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd66) begin
$display("MISMATCH id=411 expected=66 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd66) begin
$display("MISMATCH id=412 expected=66 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd66) begin
$display("MISMATCH id=413 expected=66 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd133) begin
$display("MISMATCH id=414 expected=133 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd133) begin
$display("MISMATCH id=415 expected=133 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd133) begin
$display("MISMATCH id=416 expected=133 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd133) begin
$display("MISMATCH id=417 expected=133 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd10) begin
$display("MISMATCH id=418 expected=10 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd10) begin
$display("MISMATCH id=419 expected=10 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd10) begin
$display("MISMATCH id=420 expected=10 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd10) begin
$display("MISMATCH id=421 expected=10 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd20) begin
$display("MISMATCH id=422 expected=20 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd20) begin
$display("MISMATCH id=423 expected=20 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd20) begin
$display("MISMATCH id=424 expected=20 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd20) begin
$display("MISMATCH id=425 expected=20 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd40) begin
$display("MISMATCH id=426 expected=40 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd40) begin
$display("MISMATCH id=427 expected=40 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd40) begin
$display("MISMATCH id=428 expected=40 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd40) begin
$display("MISMATCH id=429 expected=40 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd81) begin
$display("MISMATCH id=430 expected=81 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd81) begin
$display("MISMATCH id=431 expected=81 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd81) begin
$display("MISMATCH id=432 expected=81 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd81) begin
$display("MISMATCH id=433 expected=81 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd162) begin
$display("MISMATCH id=434 expected=162 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd162) begin
$display("MISMATCH id=435 expected=162 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd162) begin
$display("MISMATCH id=436 expected=162 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd162) begin
$display("MISMATCH id=437 expected=162 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd69) begin
$display("MISMATCH id=438 expected=69 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd69) begin
$display("MISMATCH id=439 expected=69 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd69) begin
$display("MISMATCH id=440 expected=69 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd69) begin
$display("MISMATCH id=441 expected=69 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd139) begin
$display("MISMATCH id=442 expected=139 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd139) begin
$display("MISMATCH id=443 expected=139 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd139) begin
$display("MISMATCH id=444 expected=139 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd139) begin
$display("MISMATCH id=445 expected=139 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd22) begin
$display("MISMATCH id=446 expected=22 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd22) begin
$display("MISMATCH id=447 expected=22 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd22) begin
$display("MISMATCH id=448 expected=22 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd22) begin
$display("MISMATCH id=449 expected=22 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd44) begin
$display("MISMATCH id=450 expected=44 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd44) begin
$display("MISMATCH id=451 expected=44 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd44) begin
$display("MISMATCH id=452 expected=44 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd44) begin
$display("MISMATCH id=453 expected=44 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd89) begin
$display("MISMATCH id=454 expected=89 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd89) begin
$display("MISMATCH id=455 expected=89 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd89) begin
$display("MISMATCH id=456 expected=89 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd89) begin
$display("MISMATCH id=457 expected=89 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd178) begin
$display("MISMATCH id=458 expected=178 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd178) begin
$display("MISMATCH id=459 expected=178 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd178) begin
$display("MISMATCH id=460 expected=178 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd178) begin
$display("MISMATCH id=461 expected=178 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd101) begin
$display("MISMATCH id=462 expected=101 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd101) begin
$display("MISMATCH id=463 expected=101 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd101) begin
$display("MISMATCH id=464 expected=101 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd101) begin
$display("MISMATCH id=465 expected=101 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd203) begin
$display("MISMATCH id=466 expected=203 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd203) begin
$display("MISMATCH id=467 expected=203 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd203) begin
$display("MISMATCH id=468 expected=203 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd203) begin
$display("MISMATCH id=469 expected=203 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd150) begin
$display("MISMATCH id=470 expected=150 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd150) begin
$display("MISMATCH id=471 expected=150 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd150) begin
$display("MISMATCH id=472 expected=150 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd150) begin
$display("MISMATCH id=473 expected=150 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd44) begin
$display("MISMATCH id=474 expected=44 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd44) begin
$display("MISMATCH id=475 expected=44 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd44) begin
$display("MISMATCH id=476 expected=44 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd44) begin
$display("MISMATCH id=477 expected=44 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd89) begin
$display("MISMATCH id=478 expected=89 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd89) begin
$display("MISMATCH id=479 expected=89 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd89) begin
$display("MISMATCH id=480 expected=89 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd89) begin
$display("MISMATCH id=481 expected=89 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd179) begin
$display("MISMATCH id=482 expected=179 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd179) begin
$display("MISMATCH id=483 expected=179 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd179) begin
$display("MISMATCH id=484 expected=179 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd179) begin
$display("MISMATCH id=485 expected=179 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd103) begin
$display("MISMATCH id=486 expected=103 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd103) begin
$display("MISMATCH id=487 expected=103 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b0; #1;
checks=checks+1; if(q !== 8'd0) begin
$display("MISMATCH id=488 expected=0 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd0) begin
$display("MISMATCH id=489 expected=0 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd0) begin
$display("MISMATCH id=490 expected=0 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd0) begin
$display("MISMATCH id=491 expected=0 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd1) begin
$display("MISMATCH id=492 expected=1 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd1) begin
$display("MISMATCH id=493 expected=1 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd1) begin
$display("MISMATCH id=494 expected=1 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd1) begin
$display("MISMATCH id=495 expected=1 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd2) begin
$display("MISMATCH id=496 expected=2 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd2) begin
$display("MISMATCH id=497 expected=2 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd2) begin
$display("MISMATCH id=498 expected=2 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd2) begin
$display("MISMATCH id=499 expected=2 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd4) begin
$display("MISMATCH id=500 expected=4 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd4) begin
$display("MISMATCH id=501 expected=4 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd4) begin
$display("MISMATCH id=502 expected=4 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd4) begin
$display("MISMATCH id=503 expected=4 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd8) begin
$display("MISMATCH id=504 expected=8 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd8) begin
$display("MISMATCH id=505 expected=8 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd8) begin
$display("MISMATCH id=506 expected=8 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd8) begin
$display("MISMATCH id=507 expected=8 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd16) begin
$display("MISMATCH id=508 expected=16 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd16) begin
$display("MISMATCH id=509 expected=16 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd16) begin
$display("MISMATCH id=510 expected=16 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd16) begin
$display("MISMATCH id=511 expected=16 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd33) begin
$display("MISMATCH id=512 expected=33 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd33) begin
$display("MISMATCH id=513 expected=33 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd33) begin
$display("MISMATCH id=514 expected=33 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd33) begin
$display("MISMATCH id=515 expected=33 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd66) begin
$display("MISMATCH id=516 expected=66 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd66) begin
$display("MISMATCH id=517 expected=66 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd66) begin
$display("MISMATCH id=518 expected=66 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd66) begin
$display("MISMATCH id=519 expected=66 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd133) begin
$display("MISMATCH id=520 expected=133 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd133) begin
$display("MISMATCH id=521 expected=133 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd133) begin
$display("MISMATCH id=522 expected=133 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd133) begin
$display("MISMATCH id=523 expected=133 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd11) begin
$display("MISMATCH id=524 expected=11 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd11) begin
$display("MISMATCH id=525 expected=11 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd11) begin
$display("MISMATCH id=526 expected=11 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd11) begin
$display("MISMATCH id=527 expected=11 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd22) begin
$display("MISMATCH id=528 expected=22 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd22) begin
$display("MISMATCH id=529 expected=22 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd22) begin
$display("MISMATCH id=530 expected=22 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd22) begin
$display("MISMATCH id=531 expected=22 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd45) begin
$display("MISMATCH id=532 expected=45 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd45) begin
$display("MISMATCH id=533 expected=45 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd45) begin
$display("MISMATCH id=534 expected=45 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd45) begin
$display("MISMATCH id=535 expected=45 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd91) begin
$display("MISMATCH id=536 expected=91 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd91) begin
$display("MISMATCH id=537 expected=91 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd91) begin
$display("MISMATCH id=538 expected=91 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd91) begin
$display("MISMATCH id=539 expected=91 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd183) begin
$display("MISMATCH id=540 expected=183 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd183) begin
$display("MISMATCH id=541 expected=183 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd183) begin
$display("MISMATCH id=542 expected=183 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd183) begin
$display("MISMATCH id=543 expected=183 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd111) begin
$display("MISMATCH id=544 expected=111 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd111) begin
$display("MISMATCH id=545 expected=111 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd111) begin
$display("MISMATCH id=546 expected=111 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd111) begin
$display("MISMATCH id=547 expected=111 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd223) begin
$display("MISMATCH id=548 expected=223 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd223) begin
$display("MISMATCH id=549 expected=223 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd223) begin
$display("MISMATCH id=550 expected=223 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd223) begin
$display("MISMATCH id=551 expected=223 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd190) begin
$display("MISMATCH id=552 expected=190 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd190) begin
$display("MISMATCH id=553 expected=190 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd190) begin
$display("MISMATCH id=554 expected=190 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd190) begin
$display("MISMATCH id=555 expected=190 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd125) begin
$display("MISMATCH id=556 expected=125 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd125) begin
$display("MISMATCH id=557 expected=125 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd125) begin
$display("MISMATCH id=558 expected=125 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd125) begin
$display("MISMATCH id=559 expected=125 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd250) begin
$display("MISMATCH id=560 expected=250 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd250) begin
$display("MISMATCH id=561 expected=250 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd250) begin
$display("MISMATCH id=562 expected=250 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd250) begin
$display("MISMATCH id=563 expected=250 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd245) begin
$display("MISMATCH id=564 expected=245 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd245) begin
$display("MISMATCH id=565 expected=245 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd245) begin
$display("MISMATCH id=566 expected=245 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd245) begin
$display("MISMATCH id=567 expected=245 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd235) begin
$display("MISMATCH id=568 expected=235 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd235) begin
$display("MISMATCH id=569 expected=235 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd235) begin
$display("MISMATCH id=570 expected=235 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd235) begin
$display("MISMATCH id=571 expected=235 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd215) begin
$display("MISMATCH id=572 expected=215 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd215) begin
$display("MISMATCH id=573 expected=215 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd215) begin
$display("MISMATCH id=574 expected=215 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd215) begin
$display("MISMATCH id=575 expected=215 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd175) begin
$display("MISMATCH id=576 expected=175 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd175) begin
$display("MISMATCH id=577 expected=175 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd175) begin
$display("MISMATCH id=578 expected=175 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd175) begin
$display("MISMATCH id=579 expected=175 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd95) begin
$display("MISMATCH id=580 expected=95 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd95) begin
$display("MISMATCH id=581 expected=95 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd95) begin
$display("MISMATCH id=582 expected=95 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd95) begin
$display("MISMATCH id=583 expected=95 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd191) begin
$display("MISMATCH id=584 expected=191 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd191) begin
$display("MISMATCH id=585 expected=191 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd191) begin
$display("MISMATCH id=586 expected=191 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd191) begin
$display("MISMATCH id=587 expected=191 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd127) begin
$display("MISMATCH id=588 expected=127 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd127) begin
$display("MISMATCH id=589 expected=127 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd127) begin
$display("MISMATCH id=590 expected=127 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd127) begin
$display("MISMATCH id=591 expected=127 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd254) begin
$display("MISMATCH id=592 expected=254 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd254) begin
$display("MISMATCH id=593 expected=254 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd254) begin
$display("MISMATCH id=594 expected=254 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd254) begin
$display("MISMATCH id=595 expected=254 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd253) begin
$display("MISMATCH id=596 expected=253 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd253) begin
$display("MISMATCH id=597 expected=253 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd253) begin
$display("MISMATCH id=598 expected=253 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd253) begin
$display("MISMATCH id=599 expected=253 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd251) begin
$display("MISMATCH id=600 expected=251 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd251) begin
$display("MISMATCH id=601 expected=251 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd251) begin
$display("MISMATCH id=602 expected=251 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd251) begin
$display("MISMATCH id=603 expected=251 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd246) begin
$display("MISMATCH id=604 expected=246 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd246) begin
$display("MISMATCH id=605 expected=246 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd246) begin
$display("MISMATCH id=606 expected=246 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd246) begin
$display("MISMATCH id=607 expected=246 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd236) begin
$display("MISMATCH id=608 expected=236 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd236) begin
$display("MISMATCH id=609 expected=236 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd236) begin
$display("MISMATCH id=610 expected=236 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd236) begin
$display("MISMATCH id=611 expected=236 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd217) begin
$display("MISMATCH id=612 expected=217 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd217) begin
$display("MISMATCH id=613 expected=217 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd217) begin
$display("MISMATCH id=614 expected=217 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd217) begin
$display("MISMATCH id=615 expected=217 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd178) begin
$display("MISMATCH id=616 expected=178 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd178) begin
$display("MISMATCH id=617 expected=178 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd178) begin
$display("MISMATCH id=618 expected=178 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd178) begin
$display("MISMATCH id=619 expected=178 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd101) begin
$display("MISMATCH id=620 expected=101 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd101) begin
$display("MISMATCH id=621 expected=101 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd101) begin
$display("MISMATCH id=622 expected=101 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd101) begin
$display("MISMATCH id=623 expected=101 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd202) begin
$display("MISMATCH id=624 expected=202 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd202) begin
$display("MISMATCH id=625 expected=202 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd202) begin
$display("MISMATCH id=626 expected=202 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd202) begin
$display("MISMATCH id=627 expected=202 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd149) begin
$display("MISMATCH id=628 expected=149 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd149) begin
$display("MISMATCH id=629 expected=149 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd149) begin
$display("MISMATCH id=630 expected=149 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd149) begin
$display("MISMATCH id=631 expected=149 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd42) begin
$display("MISMATCH id=632 expected=42 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd42) begin
$display("MISMATCH id=633 expected=42 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd42) begin
$display("MISMATCH id=634 expected=42 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd42) begin
$display("MISMATCH id=635 expected=42 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd85) begin
$display("MISMATCH id=636 expected=85 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd85) begin
$display("MISMATCH id=637 expected=85 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd85) begin
$display("MISMATCH id=638 expected=85 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd85) begin
$display("MISMATCH id=639 expected=85 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd170) begin
$display("MISMATCH id=640 expected=170 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd170) begin
$display("MISMATCH id=641 expected=170 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd170) begin
$display("MISMATCH id=642 expected=170 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd170) begin
$display("MISMATCH id=643 expected=170 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd85) begin
$display("MISMATCH id=644 expected=85 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd85) begin
$display("MISMATCH id=645 expected=85 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd85) begin
$display("MISMATCH id=646 expected=85 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd85) begin
$display("MISMATCH id=647 expected=85 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b0; r=1'b1; #1;
checks=checks+1; if(q !== 8'd170) begin
$display("MISMATCH id=648 expected=170 actual=%h",q);
errors=errors+1; end
#9;
c=1'b1; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd170) begin
$display("MISMATCH id=649 expected=170 actual=%h",q);
errors=errors+1; end
#9;
c=1'b0; d=1'b1; r=1'b1; #1;
checks=checks+1; if(q !== 8'd170) begin
$display("MISMATCH id=650 expected=170 actual=%h",q);
errors=errors+1; end
#9;
$display("RESULT checks=%0d mismatches=%0d",checks,errors);
if(errors) $fatal(1,"functional mismatch"); $finish; end
endmodule
