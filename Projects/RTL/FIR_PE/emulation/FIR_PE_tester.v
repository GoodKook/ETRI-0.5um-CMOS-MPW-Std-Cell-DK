//
// Poorman's Standard-Emulator by GoodKook, goodkook@gmail.com
//  Co-Emulation warapper for the "FIR_PE"
//

module FIR_PE_tester(Din_emu, Dout_emu, Addr_emu, load_emu, get_emu, clk_emu, clk_dut,
    xclk, xCin, xXin, xXout, xYin, xYout, xRdy, xVld, xVDD_1, xVDD_7, xGND);
    // Emulation I/F
    input  [7:0]    Din_emu;
    output [7:0]    Dout_emu;
    input  [2:0]    Addr_emu;
    input           load_emu, get_emu, clk_emu;
    input           clk_dut;
    // MyChip(SOP28) I/F
    output          xclk;
    output [5:0]    xCin;
    output [3:0]    xXin;
    input  [3:0]    xXout;
    output [3:0]    xYin;
    input  [3:0]    xYout;
    output          xRdy;
    input           xVld;
    output          xVDD_1, xVDD_7, xGND;
    // Std. Emulation wrapper: Stimulus & Output capture for DUT
    parameter   NUM_STIM_ARRAY  = 3,
                NUM_OUT_ARRAY   = 2;
    reg [7:0]   stimIn[0:NUM_STIM_ARRAY-1];
    reg [7:0]   vectOut[0:NUM_OUT_ARRAY-1];
    reg [7:0]   Dout_emu;
    
    // DUT interface: registered input
    reg [7:0]  Cin;
    reg [3:0]  Xin;
    reg [3:0]  Yin;
    reg        Rdy;
    // DUT interface: output wire. DUT's output will be captured
    wire [3:0]  Xout;
    wire [3:0]  Yout;
    wire        Vld;

// Emulation Transactor --------------------------------------------------------
// DUT's input bitmap                       DUT's output bitmap
//      +---------------+                       +-------+-------+
//  [0] |7 6 5 4 3 2 1 0|                   [0] |7 6 5 4|3 2 1 0|
//      +-------+-------+                       +-------+-------+
//              |                                   |        |
//              +---------Cin[7:0]                  |        +-----Xout[3:0]
//      +-------+-------+                           +--------------Yout[3:0]
//  [1] |7 6 5 4|3 2 1 0|                       +-------------+-+
//      +-------+-------+                   [1] |7 6 5 4 3 2 1|0|
//          |       |                           +-------------+-+
//          |       +-----Xin[3:0]                             |
//          +-------------Yin[3:0]                             +---Vld
//      +-----------+-+-+
//  [2] |7 6 5 4 3 2|1|0|
//      +-----------+-+-+
//                   | |
//                   | +----Rdy
//                   +------clk
//
    always @(posedge clk_emu)
    begin
        if (load_emu)   // Input stimulus to DUT
        begin
            Cin <= stimIn[0];
            Yin <= stimIn[1][7:4];
            Xin <= stimIn[1][3:0];
            Rdy <= stimIn[2][0];
        end
        else if (get_emu)   // Capure output from DUT
        begin
            vectOut[0][7:4] <= Yout;
            vectOut[0][3:0] <= Xout;
            vectOut[1]      = 8'h00;
            vectOut[1][0]   <= Vld;
        end
        else
        begin
            stimIn[Addr_emu] <= Din_emu;
            Dout_emu <= vectOut[Addr_emu];
        end
    end
    
    // DUT
    assign xclk = clk_dut;  // Controlled Clock
    assign xCin = Cin;
    assign xXin = Xin;
    assign xYin = Yin;
    assign xRdy = Rdy;
    assign Xout = xXout;
    assign Yout = xYout;
    assign Vld  = xVld;

    assign xVDD_1 = 1'b1;
    assign xVDD_7 = 1'b1;
    assign xGND   = 1'b0;
endmodule

