//
// Poorman's Standard-Emulator by GoodKook, goodkook@gmail.com
//  Purpose: Standard emulation wrapper for the array16
//
//  DUT: Loadable 8-bit counter.
//       Four sub-module LS163 are used
//

`ifdef EMU_MONITOR_LED
module array16_wrapper(Din_emu, Dout_emu, Addr_emu, load_emu, get_emu, clk_emu, clk_dut, clk_LED);
`else
module array16_wrapper(Din_emu, Dout_emu, Addr_emu, load_emu, get_emu, clk_emu, clk_dut);
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
    // Standard Emulation wrapper: Stimulus & Output capture for "array16"
    parameter   NUM_STIM_ARRAY  = 4,
                NUM_OUT_ARRAY   = 4;
    reg [7:0]   stimIn[NUM_STIM_ARRAY];
    reg [7:0]   vectOut[NUM_OUT_ARRAY];
    reg [7:0]   Dout_emu;

    // "array16" interface: registered input
    reg [15:0]  a;
    reg [15:0]  b;
    // DUT interface: output wire. DUT's output will be captured
    wire [31:0]  c;

    // Emulation Transactor ---------------------------------------------
    //  stimIn[0] = a[8:0]
    //  stimIn[1] = a[15:8]
    //  stimIn[2] = b[8:0]
    //  stimIn[3] = b[15:8]
    // vectOut[0] = c[ 7:0]
    // vectOut[1] = c[15:8]
    // vectOut[2] = c[23:16]
    // vectOut[3] = c[31:24]
    always @(posedge clk_emu)
    begin
        if (load_emu)       // Set input stimulus to DUT
        begin
            a[ 7:0]   <= stimIn[0];
            a[15:8]   <= stimIn[1];
            b[ 7:0]   <= stimIn[2];
            b[15:8]   <= stimIn[3];
        end
        else if (get_emu)   // Capure output from DUT
        begin
            vectOut[0] <= c[ 7: 0];
            vectOut[1] <= c[15: 8];
            vectOut[2] <= c[23:16];
            vectOut[3] <= c[31:24];
        end
        else
        begin
            stimIn[Addr_emu] <= Din_emu;    // stimulus: Host -> DUT
            Dout_emu <= vectOut[Addr_emu];  // output vector: DUT->Host
        end
    end

    // DUT --------------------------------------------------------------
    array16 u_array16 (
        .a(a),
        .b(b),
        .c(c));

endmodule
