//
// Poorman's Standard-Emulator by GoodKook, goodkook@gmail.com
//  Co-Emulation warapper for the "test"
//

module basic_loops_wrapper(
    // Emulator IF
    Din_emu, Dout_emu, Addr_emu, load_emu, get_emu, clk_emu, clk_dut);

    input  [7:0]    Din_emu;
    output [7:0]    Dout_emu;
    input  [2:0]    Addr_emu;
    input           load_emu, get_emu, clk_emu;
    input           clk_dut;

    // Std. Emulation wrapper: Stimulus & Output capture for DUT
    parameter   NUM_STIM_ARRAY  = 2,
                NUM_OUT_ARRAY   = 3;
    reg [7:0]   stimIn[0:NUM_STIM_ARRAY-1];
    reg [7:0]   vectOut[0:NUM_OUT_ARRAY-1];
    reg [7:0]   Dout_emu;

    // DUT interface: registered input
    reg         ap_rst;
    reg         ap_start;
    reg [7:0]   A_q0;
    // DUT interface: output wire. DUT's output will be captured
    wire        ap_done;
    wire        ap_idle;
    wire        ap_ready;
    wire [3:0]  A_address0;
    wire        A_ce0;
    wire [12:0] ap_return;

// Emulation Transactor --------------------------------------------------------
// DUT's input bitmap                   DUT's output bitmap
//      +---------+-+-+-+                    +-------+-+-+-+-+
//  [0] |         |2|1|0|                [0] |7 6 5 4|3|2|1|0|
//      +---------+-+-+-+                    +----+--+-+-+-+-+
//                 | | |                          |   | | | |
//                 | | +---ap_rst                 |   | | | +---ap_done
//                 | +-----ap_start               |   | | +-----ap_idle
//                 +-------ap_clk                 |   | +-------ap_ready
//      +---------------+                         |   +---------A_ce0
//  [1] |7 6 5 4 3 2 1 0|                         +-------------A_address0[3:0]
//      +-------+-------+                    +---------------+
//              |                        [1] |7 6 5 4 3 2 1 0|
//              +---------A_q0[7:0]          +-------+-------+
//                                                   |
//                                                   +---------ap_return[7:0]
//                                           +-----+---------+
//                                       [2] |     |4 3 2 1 0|
//                                           +-----+----+----+
//                                                      |
//                                                      +------ap_return[12:8]

    always @(posedge clk_emu)
    begin
        if (load_emu)   // Input stimulus to DUT
        begin
            ap_rst      <= stimIn[0][0];
            ap_start    <= stimIn[0][1];
            A_q0        <= stimIn[1];
        end
        else if (get_emu)   // Capure output from DUT
        begin
            vectOut[0][0]   <= ap_done;
            vectOut[0][1]   <= ap_idle;
            vectOut[0][2]   <= ap_ready;
            vectOut[0][3]   <= A_ce0;
            vectOut[0][7:4] <= A_address0[3:0];
            vectOut[1][7:0] <= ap_return[7:0];
            vectOut[2][4:0] <= ap_return[12:8];
        end
        else
        begin
            stimIn[Addr_emu] <= Din_emu;
            Dout_emu <= vectOut[Addr_emu];
        end
    end
    
    // DUT
    basic_loops u_basic_loops(
            .ap_clk(clk_dut),   // ap_clk
            .ap_rst(ap_rst),
            .ap_start(ap_start),
            .ap_done(ap_done),
            .ap_idle(ap_idle),
            .ap_ready(ap_ready),
            .A_address0(A_address0),
            .A_ce0(A_ce0),
            .A_q0(A_q0),
            .ap_return(ap_return));
endmodule


