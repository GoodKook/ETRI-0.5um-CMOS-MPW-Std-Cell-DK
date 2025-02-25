//
// Poorman's Standard-Emulator by GoodKook, goodkook@gmail.com
//  Co-Emulation warapper for the "ALU8_Mult"
//

module ALU8_Mult_wrapper(Din_emu, Dout_emu, Addr_emu, load_emu, get_emu, clk_emu, clk_dut);
    input  [7:0]    Din_emu;
    output [7:0]    Dout_emu;
    input  [2:0]    Addr_emu;
    input           load_emu, get_emu, clk_emu;
    input           clk_dut;    // Cycle-Accurate Emulation

    // Std. Emulation wrapper: Stimulus & Output capture for DUT
    parameter   NUM_STIM_ARRAY  = 2,
                NUM_OUT_ARRAY   = 1;
    reg  [7:0]  stimIn[0:NUM_STIM_ARRAY-1];
    reg  [7:0]  vectOut[0:NUM_OUT_ARRAY-1];
    reg  [7:0]  Dout_emu;
    
    // DUT interface: registered input
    reg        reset;
    reg        LoadA_i;
    reg        LoadB_i;
    reg        LoadCmd_i;
    reg        MulL_i;
    reg        MulH_i;
    reg        Flag_i;
    reg [7:0]  ABCmd_i;
    // DUT interface: output wire. DUT's output will be captured
    wire [7:0] ACC_o;

    // Emulation Transactor ---------------------------------------------
    always @(posedge clk_emu)
    begin
        if (load_emu)   // Input stimulus to DUT
        begin
            reset       <= stimIn[0][0];
            LoadA_i     <= stimIn[0][1];
            LoadB_i     <= stimIn[0][2];
            LoadCmd_i   <= stimIn[0][3];
            MulL_i      <= stimIn[0][4];
            MulH_i      <= stimIn[0][5];
            Flag_i      <= stimIn[0][6];
            ABCmd_i     <= stimIn[1];
        end
        else if (get_emu)   // Capure output from DUT
        begin
            vectOut[0] <= ACC_o[7:0];
        end
        else
        begin
            stimIn[Addr_emu] <= Din_emu;
            Dout_emu <= vectOut[Addr_emu];
        end
    end

    // DUT
    ALU8_Mult u_ALU8_Mult(
        .clk(clk_dut),
        .reset(reset),
        .ABCmd_i(ABCmd_i),
        .LoadA_i(LoadA_i),
        .LoadB_i(LoadB_i),
        .LoadCmd_i(LoadCmd_i),
        .MulL_i(MulL_i),
        .MulH_i(MulH_i),
        .Flag_i(Flag_i),
        .ACC_o(ACC_o));

endmodule
