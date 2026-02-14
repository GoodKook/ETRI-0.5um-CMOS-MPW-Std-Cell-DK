//
// Apple-I/WozMon+PIA+RAM32k
//
`include "PIA_ADDR.vh"

module apple_1_WozMon_PIA_32k(clk, reset, IRQ, NMI, // CPU 6502
                            kbd_rdy, kbd_ack, kbd_data, dsp_rdy, dsp_ack, dsp_data, // PIA
                            emu_en, emu_clk, emu_addr, emu_we, emu_di, emu_do);     // RAM emulation
input           clk;    // CPU clock 
input           reset;  // reset signal
input           IRQ;    // interrupt request
input           NMI;    // non-maskable interrupt request
// Keyboard Input
input           kbd_rdy;
output          kbd_ack;
input  [6:0]    kbd_data;   // ASCII
// Display Output
output          dsp_rdy;
input           dsp_ack;
output [6:0]    dsp_data;   // ASCII
// RAM emulation (Download HEX/BIN)
input           emu_en;
input           emu_clk;
input [14:0]    emu_addr;
input           emu_we;
input  [7:0]    emu_di;
output [7:0]    emu_do;     

    wire [15:0] Addr_Bus;
    wire  [7:0] DO_RAM;     // Data_In
    wire  [7:0] Data_Out;
    wire        Write_Enable;

    apple_1_WozMon_PIA u_apple_1_WozMon_PIA(
        .clk(clk),
        .reset(reset),
        .AB(Addr_Bus),
        .DI(DO_RAM),    // Data_In: Data out from RAM
        .DO(Data_Out),
        .WE(Write_Enable),
        .IRQ(IRQ),
        .NMI(NMI),
        .RDY(1'b1),     // CPU always On
        .kbd_rdy(kbd_rdy),
        .kbd_ack(kbd_ack),
        .kbd_data(kbd_data),
        .dsp_rdy(dsp_rdy),
        .dsp_ack(dsp_ack),
        .dsp_data(dsp_data)
    );

    // Memory Emulation
    wire [14:0]     RAM_Addr;
    wire  [7:0]     RAM_Din;
    wire            RAM_WE;
    wire            RAM_clk;
    assign RAM_Addr = (emu_en)? emu_addr: Addr_Bus[14:0];
    assign RAM_WE   = (emu_en)? emu_we  : Write_Enable;
    assign RAM_Din  = (emu_en)? emu_di  : Data_Out;
    assign RAM_clk  = (emu_en)? emu_clk : clk;
    assign emu_do   = DO_RAM;

    // Embedded RAM
    RAM32k u_RAM32k
    (
        .clk(RAM_clk),
        .we(RAM_WE),
        .address(RAM_Addr),
        .din(RAM_Din),
        .dout(DO_RAM)
    );

endmodule

