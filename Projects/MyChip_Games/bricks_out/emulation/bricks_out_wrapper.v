//
// Poorman's Standard-Emulator by GoodKook, goodkook@gmail.com
//  Co-Emulation warapper for the "bricks_out"
//

module bricks_out_wrapper(Din_emu, Dout_emu, Addr_emu, load_emu, get_emu, clk_emu, clk_dut, io_req);
    input  [7:0]    Din_emu;
    output [7:0]    Dout_emu;
    input  [2:0]    Addr_emu;
    input           load_emu, get_emu, clk_emu;
    input           clk_dut;
    output          io_req;
    
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
    
    // DUT
    bricks_out u_bricks_out(
        .clk(clk_dut),  // Controlled Clock
        .reset(reset),
        .v_sync(v_sync),
        .pixel(pixel),
        .p_tick(p_tick),
        .btn_left(btn_left),
        .btn_right(btn_right),
        .game_over(game_over),
        .game_complete(game_complete),
        .game_new(game_new));

    assign io_req = clk_dut;

endmodule

