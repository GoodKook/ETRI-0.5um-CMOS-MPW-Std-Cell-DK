//
// https://github.com/Guru227/Booth-Multiplier-in-iverilog
//
// 16-bit Booth-Multiplier-in-iverilog
// Project Details
// “16-bit Booth’s Multiplier”
// 
// III Sem, B.Tech. (CSE)
// 

module tb;
wire signed [15:0] z;
reg signed [7:0] a,b;


booth_multiplier my_booth(.multiplier(a),.multiplicand(b),.product(z));

initial begin $dumpfile("tb_boothsalgo.vcd"); $dumpvars(0,tb); end

initial begin
$monitor($time,"       ",a," *",b," = ", z);

b = 8'b1;
a = 8'b1;

#10

a = 8'b11111000;
b = 8'b11110000;

#10

a = 8'b10110101;
b = 8'b1000100;

#10

a = 8'b01111;
b = 8'b0;

#10  

a = 8'b01111100;
b = 8'b0101;

#10

a = 8'b1011010;
b = 8'b100011;

#10

a = 8'b010001;
b = 8'b111100;

#10
a = 8'b10001;
b = 8'b10111111;

end
endmodule
