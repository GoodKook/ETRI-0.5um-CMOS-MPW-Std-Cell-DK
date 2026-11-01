//
// Poorman's Standard-Emulator by GoodKook, goodkook@gmail.com
//  Co-Emulation warapper for the "clock_rtl"
//

module clock_rtl_wrapper(Din_emu, Dout_emu, Addr_emu, load_emu, get_emu, clk_emu, clk_dut, io_req);
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

// Emulation Transactor ----------------------------------------
// DUT's input bitmap               DUT's output bitmap
//      +-------+-+-+-+-+               +---+-----------+
//  [0] |7 6 5 4|3|2|1|0|           [0] |7 6|5 4 3 2 1 0|
//      +-------+-+-+-+-+               +-+-+-----+-----+
//               | | | |                          |
//               | | | +---start                  +---ss[5:0]
//               | | +---clear          +---+-----------+
//               | +---rst_n        [1] |7 6|5 4 3 2 1 0|
//               +---clk                +-+-+-----+-----+
//                                                |
//                                                +---mm[5:0]
//                                      +-----+---------+
//                                  [2] |7 6 5|4 3 2 1 0|
//                                      +-----+---+-----+
//                                                |
//                                                +---hh[4:0]

    // DUT interface: registered input
    reg     rst_n, clear, start;
    // DUT interface: output wire. DUT's output will be captured
    wire    [4:0] hh;
    wire    [5:0] mm, ss;

    always @(posedge clk_emu)
    begin
        if (load_emu)   // Input stimulus to DUT
        begin
            start <= stimIn[0][0];
            clear <= stimIn[0][1];
            rst_n <= stimIn[0][2];
        end
        else if (get_emu)   // Capure output from DUT
        begin
            vectOut[0][5:0] <= ss;
            vectOut[1][5:0] <= mm;
            vectOut[2][4:0] <= hh;
        end
        else
        begin
            stimIn[Addr_emu] <= Din_emu;
            Dout_emu <= vectOut[Addr_emu];
        end
    end
    
    // DUT
    clock_rtl dut(
        .clk(clk_dut),
        .rst_n(rst_n),
        .clear(clear),
        .start(start),
        .ss(ss),
        .mm(mm), 
        .hh(hh));

    assign io_req = clk_dut;

endmodule

