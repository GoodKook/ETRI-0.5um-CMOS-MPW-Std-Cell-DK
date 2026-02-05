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
    parameter   NUM_STIM_ARRAY  = 5,
                NUM_OUT_ARRAY   = 3;
    reg [7:0]   stimIn[0:NUM_STIM_ARRAY-1];
    reg [7:0]   vectOut[0:NUM_OUT_ARRAY-1];
    reg [7:0]   Dout_emu;
    
    // DUT interface: registered input
    reg         reset;    // reset signal
    reg         IRQ;      // interrupt request
    reg         NMI;      // non-maskable interrupt request
    reg         kbd_rdy;
    reg  [6:0]  kbd_data;   // ASCII
    reg         dsp_ack;
    // DUT interface: output wire. DUT's output will be captured
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
//      +-+-+-+-+-+-+-+-+                       +-----------+-+-+
//  [0] |7|6|5|4|3|2|1|0|                   [0] |           |1|0|
//      +-+-+-+-+-+-+-+-+                       +-----------+-+-+
//       | | | | | | | |                                     | |
//       | | | | | | | +---reset                             | +---kbd_ack
//       | | | | | | +---IRQ                                 +---dsp_rdy
//       | | | | | +---NMI                      +-+-------------+
//       | | | | +---kbd_rdy                [1] | |6 5 4 3 2 1 0|
//       | | | +---dsp_ack                      +-+-----+-------+
//       | | +---emu_en                                 |
//       | +---emu_clk                                  +---dsp_data[6:0]
//       +---emu_we
//      +-+-------------+                       +---------------+
//  [1] |7|6 5 4 3 2 1 0|                   [2] |7 6 5 4 3 2 1 0|
//      +-+-----+-------+                       +-------+-------+
//       |      |                                       |
//       |      +---kbd_data[6:0]                       +---emu_do[7:0]
//       +---clk(Un-Used)
//      +---------+-+-+-+
//  [2] |7|6|5|4|3|2|1|0|
//      +-------+-+-+-+-+
//              |
//              +---emu_addr[7:0]
//      +-+-------------+
//  [3] | |6 5 4 3 2 1 0|
//      +---------------+
//              |
//              +---emu_addr[14:8]
//      +---------------+
//  [4] |7 6 5 4 3 2 1 0|
//      +---------------+
//              |
//              +---emu_di
//
    always @(posedge clk_emu)
    begin
        if (load_emu)   // Input stimulus to DUT
        begin
            reset           <= stimIn[0][0];
            IRQ             <= stimIn[0][1];
            NMI             <= stimIn[0][2];
            kbd_rdy         <= stimIn[0][3];
            dsp_ack         <= stimIn[0][4];
            emu_en          <= stimIn[0][5];
            emu_clk         <= stimIn[0][6];
            emu_we          <= stimIn[0][7];
            kbd_data        <= stimIn[1][6:0];
            emu_addr[7:0]   <= stimIn[2];
            emu_addr[14:8]  <= stimIn[3][6:0];
            emu_di          <= stimIn[4];
        end
        else if (get_emu)   // Capure output from DUT
        begin
            vectOut[0][0]   <= kbd_ack;
            vectOut[0][1]   <= dsp_rdy;
            vectOut[1][6:0] <= dsp_data;
            vectOut[2]      <= emu_do;
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
        .IRQ(IRQ),      // interrupt request
        .NMI(NMI),      // non-maskable interrupt request
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

