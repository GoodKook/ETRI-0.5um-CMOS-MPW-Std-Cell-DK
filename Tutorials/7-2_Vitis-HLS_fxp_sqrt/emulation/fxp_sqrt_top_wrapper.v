//
// Poorman's Standard-Emulator by GoodKook, goodkook@gmail.com
//  Co-Emulation warapper
//

module fxp_sqrt_top_wrapper(
    // Emulator IF
    Din_emu, Dout_emu, Addr_emu, load_emu, get_emu, clk_emu, clk_dut);

    input  [7:0]    Din_emu;
    output [7:0]    Dout_emu;
    input  [2:0]    Addr_emu;
    input           load_emu, get_emu, clk_emu;
    input           clk_dut;

    // Std. Emulation wrapper: Stimulus & Output capture for DUT
    parameter   NUM_STIM_ARRAY  = 4,
                NUM_OUT_ARRAY   = 4;
    reg [7:0]   stimIn[0:NUM_STIM_ARRAY-1];
    reg [7:0]   vectOut[0:NUM_OUT_ARRAY-1];
    reg [7:0]   Dout_emu;

    // DUT interface: registered input
    reg         ap_rst;
    reg         ap_start;
    reg         ap_continue;
    reg [23:0]  in_val;
    // DUT interface: output wire. DUT's output will be captured
    wire        ap_done;
    wire        ap_idle;
    wire        ap_ready;
    wire [27:0] ap_return;
// Emulation Transactor --------------------------------------------------------
// DUT's input bitmap                       DUT's output bitmap
//      +-------+-+-+-+-+                       +---------------+
//  [0] |       |3|2|1|0|                   [0] |7 6 5 4 3 2 1 0|
//      +-------+-+-+-+-+                       +-------+-------+
//               | | | |                                |
//               | | | +---ap_rst                       +----------ap_return[7:0]
//               | | +-----ap_start             +---------------+
//               | +-------ap_continue      [1] |7 6 5 4 3 2 1 0|
//               +---------(ap_clk)             +-------+-------+
//      +---------------+                               |
//  [1] |7 6 5 4 3 2 1 0|                               +----------ap_return[15:8]
//      +-------+-------+                       +---------------+
//              |                           [2] |7 6 5 4 3 2 1 0|
//              +---------in_val[7:0]           +-------+-------+
//      +---------------+                               |
//  [2] |7 6 5 4 3 2 1 0|                               +----------ap_return[23:16]
//      +-------+-------+                       +-+-+-+-+-------+
//              |                           [3] | |6|5|4|3 2 1 0|
//              +---------in_val[15:8]          +-+-+-+-+---+---+
//      +---------------+                          | | |    |
//  [3] |7 6 5 4 3 2 1 0|                          | | |    +------ap_return[27:24]
//      +-------+-------+                          | | +-----------ap_done
//              |                                  | +-------------ap_idle
//              +---------in_val[23:16]            +---------------ap_ready
//
    always @(posedge clk_emu)
    begin
        if (load_emu)   // Input stimulus to DUT
        begin
            ap_rst          <= stimIn[0][0];
            ap_start        <= stimIn[0][1];
            ap_continue     <= stimIn[0][2];
            in_val[7:0]     <= stimIn[1];
            in_val[15:8]    <= stimIn[2];
            in_val[23:16]   <= stimIn[3];
        end
        else if (get_emu)   // Capure output from DUT
        begin
            vectOut[0]      <= ap_return[7:0];
            vectOut[1]      <= ap_return[15:8];
            vectOut[2]      <= ap_return[23:16];
            vectOut[3][3:0] <= ap_return[27:24];
            vectOut[3][4]   <= ap_done;
            vectOut[3][5]   <= ap_idle;
            vectOut[3][6]   <= ap_ready;
        end
        else
        begin
            stimIn[Addr_emu] <= Din_emu;
            Dout_emu <= vectOut[Addr_emu];
        end
    end
    
    // DUT
    fxp_sqrt_top u_fxp_sqrt_top(
        .ap_clk(clk_dut),   // ap_clk
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .ap_done(ap_done),
        .ap_continue(ap_continue),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .in_val(in_val),
        .ap_return(ap_return));

endmodule


