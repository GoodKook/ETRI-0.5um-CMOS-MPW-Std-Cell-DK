//
// Poorman's Standard-Emulator by GoodKook, goodkook@gmail.com
//  Co-Emulation warapper for the "test"
//

module Clock_wrapper(
    // Emulator IF
    Din_emu, Dout_emu, Addr_emu, load_emu, get_emu, clk_emu, clk_dut);
    // Emulator IF
    input  [7:0]    Din_emu;
    output [7:0]    Dout_emu;
    input  [2:0]    Addr_emu;
    input           load_emu, get_emu, clk_emu;
    input           clk_dut;
    // Std. Emulation wrapper: Stimulus & Output capture for DUT
    parameter   NUM_STIM_ARRAY  = 1,
                NUM_OUT_ARRAY   = 3;
    reg [7:0]   stimIn[0:NUM_STIM_ARRAY-1];
    reg [7:0]   vectOut[0:NUM_OUT_ARRAY-1];
    reg [7:0]   Dout_emu;
    // DUT interface: registered input
    reg         ap_clk;
    reg         ap_rst;
    reg         reset;
    reg         start_r;
    // DUT interface: output wire. DUT's output will be captured
    wire [7:0]  hh;
    wire [7:0]  mm;
    wire [7:0]  ss;

// Emulation Transactor --------------------------------------------------------
// DUT's input bitmap                   DUT's output bitmap
//      +-------+-+-+-+-+                    +-----+-+-+-+-+-+
//  [0] |       |3|2|1|0|                [0] |     |4 3 2 1 0|
//      +-------+-+-+-+-+                    +-----+-+-+-+-+-+
//               | | | |                              hh
//               | | | +---start_r           +---+-----------+
//               | | +-----reset         [1] |   |5 4 3 2 1 0|
//               | +-------ap_rst            +---+-----------+
//               +---------ap_clk                     mm
//                                           +---+-+-+-+-+-+-+
//                                       [2] |   |5 4 3 2 1 0|
//                                           +---+-+-+-+-+-+-+
//                                                    ss
//

    always @(posedge clk_emu)
    begin
        if (load_emu)   // Input stimulus to DUT
        begin
            start_r <= stimIn[0][0];
            reset   <= stimIn[0][1];
            ap_rst  <= stimIn[0][2];
            ap_clk  <= stimIn[0][3];
        end
        else if (get_emu)   // Capure output from DUT
        begin
            vectOut[0]  <= hh;
            vectOut[1]  <= mm;
            vectOut[2]  <= ss;
        end
        else
        begin
            stimIn[Addr_emu] <= Din_emu;
            Dout_emu <= vectOut[Addr_emu];
        end
    end
    
    // DUT
    Clock u_Clock(
            .ap_clk(clk_dut),   // ap_clk
            .ap_rst(ap_rst),
            .reset(reset),
            .start_r(start_r),
            .hh(hh),
            .mm(mm),
            .ss(ss));
endmodule


