//
// Poorman's Standard-Emulator by GoodKook, goodkook@gmail.com
//  Co-Emulation warapper for the "ALU8_Mult"
//

module ALU8_Mult_wrapper(Din_emu, Dout_emu, Addr_emu, load_emu, get_emu, clk_emu, clk_dut);
    input  [7:0]    Din_emu;
    output [7:0]    Dout_emu;
    input  [2:0]    Addr_emu;
    input           load_emu, get_emu, clk_emu;
    input           clk_dut;

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
    ALU8_Mult u_ALU8_Mult(
        .clk(clk_dut),  // Controlled Clock
        .reset(reset),
        .LoadA_i(LoadA_i),
        .LoadB_i(LoadB_i),
        .LoadCmd_i(LoadCmd_i),
        .ABCmd_i(ABCmd_i),
        .ACC_o(ACC_o),
        .Done_o(Done_o));

endmodule

