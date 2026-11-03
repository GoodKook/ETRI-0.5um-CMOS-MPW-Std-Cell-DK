//
// Poorman's Standard-Emulator by GoodKook, goodkook@gmail.com
//  Co-Emulation warapper for the "fir8" DUT (Design Under Test)
//

module fir8_wrapper(Din_emu, Dout_emu, Addr_emu, load_emu, get_emu, clk_emu, clk_dut, io_req);
    input  [7:0]    Din_emu;
    output [7:0]    Dout_emu;
    input  [2:0]    Addr_emu;
    input           load_emu, get_emu, clk_emu;
    input           clk_dut;
    output          io_req;
    
    // Std. Emulation wrapper: Stimulus & Output capture for DUT
    parameter   NUM_STIM_ARRAY  = 2,
                NUM_OUT_ARRAY   = 2;
    reg [7:0]   stimIn[0:NUM_STIM_ARRAY-1];
    reg [7:0]   vectOut[0:NUM_OUT_ARRAY-1];
    reg [7:0]   Dout_emu;

// Emulation Transactor ----------------------------------------
// DUT's input bitmap               DUT's output bitmap
//      +---------+-+-+-+               +-------------+-+
//  [0] |7 6 5 4 3|2|1|0|           [0] |7 6 5 4 3 2 1|0|
//      +---------+-+-+-+               +-------------+-+
//                 | | |                               |
//                 | | +---in_valid                    +---out_valid
//                 | +---rst_n          +---------------+
//                 +---clk          [1] |7 6 5 4 3 2 1 0|
//       +---------------+              +-------+-------+
//   [1] |7 6 5 4 3 2 1 0|                      |
//       +-------+-------+                      +---y[7:0]
//               |
//               +---x[7:0]
//
    // DUT interface: registered input
    reg         rst_n, in_valid;
    reg [7:0]   x;
    // DUT interface: output wire. DUT's output will be captured
    wire        out_valid;
    wire [7:0]  y;

    always @(posedge clk_emu)
    begin
        if (load_emu)   // Input stimulus to DUT
        begin
            in_valid <= stimIn[0][0];
            rst_n    <= stimIn[0][1];
            x        <= stimIn[1];
        end
        else if (get_emu)   // Capure output from DUT
        begin
            vectOut[0][0]   <= out_valid;
            vectOut[1]      <= y;
        end
        else
        begin
            stimIn[Addr_emu] <= Din_emu;
            Dout_emu <= vectOut[Addr_emu];
        end
    end
    
    // DUT
    fir8 dut(
        .clk(clk_dut),
        .rst_n(rst_n),
        .in_valid(in_valid),
        .x(x),
        .out_valid(out_valid),
        .y(y));

    assign io_req = clk_dut;

endmodule

