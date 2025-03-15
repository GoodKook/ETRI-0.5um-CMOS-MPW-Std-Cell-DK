//
// Poorman's Standard-Emulator by GoodKook, goodkook@gmail.com
//  Co-Emulation warapper for the "Your_Design"
//

module Your_Design_wrapper(
    // Emulator IF
    Din_emu, Dout_emu, Addr_emu, load_emu, get_emu, clk_emu, clk_dut,
    // DUT Ext. Ports
    xP_Tick, xHSync, xVSync, xPixel);

    input  [7:0]    Din_emu;
    output [7:0]    Dout_emu;
    input  [2:0]    Addr_emu;
    input           load_emu, get_emu, clk_emu;
    input           clk_dut;

    output  xP_Tick;
    output  xHSync;
    output  xVSync;
    output  xPixel;
    
    // Std. Emulation wrapper: Stimulus & Output capture for DUT
    parameter   NUM_STIM_ARRAY  = 1,
                NUM_OUT_ARRAY   = 1;
    reg [7:0]   stimIn[0:NUM_STIM_ARRAY-1];
    reg [7:0]   vectOut[0:NUM_OUT_ARRAY-1];
    reg [7:0]   Dout_emu;

    // DUT interface: registered input
    reg     reset;
    reg     enable;
    reg     up;
    reg     down;
    // DUT interface: output wire. DUT's output will be captured
    wire    p_tick;
    wire    hsync;
    wire    vsync;
    wire    pixel;

    // Emulation Transactor ---------------------------------------------
    always @(posedge clk_emu)
    begin
        if (load_emu)   // Input stimulus to DUT
        begin
            reset   <= stimIn[0][3];
            enable  <= stimIn[0][2];
            up      <= stimIn[0][1];
            down    <= stimIn[0][0];
        end
        else if (get_emu)   // Capure output from DUT
        begin
            vectOut[0][3]   <= p_tick;
            vectOut[0][2]   <= hsync;
            vectOut[0][1]   <= vsync;
            vectOut[0][0]   <= pixel;
        end
        else
        begin
            stimIn[Addr_emu] <= Din_emu;
            Dout_emu <= vectOut[Addr_emu];
        end
    end
    
    // DUT
    Your_Design u_Your_Design(
            .clk(clk_dut),
            .reset(reset),
            .enable(enable),
            .up(up),
            .down(down),
            .p_tick(p_tick),
            .hsync(hsync),
            .vsync(vsync),
            .pixel(pixel));

    assign xP_Tick  = p_tick;
    assign xHSync   = hsync;
    assign xVSync   = vsync;
    assign xPixel   = pixel;
endmodule


