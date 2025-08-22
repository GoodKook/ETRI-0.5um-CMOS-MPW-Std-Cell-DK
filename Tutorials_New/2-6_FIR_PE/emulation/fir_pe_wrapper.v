//
// Poorman's Standard-Emulator by GoodKook, goodkook@gmail.com
//  Co-Emulation warapper for the "fir_pe"
//

`ifdef EMU_MONITOR
module fir_pe_wrapper(Din_emu, Dout_emu, Addr_emu, load_emu, get_emu, clk_emu, clk_dut, clk_LED);
`else
module fir_pe_wrapper(Din_emu, Dout_emu, Addr_emu, load_emu, get_emu, clk_emu, clk_dut);
`endif
    input  [7:0]    Din_emu;
    output [7:0]    Dout_emu;
    input  [2:0]    Addr_emu;
    input           load_emu, get_emu, clk_emu;
    input           clk_dut;
`ifdef EMU_MONITOR
    output clk_LED;
    // Monitoring emulation process by blinking LED
    reg [3:0] counter;
    always @(posedge clk_dut)
    begin
        counter <= counter + 1;
    end
    assign clk_LED = counter[3];
`endif
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

    // Emulation Transactor ---------------------------------------------
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
    fir_pe u_fir_pe(
        .clk(clk_dut),
        .Cin(Cin),
        .Xin(Xin),
        .Xout(Xout),
        .Yin(Yin),
        .Yout(Yout),
        .Rdy(Rdy),
        .Vld(Vld));

endmodule

