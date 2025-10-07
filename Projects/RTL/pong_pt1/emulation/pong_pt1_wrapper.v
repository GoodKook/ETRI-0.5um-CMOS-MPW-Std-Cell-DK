//
// Poorman's Standard-Emulator by GoodKook, goodkook@gmail.com
//  Co-Emulation warapper for the "pong_pt1"
//

module pong_pt1_wrapper(Din_emu, Dout_emu, Addr_emu, load_emu, get_emu, clk_emu, clk_dut);
    input  [7:0]    Din_emu;
    output [7:0]    Dout_emu;
    input  [2:0]    Addr_emu;
    input           load_emu, get_emu, clk_emu;
    input           clk_dut;

    // Std. Emulation wrapper: Stimulus & Output capture for DUT
    parameter   NUM_STIM_ARRAY  = 1,
                NUM_OUT_ARRAY   = 1;
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
//
    // DUT interface: registered input
    reg     reset, enable, up, down;
    // DUT interface: output wire. DUT's output will be captured
    wire    p_tick, hsync, vsync, rgb;

    always @(posedge clk_emu)
    begin
        if (load_emu)   // Input stimulus to DUT
        begin
            down   <= stimIn[0][0];
            up     <= stimIn[0][1];
            enable <= stimIn[0][2];
            reset  <= stimIn[0][3];
        end
        else if (get_emu)   // Capure output from DUT
        begin
            vectOut[0][0] <= rgb;
            vectOut[0][1] <= vsync;
            vectOut[0][2] <= hsync;
            vectOut[0][3] <= p_tick;
        end
        else
        begin
            stimIn[Addr_emu] <= Din_emu;
            Dout_emu <= vectOut[Addr_emu];
        end
    end
    
    // DUT
    pong_pt1 u_pong_pt1(
        .clk(clk_dut),  // Controlled Clock
        .reset(reset),
        .enable(enable),
        .up(up),
        .down(down),
        .p_tick(p_tick),
        .hsync(hsync),
        .vsync(vsync),
        .rgb(rgb));

endmodule

