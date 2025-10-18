//
// Poorman's Standard-Emulator by GoodKook, goodkook@gmail.com
//  Co-Emulation warapper for the "TOP_MODULE"
//
//-------------------------------------------
//Vitis-HLS generated RTL module
//  module TOP_MODULE (
//      input   ap_clk;
//      input   ap_rst;
//      input   ap_start;
//      input   [7:0] x;
//      output  ap_done;
//      output  ap_idle;
//      output  ap_ready;
//      output  y_ap_vld;
//      output  [15:0] y);
//Number of IOs,
//  Inputs: 11-bits (2-Bytes)
//  Outputs: 20-bits (3-Bytes)
//-------------------------------------------

module TOP_MODULE_wrapper(
    // Emulator IF
    Din_emu, Dout_emu, Addr_emu, load_emu, get_emu, clk_emu, clk_dut);
    // Emulator IF
    input  [7:0]    Din_emu;
    output [7:0]    Dout_emu;
    input  [2:0]    Addr_emu;
    input           load_emu, get_emu, clk_emu;
    input           clk_dut;
    // Std. Emulation wrapper: Stimulus & Output capture for DUT
    parameter   NUM_STIM_ARRAY  = 2,
                NUM_OUT_ARRAY   = 3;
    reg [7:0]   stimIn[0:NUM_STIM_ARRAY-1];
    reg [7:0]   vectOut[0:NUM_OUT_ARRAY-1];
    reg [7:0]   Dout_emu;
    // DUT interface: registered input
    reg   ap_clk;
    reg   ap_rst;
    reg   ap_start;
    reg   [7:0] x;
    // DUT interface: output wire. DUT's output will be captured
    wire  ap_done;
    wire  ap_idle;
    wire  ap_ready;
    wire  y_ap_vld;
    wire  [15:0] y;
// Emulation Transactor --------------------------------------------------------
// DUT's input bitmap
//      +---------+-+-+-+       +-+-+-+-+-+-+-+-+
//  [0] |         |2|1|0|   [1] |     x[7:0]    |
//      +---------+-+-+-+       +-+-+-+-+-+-+-+-+
//                 | | |
//                 | | +---ap_start
//                 | +---ap_rst
//                 +---ap_clk
// DUT's output bitmap
//      +-------+-+-+-+-+       +-+-+-+-+-+-+-+-+       +-+-+-+-+-+-+-+-+
//  [0] |       |3|2|1|0|   [1] |     y[7:0]    |   [2] |    y[15:8]    |
//      +-------+-+-+-+-+       +-+-+-+-+-+-+-+-+       +-+-+-+-+-+-+-+-+
//               | | | |
//               | | | +---y_ap_vld
//               | | +---ap_ready
//               | +---ap_idle
//               +---ap_done
//
    always @(posedge clk_emu)
    begin
        if (load_emu)   // Input stimulus to DUT
        begin
            ap_start <= stimIn[0][0];
            ap_rst   <= stimIn[0][1];
            ap_clk   <= stimIn[0][2];
            x        <= stimIn[1];
        end
        else if (get_emu)   // Capure output from DUT
        begin
            vectOut[0][0] <= y_ap_vld;
            vectOut[0][1] <= ap_ready;
            vectOut[0][2] <= ap_idle;
            vectOut[0][3] <= ap_done;
            vectOut[1]    <= y[7:0];
            vectOut[2]    <= y[15:8];
        end
        else
        begin
            stimIn[Addr_emu] <= Din_emu;
            Dout_emu <= vectOut[Addr_emu];
        end
    end
    
    // DUT
    TOP_MODULE u_TOP_MODULE(
            .ap_clk(clk_dut),   // ap_clk
            .ap_rst(ap_rst),
            .ap_start(ap_start),
            .x(x),
            .ap_done(ap_done),
            .ap_idle(ap_idle),
            .ap_ready(ap_ready),
            .y_ap_vld(y_ap_vld),
            .y(y));

endmodule


