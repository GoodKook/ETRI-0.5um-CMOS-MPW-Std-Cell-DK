//
// Poorman's Standard-Emulator by GoodKook, goodkook@gmail.com
//  Co-Emulation warapper for the "apple_1"
//

module apple_1_wrapper(Din_emu, Dout_emu, Addr_emu, load_emu, get_emu, clk_emu, clk_dut);
    input  [7:0]    Din_emu;
    output [7:0]    Dout_emu;
    input  [2:0]    Addr_emu;
    input           load_emu, get_emu, clk_emu;
    input           clk_dut;

    // Std. Emulation wrapper: Stimulus & Output capture for DUT
    parameter   NUM_STIM_ARRAY  = 2,
                NUM_OUT_ARRAY   = 4;
    reg [7:0]   stimIn[0:NUM_STIM_ARRAY-1];
    reg [7:0]   vectOut[0:NUM_OUT_ARRAY-1];
    reg [7:0]   Dout_emu;
    
    // DUT interface: registered input
    reg         clk;      // CPU clock 
    reg         reset;    // reset signal
    reg         IRQ;      // interrupt request
    reg         NMI;      // non-maskable interrupt request
    reg         RDY;      // Ready signal. Pauses CPU when RDY=0 
    reg [7:0]   DI;       // data in, read bus
    reg         en_woz;
    // DUT interface: output wire. DUT's output will be captured
    wire        WE;     // write enable
    wire [7:0]  DO;     // data out, write bus
    wire [15:0] AB;     // address bus

// Emulation Transactor --------------------------------------------------------
// DUT's input bitmap                       DUT's output bitmap
//      +---+-+-+-+-+-+-+                       +-------------+-+
//  [0] |   |5|4|3|2|1|0|                   [0] |             |0|
//      +---+-+-+-+-+-+-+                       +-------------+-+
//           | | | | | |                                       |
//           | | | | | +---clk                                 +---WE
//           | | | | +---reset                  +---------------+
//           | | | +---IRQ                  [1] |7 6 5 4 3 2 1 0|
//           | | +---NMI                        +-------+-------+
//           | +---RDY                                  |
//           +---en_woz                                 +---DO[7:0]
//      +---------------+
//  [1] |7 6 5 4 3 2 1 0|                       +---------------+
//      +-------+-------+                   [2] |7 6 5 4 3 2 1 0|
//              |                               +-------+-------+
//              +-----DI[7:0]                           |
//                                                      +---AB[7:0]
//                                              +---------------+
//                                          [3] |7 6 5 4 3 2 1 0|
//                                              +-------+-------+
//                                                      |
//                                                      +---AB[15:8]
//
    always @(posedge clk_emu)
    begin
        if (load_emu)   // Input stimulus to DUT
        begin
            clk     <= stimIn[0][0];
            reset   <= stimIn[0][1];
            IRQ     <= stimIn[0][2];
            NMI     <= stimIn[0][3];
            RDY     <= stimIn[0][4];
            en_woz  <= stimIn[0][5];
            DI      <= stimIn[1];
        end
        else if (get_emu)   // Capure output from DUT
        begin
            vectOut[0][0] <= WE;
            vectOut[1]    <= DO;
            vectOut[2]    <= AB[7:0];
            vectOut[3]    <= AB[15:8];
        end
        else
        begin
            stimIn[Addr_emu] <= Din_emu;
            Dout_emu <= vectOut[Addr_emu];
        end
    end
    
    // DUT
    apple_1 u_apple_1(
        .clk(clk_dut),  // Controlled Clock
        .reset(reset),  // reset signal
        .AB(AB),        // address bus
        .DI(DI),        // data in, read bus
        .DO(DO),        // data out, write bus
        .WE(WE),        // write enable
        .IRQ(IRQ),      // interrupt request
        .NMI(NMI),      // non-maskable interrupt request
        .RDY(RDY),      // Ready signal. Pauses CPU when RDY=0
        .en_woz(en_woz)
    );

endmodule

