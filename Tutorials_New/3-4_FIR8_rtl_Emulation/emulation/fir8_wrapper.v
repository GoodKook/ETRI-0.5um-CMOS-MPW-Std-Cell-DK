//
// Poorman's Standard-Emulator by GoodKook, goodkook@gmail.com
//  Co-Emulation warapper for the "fir8"
//

module fir8_wrapper(Din_emu, Dout_emu, Addr_emu, load_emu, get_emu, clk_emu, clk_dut);
    input  [7:0]    Din_emu;
    output [7:0]    Dout_emu;
    input  [2:0]    Addr_emu;
    input           load_emu, get_emu, clk_emu;
    input           clk_dut;    // Cycle-Accurate Emulation

    // Std. Emulation wrapper: Stimulus & Output capture for DUT
    parameter   NUM_STIM_ARRAY  = 3,
                NUM_OUT_ARRAY   = 3;
    reg  [7:0]  stimIn[0:NUM_STIM_ARRAY-1];
    reg  [7:0]  vectOut[0:NUM_OUT_ARRAY-1];
    reg  [7:0]  Dout_emu;
    
    // DUT interface: registered input
    reg  [ 7:0] Xin;
    reg  [15:0] Yin;
    // DUT interface: output wire. DUT's output will be captured
    wire [ 7:0] Xout;
    wire [15:0] Yout;

    // Emulation Transactor ---------------------------------------------
    always @(posedge clk_emu)
    begin
        if (load_emu)   // Input stimulus to DUT
        begin
            Xin[ 7:0] <= stimIn[0];
            Yin[ 7:0] <= stimIn[1];
            Yin[15:8] <= stimIn[2];
        end
        else if (get_emu)   // Capure output from DUT
        begin
            vectOut[0] <= Xout[ 7:0];
            vectOut[1] <= Yout[ 7:0];
            vectOut[2] <= Yout[15:8];
        end
        else
        begin
            stimIn[Addr_emu] <= Din_emu;
            Dout_emu <= vectOut[Addr_emu];
        end
    end

    // DUT
    fir8 u_fir8(
        .clk(clk_dut),
        .Xin(Xin),
        .Xout(Xout),
        .Yin(Yin),
        .Yout(Yout));

endmodule

