//
// Poorman's Standard-Emulator by GoodKook, goodkook@gmail.com
//  Co-Emulation warapper for the "pong_SbS"
//

module pong_SbS_wrapper(Din_emu, Dout_emu, Addr_emu, load_emu, get_emu, clk_emu, clk_dut);
    input  [7:0]    Din_emu;
    output [7:0]    Dout_emu;
    input  [2:0]    Addr_emu;
    input           load_emu, get_emu, clk_emu;
    input           clk_dut;

    // Std. Emulation wrapper: Stimulus & Output capture for DUT
    parameter   NUM_STIM_ARRAY  = 1,
                NUM_OUT_ARRAY   = 2;
    reg [7:0]   stimIn[0:NUM_STIM_ARRAY-1];
    reg [7:0]   vectOut[0:NUM_OUT_ARRAY-1];
    reg [7:0]   Dout_emu;
    
    // DUT interface: registered input
    reg        reset;
    reg        busy;
    reg        up;
    reg        down;
    // DUT interface: output wire. DUT's output will be captured
    wire [6:0]  x_pos;
    wire [5:0]  y_pos;
    wire        pixel;
    wire        p_tick;

// Emulation Transactor --------------------------------------------------------
// DUT's input bitmap
//      +-----+-+-+-+-+-+
//  [0] |7 6 5|4|3|2|1|0|
//      +-----+-+-+-+-+-+
//             | | | | |
//             | | | | +----clk
//             | | | +---reset
//             | | +---busy
//             | +---up
//             +---down
// DUT's output bitmap
//      +-+-------------+
//  [0] |7|6 5 4 3 2 1 0|
//      +-+-------------+
//               |
//               +---x_pos[6:0]
//      +-+-+-------+-+-+
//  [1] |7|6|5 4 3 2 1 0|
//      +-+-+-----------+
//       | |      |
//       | |      +---y_pos[5:0]
//       | +---pixel
//       +---p_tick
//
    always @(posedge clk_emu)
    begin
        if (load_emu)   // Input stimulus to DUT
        begin
            reset <= stimIn[0][1];
            busy  <= stimIn[0][2];
            up    <= stimIn[0][3];
            down  <= stimIn[0][4];
        end
        else if (get_emu)   // Capure output from DUT
        begin
            vectOut[0][6:0] <= x_pos;
            vectOut[1][5:0] <= y_pos;
            vectOut[1][6]   <= pixel;
            vectOut[1][7]   <= p_tick;
        end
        else
        begin
            stimIn[Addr_emu] <= Din_emu;
            Dout_emu <= vectOut[Addr_emu];
        end
    end
    
    // DUT
    pong_SbS u_pong_SbS(
        .clk(clk_dut),  // Controlled Clock
        .reset(reset),
        .x_pos(x_pos),
        .y_pos(y_pos),
        .pixel(pixel),
        .p_tick(p_tick),
        .busy(busy),
        .up(up),
        .down(down));

endmodule

