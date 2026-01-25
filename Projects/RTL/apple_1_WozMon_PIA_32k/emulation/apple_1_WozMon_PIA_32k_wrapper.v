//
// Poorman's Standard-Emulator by GoodKook, goodkook@gmail.com
//  Co-Emulation warapper for the "apple_1_WozMon_PIA_32k"
//

module apple_1_WozMon_PIA_32k_wrapper(Din_emu, Dout_emu, Addr_emu, load_emu, get_emu, clk_emu, clk_dut);
    input  [7:0]    Din_emu;
    output [7:0]    Dout_emu;
    input  [2:0]    Addr_emu;
    input           load_emu, get_emu, clk_emu;
    input           clk_dut;

    // Std. Emulation wrapper: Stimulus & Output capture for DUT
    parameter   NUM_STIM_ARRAY  = 7,
                NUM_OUT_ARRAY   = 6;
    reg [7:0]   stimIn[0:NUM_STIM_ARRAY-1];
    reg [7:0]   vectOut[0:NUM_OUT_ARRAY-1];
    reg [7:0]   Dout_emu;
    
    // DUT interface: registered input
    reg         clk;      // CPU clock 
    reg         reset;    // reset signal
    reg         IRQ;      // interrupt request
    reg         NMI;      // non-maskable interrupt request
    reg         RDY;      // Ready signal. Pauses CPU when RDY=0 
    reg  [7:0]  DI;       // data in, read bus
    reg         kbd_rdy;
    reg         dsp_ack;
    reg  [6:0]  kbd_data;   // ASCII
    // DUT interface: output wire. DUT's output will be captured
    wire        WE;     // write enable
    wire [7:0]  DO;     // data out, write bus
    wire [15:0] AB;     // address bus
    wire        kbd_ack;
    wire        dsp_rdy;
    wire [6:0]  dsp_data;   // ASCII

    // RAM emulation (Download HEX/BIN)
    reg         emu_en;
    reg         emu_clk;
    reg  [14:0] emu_addr;
    reg         emu_we;
    reg   [7:0] emu_di;
    wire  [7:0] emu_do;

// Emulation Transactor --------------------------------------------------------
// DUT's input bitmap                       DUT's output bitmap
//      +-+-+-+-+-+-+-+-+                       +---------+-+-+-+
//  [0] | |6|5|4|3|2|1|0|                   [0] |         |2|1|0|
//      +-+-+-+-+-+-+-+-+                       +---------+-+-+-+
//         | | | | | | |                                   | | |
//         | | | | | | +---clk                             | | +---WE
//         | | | | | +---reset                             | +---kbd_ack
//         | | | | +---IRQ                                 +---dsp_rdy
//         | | | +---NMI                        +---------------+
//         | | +---RDY                      [1] |7 6 5 4 3 2 1 0|
//         | +---kbd_rdy                        +-------+-------+
//         +---dsp_ack                                  |
//      +---------------+                               +---DO[7:0]
//  [1] |7 6 5 4 3 2 1 0|                       +---------------+
//      +-------+-------+                   [2] |7 6 5 4 3 2 1 0|
//              |                               +-------+-------+
//              +-----DI[7:0]                           |
//                                                      +---AB[7:0]
//      +-+-------------+                       +---------------+
//  [2] | |6 5 4 3 2 1 0|                   [3] |7 6 5 4 3 2 1 0|
//      +-+-----+-------+                       +-------+-------+
//              |                                       |
//              +---kbd_data[6:0]                       +---AB[15:8]
//                                              +-+-------------+
//                                          [4] | |6 5 4 3 2 1 0|
//                                              +-+-----+-------+
//                                                      |
//                                                      +---dsp_data[6:0]
//      +---------+-+-+-+                       +---------------+
//  [3] |         |2|1|0|                   [5] |7 6 5 4 3 2 1 0|
//      +---------+-+-+-+                       +-------+-------+
//                 | | |                                |
//                 | | +---emu_en                       +---emu_do[7:0]
//                 | +---emu_clk
//                 +---emu_we
//      +---------------+
//  [4] |7 6 5 4 3 2 1 0|
//      +---------------+
//              |
//              +---emu_addr[7:0]
//      +-+-------------+
//  [5] | |6 5 4 3 2 1 0|
//      +---------------+
//              |
//              +---emu_addr[14:8]
//      +---------------+
//  [6] |7 6 5 4 3 2 1 0|
//      +---------------+
//              |
//              +---emu_di
//
    always @(posedge clk_emu)
    begin
        if (load_emu)   // Input stimulus to DUT
        begin
            clk             <= stimIn[0][0];
            reset           <= stimIn[0][1];
            IRQ             <= stimIn[0][2];
            NMI             <= stimIn[0][3];
            RDY             <= stimIn[0][4];
            kbd_rdy         <= stimIn[0][5];
            dsp_ack         <= stimIn[0][6];
            DI              <= stimIn[1];
            kbd_data        <= stimIn[2][6:0];
            emu_en          <= stimIn[3][0];
            emu_clk         <= stimIn[3][1];
            emu_we          <= stimIn[3][2];
            emu_addr[7:0]   <= stimIn[4];
            emu_addr[14:8]  <= stimIn[5][6:0];
            emu_di          <= stimIn[6];
        end
        else if (get_emu)   // Capure output from DUT
        begin
            vectOut[0][0]   <= WE;
            vectOut[0][1]   <= kbd_ack;
            vectOut[0][2]   <= dsp_rdy;
            vectOut[1]      <= DO;
            vectOut[2]      <= AB[7:0];
            vectOut[3]      <= AB[15:8];
            vectOut[4][6:0] <= dsp_data;
            vectOut[5]      <= emu_do;
        end
        else
        begin
            stimIn[Addr_emu] <= Din_emu;
            Dout_emu <= vectOut[Addr_emu];
        end
    end
    
    // DUT
    apple_1_WozMon_PIA_32k u_apple_1_WozMon_PIA_32k(
        .clk(clk_dut),  // Controlled Clock
        .reset(reset),  // reset signal
        .AB(AB),        // address bus
        .DI(DI),        // data in, read bus
        .DO(DO),        // data out, write bus
        .WE(WE),        // write enable
        .IRQ(IRQ),      // interrupt request
        .NMI(NMI),      // non-maskable interrupt request
        .RDY(RDY),      // Ready signal. Pauses CPU when RDY=0
        // Keyboard Input
        .kbd_rdy(kbd_rdy),
        .kbd_ack(kbd_ack),
        .kbd_data(kbd_data),
        // Display Output
        .dsp_rdy(dsp_rdy),
        .dsp_ack(dsp_ack),
        .dsp_data(dsp_data),
        // Embedded RAM32k emulation(Download HEX/BIN)
        .emu_en(emu_en),
        .emu_clk(emu_clk),
        .emu_addr(emu_addr),
        .emu_we(emu_we),
        .emu_di(emu_di),
        .emu_do(emu_do)
    );

endmodule

