//
// Filename: bricks.v
// Purpose:
//
`include "bricks_out.vh"

module bricks(clk, reset, x_pos, y_pos, v_sync, x_ball, hit_brick, pixel, game_complete);
input           clk;
input           reset;
input [6:0]     x_pos;
input [5:0]     y_pos;
input [6:0]     x_ball;
input           hit_brick;
input           v_sync;
output          pixel;
output          game_complete;

    // Bricks --------------------------------------------------------
    reg [15:0] regBricks;
    always @(posedge clk or posedge reset)
    begin
        if (reset)
            regBricks <= 16'b1111111111111111;
        else if (v_sync)
        begin
            if (hit_brick)
                regBricks[x_ball[6:3]] <= 0;
        end
    end

    assign game_complete = (!regBricks)? 1 : 0;

    // Bricks rom address ---------------------------------------------
    wire [`BRICK_H_BITS-1:0]    rom_addr;
    assign rom_addr = y_pos - (`SCREEN_HEIGHT-`BRICKS_Y0);

    // Bricks Image ROM -----------------------------------------------
    reg  [`BRICK_WIDTH-1:0]     rom_data;
    always @*
    begin
        case(rom_addr)
            3'b000 : rom_data = 8'b11111110;
            3'b001 : rom_data = 8'b11111110;
            3'b010 : rom_data = 8'b11111110;
            3'b011 : rom_data = 8'b11111110;
            3'b100 : rom_data = 8'b11111110;
            3'b101 : rom_data = 8'b11111110;
            3'b110 : rom_data = 8'b11111110;
            3'b111 : rom_data = 8'b00000000;
        endcase
    end

    // Paddle Pixel ----------------------------------------------------
    reg [15:0] _pixel;
    integer i;
    always @*
    begin
        for (i = 0; i < 16; i = i + 1)
        begin
            if (regBricks[i])
            begin
                if ((x_pos>(i*`BRICK_WIDTH)) && (x_pos<(`BRICK_WIDTH*(i+1))) && (y_pos>`BRICKS_Y0) && (y_pos<(`BRICKS_Y0+`BRICK_HEIGHT)))
                    _pixel[i] = rom_data[x_pos];
                else
                    _pixel[i] = 0;
            end
            else
                _pixel[i] = 0;
        end
    end

    assign pixel = (_pixel)? 1 : 0;
endmodule
