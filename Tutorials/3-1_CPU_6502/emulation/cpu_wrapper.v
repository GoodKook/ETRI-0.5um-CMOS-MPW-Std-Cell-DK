//
// Co-Emulation warapper for CPU_6502
//

`ifdef EMU_MONITOR
module cpu_wrapper(Din_emu, Dout_emu, Addr_emu, load_emu, get_emu, clk_emu, clk_dut, clk_LED);
`else
module cpu_wrapper(Din_emu, Dout_emu, Addr_emu, load_emu, get_emu, clk_emu, clk_dut);
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
    // Emulation wrapper: Stimulus & Output capture for DUT
    parameter   NUM_STIM_ARRAY  = 2,
                NUM_OUT_ARRAY   = 4;
    reg [7:0]   stimIn[NUM_STIM_ARRAY];
    reg [7:0]   vectOut[NUM_OUT_ARRAY];
    reg [7:0]   Dout_emu;
    // DUT interface: registered input
    reg  [7:0]  DI;     // data in, read bus
    reg         IRQ;    // interrupt request
    reg         NMI;    // non-maskable interrupt request
    reg         RDY;    // Ready signal. Pauses CPU when RDY=0 
    reg         reset;  // reset signal
    // DUT interface: output wire. DUT's output will be captured
    wire [15:0] AB;     // Address Bus
    wire        WE;     // write enable
    wire [7:0]  DO;     // data out, write bus

    // Emulation Transactor ---------------------------------------------
    always @(posedge clk_emu)
    begin
        if (load_emu)       // Set input stimulus to DUT
        begin
            reset <= stimIn[0][0];
            IRQ   <= stimIn[0][1];
            NMI   <= stimIn[0][2];
            RDY   <= stimIn[0][3];
            DI    <= stimIn[1];
        end
        else if (get_emu)   // Capure output from DUT
        begin
            vectOut[0]    <= AB[15:8];
            vectOut[1]    <= AB[7:0];
            vectOut[2]    <= DO;
            vectOut[3]     = 0;
            vectOut[3][0] <= WE;
        end
        else
        begin
            stimIn[Addr_emu] <= Din_emu;    // stimulus: Host -> DUT
            Dout_emu <= vectOut[Addr_emu];  // output vector: DUT->Host
        end
    end

    // DUT --------------------------------------------------------------
    cpu u_cpu (
        .clk(clk_dut),
        .reset(reset),
        .AB(AB),
        .DI(DI),
        .DO(DO),
        .WE(WE),
        .IRQ(IRQ),
        .NMI(NMI),
        .RDY(RDY) );

endmodule
