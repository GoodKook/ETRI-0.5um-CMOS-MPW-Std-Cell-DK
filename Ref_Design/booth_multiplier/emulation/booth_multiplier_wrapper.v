//
// Poorman's Standard-Emulator by GoodKook, goodkook@gmail.com
//  Purpose: Standard emulation wrapper for the booth_multiplier
//
//  booth_multiplier: signed 8-bit multiplier
//

`ifdef EMU_MONITOR_LED
module booth_multiplier_wrapper(Din_emu, Dout_emu, Addr_emu, load_emu, get_emu, clk_emu, clk_dut, clk_LED);
`else
module booth_multiplier_wrapper(Din_emu, Dout_emu, Addr_emu, load_emu, get_emu, clk_emu, clk_dut);
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
                NUM_OUT_ARRAY   = 2;
    reg [7:0]   stimIn[NUM_STIM_ARRAY];
    reg [7:0]   vectOut[NUM_OUT_ARRAY];
    reg [7:0]   Dout_emu;

    // DUT interface: registered input
    reg signed [7:0]  multIn;
    reg signed        select;
    // DUT interface: output wire. DUT's output will be captured
    wire signed [15:0] product;

    // Emulation Transactor ---------------------------------------------
    //  stimIn[0] = multIn
    //  stimIn[1][0] = select
    // vectOut[0] = product[ 7:0]
    // vectOut[1] = product[15:8]
    always @(posedge clk_emu)
    begin
        if (load_emu)       // Set input stimulus to DUT
        begin
            multIn <= stimIn[0];
            select <= stimIn[1][0];
        end
        else if (get_emu)   // Capure output from DUT
        begin
            vectOut[0]   <= product[ 7:0];
            vectOut[1]   <= product[15:8];
        end
        else
        begin
            stimIn[Addr_emu] <= Din_emu;    // stimulus: Host -> DUT
            Dout_emu <= vectOut[Addr_emu];  // output vector: DUT->Host
        end
    end

    // DUT --------------------------------------------------------------
    booth_multiplier u_booth_multiplier (
        .clk(clk_dut),
        .select(select),
        .multIn(multIn),
        .product(product));
endmodule
