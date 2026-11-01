//
// Poorman's Standard-Emulator by GoodKook, goodkook@gmail.com
//  Co-Emulation warapper for the "space_invaders_engine_glcd"
//

module space_invaders_engine_glcd_wrapper(Din_emu, Dout_emu, Addr_emu, load_emu, get_emu, clk_emu, clk_dut, io_req);
    input  [7:0]    Din_emu;
    output [7:0]    Dout_emu;
    input  [2:0]    Addr_emu;
    input           load_emu, get_emu, clk_emu;
    input           clk_dut;
    output          io_req;
    
    // Std. Emulation wrapper: Stimulus & Output capture for DUT
    parameter   NUM_STIM_ARRAY  = 1,
                NUM_OUT_ARRAY   = 2;
    reg [7:0]   stimIn[0:NUM_STIM_ARRAY-1];
    reg [7:0]   vectOut[0:NUM_OUT_ARRAY-1];
    reg [7:0]   Dout_emu;

// Emulation Transactor -------------------------------
// DUT's input bitmap               DUT's output bitmap
//      +-----+-+-+-+-+-+               +-+-+-----------+
//  [0] |7 6 5|4|3|2|1|0|           [0] |7|6|5 4 3 2 1 0|
//      +-----+-+-+-+-+-+               +-+-+-----+-----+
//             | | | | |                 | |      |
//             | | | | +---btn_fire      | |      +---lcd_y[5:0]
//             | | | +---btn_right       | +---lcd_data
//             | | +---btn_left          +---lcd_write_en
//             | +---rst_n                    
//             +---clk                  +-+-------------+
//                                  [1] |7|6 5 4 3 2 1 0|
//                                      +-+-----+-------+
//                                              |
//                                              +---lcd_x[6:0]
//

    // DUT interface: registered input
    reg     rst_n, btn_fire, btn_left, btn_right;
    // DUT interface: output wire. DUT's output will be captured
    wire    lcd_data, lcd_write_en;
    wire [6:0]  lcd_x;
    wire [5:0]  lcd_y;

    always @(posedge clk_emu)
    begin
        if (load_emu)   // Input stimulus to DUT
        begin
            btn_fire  <= stimIn[0][0];
            btn_right <= stimIn[0][1];
            btn_left  <= stimIn[0][2];
            rst_n     <= stimIn[0][3];
        end
        else if (get_emu)   // Capure output from DUT
        begin
            vectOut[0][5:0] <= lcd_y;
            vectOut[0][6]   <= lcd_data;
            vectOut[0][7]   <= lcd_write_en;
            vectOut[1][6:0] <= lcd_x;
        end
        else
        begin
            stimIn[Addr_emu] <= Din_emu;
            Dout_emu <= vectOut[Addr_emu];
        end
    end
    
    // DUT
    space_invaders_engine_glcd dut(
        .clk(clk_dut),
        .rst_n(rst_n),
        .btn_left(btn_left),
        .btn_right(btn_right),
        .btn_fire(btn_fire),
        .lcd_write_en(lcd_write_en), 
        .lcd_x(lcd_x),
        .lcd_y(lcd_y),
        .lcd_data(lcd_data));

    assign io_req = clk_dut;

endmodule

