//
// Poorman's Standard-Emulator by GoodKook, goodkook@gmail.com
//  Co-Emulation Chip-Test warapper for the "pong_pt1"
//

module pong_pt1_tester(Din_emu, Dout_emu, Addr_emu, load_emu, get_emu, clk_emu, clk_dut,
    // Chip interface to DUT's output
    xp_tick, xhsync, xvsync, xrgb,
    xNAND_OUT1A, xNAND_OUT8A, xINV_OUT1A, xINV_OUT8A,
    xNAND_OUT1, xNAND_OUT8, xINV_OUT1, xINV_OUT8,
    // Chip interface to DUT's inputput
    xclk_dut, xreset, xenable, xup, xdown,
    xNAND_INA, xINV_INA, xNAND_IN, xINV_IN,
    xGND_4, xGND_9, xGND_14, xGND_22,
    xVDD_8, xVDD_18, xVDD_28);
    // Emulation Interfaces
    input  [7:0]    Din_emu;
    output [7:0]    Dout_emu;
    input  [2:0]    Addr_emu;
    input           load_emu, get_emu, clk_emu;
    input           clk_dut;
    // Chip interface to DUT's output
    input xp_tick, xhsync, xvsync, xrgb;
    input xNAND_OUT1A, xNAND_OUT8A, xINV_OUT1A, xINV_OUT8A;
    input xNAND_OUT1, xNAND_OUT8, xINV_OUT1, xINV_OUT8;
    // Chip interface to DUT's inputput
    output xclk_dut, xreset, xenable, xup, xdown;
    output xNAND_INA, xINV_INA, xNAND_IN, xINV_IN;
    output xGND_4, xGND_9, xGND_14, xGND_22;
    output xVDD_8, xVDD_18, xVDD_28;

    // Std. Emulation wrapper: Stimulus & Output capture for DUT
    parameter   NUM_STIM_ARRAY  = 2,
                NUM_OUT_ARRAY   = 2;
    reg [7:0]   stimIn[0:NUM_STIM_ARRAY-1];
    reg [7:0]   vectOut[0:NUM_OUT_ARRAY-1];
    reg [7:0]   Dout_emu;
    
// Emulation Transactor -------------------------------
// DUT's input bitmap             DUT's output bitmap
//      +-----+-+-+-+-+-+             +-----+-+-+-+-+-+
//  [0] |7 6 5|4|3|2|1|0|         [0] |7 6 5 4|3|2|1|0|
//      +-----+-+-+-+-+-+             +-----+-+-+-+-+-+
//             | | | | |                       | | | |
//             | | | | +---down                | | | +---rgb
//             | | | +---up                    | | +---vsync
//             | | +---enable                  | +---hsync
//             | +---reset                     +---p_tick
//             +---clk
//      +-------+-+-+-+-+             +-+-+-+-+-+-+-+-+
//  [1] |7 6 5 4|3|2|1|0|         [1] |7|6|5|4|3|2|1|0|
//      +-------+-+-+-+-+             +-+-+-+-+-+-+-+-+
//               | | | |               | | | | | | | |
//               | | | +---NAND_INA    | | | | | | | +---NAND_OUT1A
//               | | +---INV_INA       | | | | | | +---NAND_OUT8A
//               | +---NAND_IN         | | | | | +---INV_OUT1A
//               +---INV_IN            | | | | +---INV_OUT8A
//                                     | | | +---NAND_OUT1
//                                     | | +---NAND_OUT8
//                                     | +---INV_OUT1
//                                     +---INV_OUT8
//
    // DUT interface: registered input
    reg     reset, enable, up, down;
    reg     NAND_INA, INV_INA, NAND_IN, INV_IN;
    // DUT interface: output wire. DUT's output will be captured
    wire    p_tick, hsync, vsync, rgb;
    wire    NAND_OUT1A, NAND_OUT8A, INV_OUT1A, INV_OUT8A;
    wire    NAND_OUT1, NAND_OUT8, INV_OUT1, INV_OUT8;

    always @(posedge clk_emu)
    begin
        if (load_emu)   // Input stimulus to DUT
        begin
            down     <= stimIn[0][0];
            up       <= stimIn[0][1];
            enable   <= stimIn[0][2];
            reset    <= stimIn[0][3];

            NAND_INA <= stimIn[1][0];
            INV_INA  <= stimIn[1][1];
            NAND_IN  <= stimIn[1][2];
            INV_IN   <= stimIn[1][3];
        end
        else if (get_emu)   // Capure output from DUT
        begin
            vectOut[0][0] <= rgb;
            vectOut[0][1] <= vsync;
            vectOut[0][2] <= hsync;
            vectOut[0][3] <= p_tick;

            vectOut[1][0] <= NAND_OUT1A;
            vectOut[1][1] <= NAND_OUT8A;
            vectOut[1][2] <= INV_OUT1A;
            vectOut[1][3] <= INV_OUT8A;
            vectOut[1][4] <= NAND_OUT1;
            vectOut[1][5] <= NAND_OUT8;
            vectOut[1][6] <= INV_OUT1;
            vectOut[1][7] <= INV_OUT8;
        end
        else
        begin
            stimIn[Addr_emu] <= Din_emu;
            Dout_emu <= vectOut[Addr_emu];
        end
    end
    
    // DUT
    assign xclk_dut = clk_dut;  // Controlled Clock
    assign xreset = reset;
    assign xenable = enable;
    assign xup = up;
    assign xdown = down;
    assign p_tick = xp_tick;
    assign hsync = xhsync;
    assign vsync = xvsync;
    assign rgb = xrgb;

    assign xNAND_INA = NAND_INA;
    assign xINV_INA = INV_INA;
    assign xNAND_IN = NAND_IN;
    assign xINV_IN = INV_IN;
    assign NAND_OUT1A = xNAND_OUT1A;
    assign NAND_OUT8A = xNAND_OUT8A;
    assign INV_OUT1A = xINV_OUT1A;
    assign INV_OUT8A = xINV_OUT8A;
    assign NAND_OUT1 = xNAND_OUT1;
    assign NAND_OUT8 = xNAND_OUT8;
    assign INV_OUT1 = xINV_OUT1;
    assign INV_OUT8 = xINV_OUT8;

    // VDD Pins
    assign xVDD_8  = 1'b1;
    assign xVDD_18 = 1'b1;
    assign xVDD_28 = 1'b1;
    // GND Pins
    assign xGND_4  = 1'b0;
    assign xGND_9  = 1'b0;
    assign xGND_14 = 1'b0;
    assign xGND_22 = 1'b0;

endmodule

