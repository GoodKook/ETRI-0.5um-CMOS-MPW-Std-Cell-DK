//
// Poorman's Standard-Emulator by GoodKook, goodkook@gmail.com
//  Co-Emulation Chip-Test warapper for the "bricks_out"
//

module bricks_out_tester(Din_emu, Dout_emu, Addr_emu, load_emu, get_emu, clk_emu, clk_dut, io_req,
    // Chip interface to DUT's output
    xv_sync,
    xpixel,
    xp_tick,
    xgame_over,
    xgame_complete,
    // Chip interface to DUT's input
    xclk,
    xreset,
    xbtn_left,
    xbtn_right,
    xgame_new);

    // Emulation Interfaces
    input  [7:0]    Din_emu;
    output [7:0]    Dout_emu;
    input  [2:0]    Addr_emu;
    input           load_emu, get_emu, clk_emu;
    input           clk_dut;

    // Chip interface to DUT's output
    input           xv_sync;
    input           xpixel;
    input           xp_tick;
    input           xgame_over;
    input           xgame_complete;
    // Chip interface to DUT's inputput
    output          xclk;
    output          xreset;
    output          xbtn_left;
    output          xbtn_right;
    output          xgame_new;
    // DUT Power: VDD & GND
    output [6:0]    xVDD;
    output [6:0]    xGND;

    // Std. Emulation wrapper: Stimulus & Output capture for DUT
    parameter   NUM_STIM_ARRAY  = 1,
                NUM_OUT_ARRAY   = 1;
    reg [7:0]   stimIn[0:NUM_STIM_ARRAY-1];
    reg [7:0]   vectOut[0:NUM_OUT_ARRAY-1];
    reg [7:0]   Dout_emu;
    
// Emulation Transactor -------------------------------
// DUT's input bitmap               DUT's output bitmap
//      +-----+-+-+-+-+-+               +-----+-+-+-+-+-+
//  [0] |7 6 5|4|3|2|1|0|           [0] |7 6 5|4|3|2|1|0|
//      +-----+-+-+-+-+-+               +-----+-+-+-+-+-+
//             | | | | |                       | | | | |
//             | | | | +---game_new            | | | | +---v_sync
//             | | | +---btn_right             | | | +---pixel
//             | | +---btn_left                | | +---p_tick
//             | +---reset                     | +---game_over
//             +---clk                         +---game_complete
//

    // DUT interface: registered input
    reg     reset, btn_left, btn_right, game_new;
    // DUT interface: output wire. DUT's output will be captured
    wire    v_sync, pixel, p_tick, game_over, game_complete;

    always @(posedge clk_emu)
    begin
        if (load_emu)   // Input stimulus to DUT
        begin
            game_new  <= stimIn[0][0];
            btn_right <= stimIn[0][1];
            btn_left  <= stimIn[0][2];
            reset     <= stimIn[0][3];
        end
        else if (get_emu)   // Capure output from DUT
        begin
            vectOut[0][0] <= v_sync;
            vectOut[0][1] <= pixel;
            vectOut[0][2] <= p_tick;
            vectOut[0][3] <= game_over;
            vectOut[0][4] <= game_complete;
        end
        else
        begin
            stimIn[Addr_emu] <= Din_emu;
            Dout_emu <= vectOut[Addr_emu];
        end
    end
    
    // To DUT
    assign xclk = clk_dut;  // Controlled Clock
    assign xreset = reset;
    assign xbtn_left = btn_left;
    assign xbtn_right = btn_right;
    assign xgame_new = game_new;
    // From DUT
    assign v_sync = xv_sync;
    assign pixel = xpixel;
    assign p_tick = xp_tick;
    assign game_over = xgame_over;
    assign game_complete = xgame_complete;
    // Loop-Back
    assign io_req = clk_dut;
    // DUT Power
    integer i;
    always @(*)
    begin
        for (i = 0; i < 8; i = i + 1)
        begin
            xVDD[i] = 1;
            xGND[i] = 0;
        end
    end

endmodule

