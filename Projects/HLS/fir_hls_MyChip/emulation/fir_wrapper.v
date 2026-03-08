//
// Poorman's Standard-Emulator by GoodKook, goodkook@gmail.com
//  Co-Emulation warapper
//
//----------------------------------------------
module fir_wrapper(
    // Emulator IF
    Din_emu, Dout_emu, Addr_emu, load_emu, get_emu, clk_emu, clk_dut);

    input  [7:0]    Din_emu;
    output [7:0]    Dout_emu;
    input  [2:0]    Addr_emu;
    input           load_emu, get_emu, clk_emu;
    input           clk_dut;

    // Std. Emulation wrapper: Stimulus & Output capture for DUT
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

//Vitis-HLS generated RTL module
    fir u_fir (
        .ap_clk(clk_dut),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .y(y),
        .y_ap_vld(y_ap_vld),
        .x(x));

endmodule

