//
// Apple-I/WozMon
//
module apple_1_WozMon(clk, reset, AB, DI, DO, WE, IRQ, NMI, RDY, en_woz);
input           clk;    // CPU clock 
input           reset;  // reset signal
output [15:0]   AB;     // address bus
input  [7:0]    DI;     // data in, read bus
output [7:0]    DO;     // data out, write bus
output          WE;     // write enable
input           IRQ;    // interrupt request
input           NMI;    // non-maskable interrupt request
input           RDY;    // Ready signal. Pauses CPU when RDY=0
input           en_woz; // Enable Woz-Mon ROM

    wire [15:0] Addr_Bus;
    reg   [7:0] _Addr_Bus;
    wire  [7:0] Data_In;
    wire  [7:0] DO_woz;

    cpu_6502 u_cpu
    (
        .clk(clk),
        .reset(reset),
        .AB(Addr_Bus),
        .DI(Data_In),
        .DO(DO),
        .WE(WE),
        .IRQ(IRQ),
        .NMI(NMI),
        .RDY(RDY)
    );
    assign AB = Addr_Bus;

    // Address Decoder
    always @(posedge clk)
        _Addr_Bus <= Addr_Bus[15:8];
    assign Data_In = (_Addr_Bus==8'hFF && en_woz==1)? DO_woz:DI;

    wozmon u_wozmon
    (
        .clk(clk),
        .address(Addr_Bus[7:0]),
        .dout(DO_woz)
    );
endmodule

