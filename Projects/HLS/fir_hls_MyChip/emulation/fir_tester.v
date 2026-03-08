//
// Poorman's Standard-Emulator by GoodKook, goodkook@gmail.com
//  Co-Emulation MyChip tester
//
//----------------------------------------------
module fir_tester(
    // Emulator IF
    Din_emu, Dout_emu, Addr_emu, load_emu, get_emu, clk_emu, clk_dut,
    // MyChip IF
    xclk, xrst, xready, xx, xy, xVDD, xGND);

    // Emulator IF
    input  [7:0]    Din_emu;
    output [7:0]    Dout_emu;
    input  [2:0]    Addr_emu;
    input           load_emu, get_emu, clk_emu;
    input           clk_dut;
    // MyChip IF
    output          xclk;
    output          xrst;
    input           xready;
    output [7:0]    xx;
    input  [7:0]    xy;
    output          xVDD, xGND;

    // Std. Emulation for MyChip tester: Stimulus & Output capture for DUT
    parameter   NUM_STIM_ARRAY  = 2,    // for DUT's Inputs, 11-bits
                NUM_OUT_ARRAY   = 2;    // for DUT's Outputs, 20-bits
    reg [7:0]   stimIn[0:NUM_STIM_ARRAY-1];
    reg [7:0]   vectOut[0:NUM_OUT_ARRAY-1];
    reg [7:0]   Dout_emu;

    // DUT interface: registered input
    reg         ap_rst;
    reg         ap_start;
    reg [7:0]   x;
    // DUT interface: output wire. DUT's output will be captured
    wire        ap_done;
    wire        ap_idle;
    wire        ap_ready;
    wire        y_ap_vld;
    wire [7:0]  y;
// Emulation Transactor --------------------------------------------------------
// HLS generated
//----------------------------------------------
//module fir (
//  input   ap_clk;
//  input   ap_rst;
//  input   ap_start;
//  output   ap_done;
//  output   ap_idle;
//  output   ap_ready;
//  output  [7:0] y;
//  output   y_ap_vld;
//  input  [7:0] x);
//-----------------------------------------------
// DUT's input bitmap                       DUT's output bitmap
//      +-------+-+-+-+-+                         +---------------+
//  [0] |7 6 5 4|3|2|1|0|                     [0] |7 6 5 4 3 2 1 0|
//      +-------+-+-+-+-+                         +-------+-------+
//               |   | |                                  |
//               |   | +---ap_rst                         +-----------y[7:0]
//               |   +-----ap_start               +-----+-+-+-+---+
//               |                            [1] |     |4|3|2|1|0|
//               +---------(ap_clk)               +-----+-+-+-+-+-+
//                                                         | | | |
//      +---------------+                                  | | | +-----ap_done
//  [1] |7 6 5 4 3 2 1 0|                                  | | +-------ap_idle
//      +-------+-------+                                  | +---------ap_ready
//              |                                          +-----------y_ap_vld
//              +---------x[7:0]
//-----------------------------------------------

    always @(posedge clk_emu)
    begin
        if (load_emu)   // Input stimulus to DUT
        begin
            ap_rst        <= stimIn[0][0];
            ap_start      <= stimIn[0][1];
            x[7:0]        <= stimIn[1];
        end
        else if (get_emu)   // Capure output from DUT
        begin
            vectOut[0]    <= y[7:0];
            vectOut[1][0] <= ap_done;
            vectOut[1][1] <= ap_idle;
            vectOut[1][2] <= ap_ready;
            vectOut[1][3] <= y_ap_vld;
        end
        else
        begin
            stimIn[Addr_emu] <= Din_emu;
            Dout_emu <= vectOut[Addr_emu];
        end
    end

    // Pad Limited MyChip
    //                 +------\_/------+
    //         ready---|1            28|<--x[1]
    //           rst-->|2            27|<--x[6]
    //           clk-->|3            26|<--x[0]
    //          x[5]-->|4            25|<--x[4]
    //          x[3]-->|5            24|<--x[7]
    //          y[1]-->|6  fir_hls   23|<--x[2]
    //          y[2]---|7            22|<--GND
    //           VDD<--|8            21|---NC
    //          y[5]<--|9            20|-->NC
    //          y[3]<--|10           19|-->NC
    //          y[0]<--|11           18|-->NC
    //          y[4]-->|12           17|-->NC
    //          y[6]-->|13           16|-->NC
    //          y[7]-->|14           15|<--NC
    //                 +---------------+
    //                      SOP28
    assign xclk = clk_dut;
    assign xrst = ap_rst;
    assign xx   = x;
    assign ap_ready = xready;
    assign ap_done  = xready;
    assign y_ap_vld = xready;
    assign y = xy;

    assign xVDD = 1'b1;
    assign xGND = 1'b0;
endmodule

