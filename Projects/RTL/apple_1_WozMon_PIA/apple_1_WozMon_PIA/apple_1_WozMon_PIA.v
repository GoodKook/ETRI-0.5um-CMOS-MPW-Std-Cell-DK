//
// Apple-I/WozMon+PIA
//
`include "PIA_ADDR.vh"

module apple_1_WozMon_PIA(clk, reset, AB, DI, DO, WE, IRQ, NMI, RDY, kbd_rdy, kbd_ack, kbd_data, dsp_rdy, dsp_ack, dsp_data);
input           clk;    // CPU clock 
input           reset;  // reset signal
output [15:0]   AB;     // address bus
input  [7:0]    DI;     // data in, read bus
output [7:0]    DO;     // data out, write bus
output          WE;     // write enable
input           IRQ;    // interrupt request
input           NMI;    // non-maskable interrupt request
input           RDY;    // Ready signal. Pauses CPU when RDY=0
// Keyboard Input
input           kbd_rdy;
output          kbd_ack;
input  [6:0]    kbd_data;   // ASCII
// Display Output
output          dsp_rdy;
input           dsp_ack;
output [6:0]    dsp_data;   // ASCII

    wire [15:0] Addr_Bus;
    reg  [15:0] _Addr_Bus;
    reg   [7:0] Data_In;
    wire  [7:0] Data_Out;

    wire  [7:0] DO_kbd;
    wire  [7:0] DO_dsp;
    wire  [7:0] DO_woz;

    wire        Write_Enable;

    cpu_6502 u_cpu
    (
        .clk(clk),
        .reset(reset),
        .AB(Addr_Bus),
        .DI(Data_In),
        .DO(Data_Out),
        .WE(Write_Enable),
        .IRQ(IRQ),
        .NMI(NMI),
        .RDY(RDY)
    );
    assign AB = Addr_Bus;
    assign WE = Write_Enable;
    assign DO = Data_Out;

    // Address Decoder ----------------------------------------
    always @(posedge clk)
        _Addr_Bus <= Addr_Bus;

    always @*
    begin
        if(_Addr_Bus[15:8]==8'hFF)
            Data_In = DO_woz;
        else if(_Addr_Bus==`PIA_KBD_REG && !Write_Enable)
            Data_In = DO_kbd;
        else if(_Addr_Bus==`PIA_KBD_CTL && !Write_Enable)
            Data_In = DO_kbd;
        else if(_Addr_Bus==`PIA_DSP_REG && !Write_Enable)
            Data_In = DO_dsp;
        else
            Data_In = DI;
    end

    // Keyboard -------------------------------------------------
    pia_kbd u_pia_kbd
    (
        .clk(clk),
        .reset(reset),
        .Address_Bus(_Addr_Bus),
        .WE(Write_Enable),
        .Data_Out(DO_kbd),
        .kbd_rdy(kbd_rdy),
        .kbd_ack(kbd_ack),
        .kbd_data(kbd_data)
    );
    // Display --------------------------------------------------
    pia_dsp u_pia_dsp
    (
        .clk(clk),
        .reset(reset),
        .Address_Bus(Addr_Bus),
        .WE(Write_Enable),
        .Data_In(Data_Out),
        .Data_Out(DO_dsp),
        .dsp_rdy(dsp_rdy),
        .dsp_ack(dsp_ack),
        .dsp_data(dsp_data)
    );
    // WozMon ----------------------------------------------------
    wozmon u_wozmon
    (
        .clk(clk),
        .address(Addr_Bus[7:0]),
        .dout(DO_woz)
    );
endmodule

