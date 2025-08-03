`timescale 1ns/1ps

module fir_pe_TB();

reg [5:0] Cin;
reg [3:0] Xin;
reg [3:0] Yin;
wire [3:0] Xout;
wire [3:0] Yout;
reg Rdy;
wire Vld;
reg clk;

fir_pe u_fir_pe (
    .clk(clk),
    .Cin(Cin),
    .Xin(Xin),
    .Xout(Xout),
    .Yin(Yin),
    .Yout(Yout),
    .Rdy(Rdy),
    .Vld(Vld));

initial begin
    $dumpfile("fir_pe_TB.vcd");
    $dumpvars(1, u_fir_pe); // instance name to be traced
end

integer nXin[] = { 126, 109, 70, 146, 103};
integer nYin[] = { 19295, 18177, 17338, 16328, 15837};
integer nCin[] = { 4, 4, 4, 4, 4};

initial begin
    for (integer i=0; i<5; i=i+1)
    begin
        //-----------------------------------
        #0
            clk = 1;
        #1
            Rdy = 1;
            Cin = 6'(nCin[i]);
            Xin = 4'bxxxx;
            Yin = 4'bxxxx;
        #49
            clk = 0;
        #50
            clk = 1;
        //-----------------------------------
        #1
            Rdy = 0;
            Xin = 4'(nXin[i]);
            Yin = 4'(nYin[i]);
        #49
            clk = 0;
        #50
            clk = 1;
        //------------------------------------
        #1
            Xin = 4'(nXin[i]>>4);
            Yin = 4'(nYin[i]>>4);
        #49
            clk = 0;
        #50
            clk = 1;
        //------------------------------------
        #1
            Xin = 4'(nXin[i]>>8);
            Yin = 4'(nYin[i]>>8);
        #49
            clk = 0;
        #50
            clk = 1;
        //------------------------------------
        #1
            Xin = 4'(nXin[i]>>12);
            Yin = 4'(nYin[i]>>12);
        #49
            clk = 0;
        #50
            clk = 1;
    end

    $finish;
end


endmodule
