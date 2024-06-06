//
// Poorman's Standard-Emulator by GoodKook, goodkook@gmail.com
//  Purpose: Standard emulation wrapper for the DUT
//
//  DUT: Loadable 8-bit counter.
//       Four sub-module LS163 are used
//

`ifdef EMU_MONITOR_LED
module DUT_wrapper(Din_emu, Dout_emu, Addr_emu, load_emu, get_emu, clk_emu, clk_dut, clk_LED);
`else
module DUT_wrapper(Din_emu, Dout_emu, Addr_emu, load_emu, get_emu, clk_emu, clk_dut);
`endif
    input  [7:0]    Din_emu;
    output [7:0]    Dout_emu;
    input  [2:0]    Addr_emu;
    input           load_emu, get_emu, clk_emu;
    input           clk_dut;
`ifdef EMU_MONITOR_LED
    output clk_LED;
    // Monitoring emulation process by blinking LED
    reg [3:0] counter;
    always @(posedge clk_dut)
    begin
        counter <= counter + 1;
    end
    assign clk_LED = counter[3];
`endif
    // Standard Emulation wrapper: Stimulus & Output capture for DUT
    parameter   NUM_STIM_ARRAY  = 2,
                NUM_OUT_ARRAY   = 3;
    reg [7:0]   stimIn[NUM_STIM_ARRAY];
    reg [7:0]   vectOut[NUM_OUT_ARRAY];
    reg [7:0]   Dout_emu;

    // DUT interface: registered input
    reg         nCLR, nLOAD;
    reg  [1:0]  Digit;
    reg  [3:0]  Din;
    // DUT interface: output wire. DUT's output will be captured
    wire [15:0] Dout;
    wire        RCO;

    // Emulation Transactor ---------------------------------------------
    //  stimIn[0] = {----|Din[3]|Din[2]|Din[1]|Din[0]}
    //  stimIn[1] = {----|nCLR|nLOAD|Digit[1]|Digit[0]}
    // vectOut[0] = Dout[ 7:0]
    // vectOut[1] = Dout[15:8]
    // vectOut[2] = {-------|RCO}
    always @(posedge clk_emu)
    begin
        if (load_emu)       // Set input stimulus to DUT
        begin
            Din   <= stimIn[0][3:0];
            Digit <= stimIn[1][1:0];
            nLOAD <= stimIn[1][2];
            nCLR  <= stimIn[1][3];
        end
        else if (get_emu)   // Capure output from DUT
        begin
            vectOut[0]    <= Dout[ 7:0];
            vectOut[1]    <= Dout[15:8];
            vectOut[2]     = 0;
            vectOut[2][0] <= RCO;
        end
        else
        begin
            stimIn[Addr_emu] <= Din_emu;    // stimulus: Host -> DUT
            Dout_emu <= vectOut[Addr_emu];  // output vector: DUT->Host
        end
    end

    // DUT --------------------------------------------------------------
    DUT u_DUT (
        .CLK(clk_dut),
        .nCLR(nCLR),
        .nLOAD(nLOAD),
        .Digit(Digit),
        .Din(Din),
        .Dout(Dout),
        .RCO(RCO));
endmodule
