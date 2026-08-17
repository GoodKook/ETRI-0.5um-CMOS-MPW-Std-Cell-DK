//
// Filename: paddle.v
// Purpose:
//
`include "bricks_out.vh"

module paddle(clk, reset, x_pos, y_pos, x_paddle, v_sync, btn_left, btn_right, pixel);
input           clk;
input           reset;
input  [6:0]    x_pos;
input  [5:0]    y_pos;
output [6:0]    x_paddle;
input           v_sync;
input           btn_left;
input           btn_right;
output          pixel;

    // Paddle Move ---------------------------------------------------
    reg [6:0]   x_paddle;
    always @(posedge clk or posedge reset)
    begin
        if (reset)
            x_paddle <= 0;//`SCREEN_WIDTH/2;
        else
        begin
            if (v_sync)
            begin
                if (!btn_left && (x_paddle > 1))
                    x_paddle <= x_paddle - 2;
                else if (!btn_right && (x_paddle<(`SCREEN_WIDTH-`PADDLE_WIDTH)))
                    x_paddle <= x_paddle + 2;
            end
        end
    end

    // Paddle rom address ---------------------------------------------
    wire [`PADDLE_H_BITS-1:0]  rom_addr;
    assign rom_addr = y_pos - (`SCREEN_HEIGHT-`PADDLE_Y);

    // Paddle Image ROM -----------------------------------------------
    reg  [`PADDLE_WIDTH-1:0]    rom_data;
    always @*
    begin
        case(rom_addr)
            3'b000 : rom_data = 16'b0011111111111100;
            3'b001 : rom_data = 16'b0111111111111110;
            3'b010 : rom_data = 16'b1111111111111111;
            3'b011 : rom_data = 16'b1111111111111111;
            3'b100 : rom_data = 16'b1111111111111111;
            3'b101 : rom_data = 16'b1111111111111111;
            3'b110 : rom_data = 16'b1111111111111111;
            3'b111 : rom_data = 16'b1111111111111111;
        endcase
    end

    // Paddle Pixel ----------------------------------------------------
    reg pixel;
    always @*
        if ((x_pos>=x_paddle) && (x_pos<(x_paddle+`PADDLE_WIDTH)) && (y_pos>`PADDLE_Y))
            pixel = rom_data[x_pos-x_paddle];
        else
            pixel = 0;

endmodule
