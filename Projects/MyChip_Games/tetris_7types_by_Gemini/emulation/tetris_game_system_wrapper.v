//
// Poorman's Standard-Emulator by GoodKook, goodkook@gmail.com
//  Co-Emulation warapper for the "tetris_game_system"
//

module tetris_game_system_wrapper(Din_emu, Dout_emu, Addr_emu, load_emu, get_emu, clk_emu, clk_dut, io_req);
    input  [7:0]    Din_emu;
    output [7:0]    Dout_emu;
    input  [2:0]    Addr_emu;
    input           load_emu, get_emu, clk_emu;
    input           clk_dut;
    output          io_req;
    
    // Std. Emulation wrapper: Stimulus & Output capture for DUT
    parameter   NUM_STIM_ARRAY  = 1,
                NUM_OUT_ARRAY   = 3;
    reg [7:0]   stimIn[0:NUM_STIM_ARRAY-1];
    reg [7:0]   vectOut[0:NUM_OUT_ARRAY-1];
    reg [7:0]   Dout_emu;

// Emulation Transactor -------------------------------
// DUT's input bitmap                DUT's output bitmap
//      +-+-+-+-+-+-+-+-+                +-----+-+-+-+-+-+
//  [0] |7|6|5|4|3|2|1|0|            [0] |7 6 5|4|3|2|1|0|
//      +-+-+-+-+-+-+-+-+                +-----+-+-+-+-+-+
//         | | | | | | |                        | | | | |
//         | | | | | | +---btn_right            | | | | +---pixel_data
//         | | | | | +---btn_left               | | | +---video_active
//         | | | | +---btn_down                 | | +---v_sync
//         | | | +---btn_up                     | +---h_sync
//         | | +---tick_i                       +---game_over
//         | +---rst_n                   +---------------+
//         +---clk                   [1] |7 6 5 4 3 2 1 0|
//                                       +-------+-------+
//                                               |
//                                               +---score[7:0]
//                                       +---------------+
//                                   [2] |7 6 5 4 3 2 1 0|
//                                       +-------+-------+
//                                               |
//                                               +---score[15:8]
//

    // DUT interface: registered input
    reg     rst_n, tick_i, btn_up, btn_down, btn_left, btn_right;
    // DUT interface: output wire. DUT's output will be captured
    wire    pixel_data, video_active, v_sync, h_sync, game_over;
    wire [15:0]  score;

    always @(posedge clk_emu)
    begin
        if (load_emu)   // Input stimulus to DUT
        begin
            btn_right <= stimIn[0][0];
            btn_left  <= stimIn[0][1];
            btn_down  <= stimIn[0][2];
            btn_up    <= stimIn[0][3];
            tick_i    <= stimIn[0][4];
            rst_n     <= stimIn[0][5];
        end
        else if (get_emu)   // Capure output from DUT
        begin
            vectOut[0][0]   <= pixel_data;
            vectOut[0][1]   <= video_active;
            vectOut[0][2]   <= v_sync;
            vectOut[0][3]   <= h_sync;
            vectOut[0][4]   <= game_over;
            vectOut[1]      <= score[7:0];
            vectOut[2]      <= score[15:8];
        end
        else
        begin
            stimIn[Addr_emu] <= Din_emu;
            Dout_emu <= vectOut[Addr_emu];
        end
    end
    
    // DUT
    tetris_game_system dut(
        .clk(clk_dut),
        .rst_n(rst_n),
        .tick_i(tick_i),
        .btn_left(btn_left),
        .btn_right(btn_right),
        .btn_up(btn_up),
        .btn_down(btn_down),
        .pixel_data(pixel_data), 
        .video_active(video_active),
        .v_sync(v_sync),
        .h_sync(h_sync),
        .game_over(game_over),
        .score(score));

    assign io_req = clk_dut;

endmodule

