//
// Poorman's Standard-Emulator by GoodKook, goodkook@gmail.com
//  Co-Emulation test warapper for the "ALU8_Mult"
//

module ALU8_Mult_tester(Din_emu, Dout_emu, Addr_emu, load_emu, get_emu, clk_emu, clk_dut,
                        xclk, xreset, xLoadA_i, xLoadB_i, xLoadCmd_i, xABCmd_i, xACC_o, xDone_o,
                        PNP_C, PNP_B, PNP_E,
                        xVDD_7, xVDD_28, xGND);
    // Emulation I/F
    input  [7:0]    Din_emu;
    output [7:0]    Dout_emu;
    input  [2:0]    Addr_emu;
    input           load_emu, get_emu, clk_emu;
    input           clk_dut;
    // MyChip(SOP28) I/F
    output          xclk;
    output          xreset;
    output          xLoadA_i, xLoadB_i, xLoadCmd_i;
    output [7:0]    xABCmd_i;
    input  [7:0]    xACC_o;
    input           xDone_o;
    output          xVDD_7, xVDD_28, xGND;
    output          PNP_C, PNP_B, PNP_E;
    // Std. Emulation wrapper: Stimulus & Output capture for DUT
    parameter   NUM_STIM_ARRAY  = 2,
                NUM_OUT_ARRAY   = 2;
    reg [7:0]   stimIn[0:NUM_STIM_ARRAY-1];
    reg [7:0]   vectOut[0:NUM_OUT_ARRAY-1];
    reg [7:0]   Dout_emu;
    
    // DUT interface: registered input
    reg         reset, LoadA_i, LoadB_i, LoadCmd_i;
    reg [7:0]   ABCmd_i;
    // DUT interface: output wire. DUT's output will be captured
    wire [7:0]  ACC_o;
    wire        Done_o;

// Emulation Transactor ----------------------------------------
// ALU8_Mult
// DUT's input bitmap             DUT's output bitmap
//      +-----+-+-+-+-+-+             +-------------+-+
//  [0] |7 6 5|4|3|2|1|0|         [0] |7 6 5 4 3 2 1|0|
//      +-----+-+-+-+-+-+             +-------------+-+
//             | | | | |                             |
//             | | | | +---clk                       +---Done_o
//             | | | +---reset
//             | | +---LoadA_i
//             | +---LoadB_i
//             +---LoadCmd_i
//      +---------------+             +---------------+
//  [1] |7 6 5 4 3 2 1 0|         [1] |7 6 5 4 3 2 1 0|
//      +---------------+             +---------------+
//              |                             |
//              +---ABCmd_i[7:0]              +---ACC_o[7:0]
//
    always @(posedge clk_emu)
    begin
        if (load_emu)   // Input stimulus to DUT
        begin
            reset     <= stimIn[0][1];
            LoadA_i   <= stimIn[0][2];
            LoadB_i   <= stimIn[0][3];
            LoadCmd_i <= stimIn[0][4];
            ABCmd_i   <= stimIn[1];
        end
        else if (get_emu)   // Capure output from DUT
        begin
            vectOut[0][0] <= Done_o;
            vectOut[1]    <= ACC_o;
        end
        else
        begin
            stimIn[Addr_emu] <= Din_emu;
            Dout_emu <= vectOut[Addr_emu];
        end
    end
    
    // DUT
    assign xclk       = clk_dut;  // Controlled Clock
    assign xreset     = reset;
    assign xLoadA_i   = LoadA_i;
    assign xLoadB_i   = LoadB_i;
    assign xLoadCmd_i = LoadCmd_i;
    assign xABCmd_i   = ABCmd_i;
    assign ACC_o      = xACC_o;
    assign Done_o     = xDone_o;

    assign xVDD_7  = 1'b1;
    assign xVDD_28 = 1'b1;
    assign xGND    = 1'b0;

    assign PNP_C = 1'bZ;
    assign PNP_B = 1'bZ;
    assign PNP_E = 1'bZ;
endmodule

