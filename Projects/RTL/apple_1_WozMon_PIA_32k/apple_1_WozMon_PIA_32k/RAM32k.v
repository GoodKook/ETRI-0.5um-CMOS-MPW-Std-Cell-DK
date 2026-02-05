//
// RAM32k.v
//  Embedded RAM

module RAM32k(clk, we, address, din, dout);
input           clk;
input           we; // Write enable
input  [14:0]   address;    // 15-bits ($0000~$7FFF)
input  [7:0]    din;
output [7:0]    dout;

    reg [7:0]   dout;
    reg [7:0]   Memory[28672];  // 28Kbytes, EP4CE6 has 30 of M9k RAM block 
    //reg [7:0]   Memory[32768];

    always @(posedge clk)
    begin
        if (we)
            Memory[address] <= din;
        else
            dout <= Memory[address];
    end

 endmodule
