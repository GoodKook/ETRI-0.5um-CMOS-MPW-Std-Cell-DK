//
// Filename: ball.v
// Purpose:
//
`include "bricks_out.vh"

module ball(clk, reset, x_pos, y_pos, v_sync, x_ball, y_ball, hit_brick, x_paddle, pixel_paddle, pixel_brick, pixel, game_init, game_over);
input           clk;
input           reset;
input [6:0]     x_pos;
input [5:0]     y_pos;
input           v_sync;
output [6:0]    x_ball;
output [5:0]    y_ball;
input  [6:0]    x_paddle;
output          hit_brick;
input           pixel_paddle;
input           pixel_brick;
output          pixel;
input           game_init;
output          game_over;

    // Update Ball position -----------------------------------------
    reg [6:0] x_ball;
    reg [5:0] y_ball;
    always @(posedge clk or posedge reset)
    begin
        if (reset)
        begin
            x_ball <= 0;
            y_ball <= 20;
        end
        else
        begin
            if (game_init)
            begin
                x_ball <= 0;
                y_ball <= 20;
            end
            else if (v_sync)
            begin
                if (sign_x) x_ball <= x_ball - ((x2)? 2:1);
                else        x_ball <= x_ball + ((x2)? 2:1);

                if (sign_y) y_ball <= y_ball - 1;
                else        y_ball <= y_ball + 1;
            end;
        end
    end

    reg sign_x, x2;
    reg sign_y;
    always @(posedge clk or posedge reset)
    begin
        if (reset)
        begin
            sign_x <= 0;
            sign_y <= 0;
            x2 <= 0;
        end
        else
        begin
            if (game_init)
            begin
                sign_x <= 0;
                sign_y <= 0;
                x2 <= 0;
            end
            else if (v_sync)
            begin
                if (hit_brick || y_ball<2)  sign_y <= 0;
                else if (hit_paddle)        sign_y <= 1;

                if (hit_paddle)
                begin
                    if (x_ball < (x_paddle+2))
                    begin
                        x2 <= 1;
                        sign_x <= 1;
                    end
                    else if (x_ball > (x_paddle+6))
                    begin
                        x2 <= 1;
                        sign_x <= 0;
                    end
                    else
                        x2 <= 0;
                end
                else if (x_ball>(`SCREEN_WIDTH-`BALL_SIZE))  sign_x <= 1;
                else if (x_ball<4)                           sign_x <= 0;
            end
        end
    end

    reg hit_brick;
    always @(posedge clk or posedge reset)
    begin
        if (reset)
            hit_brick <= 0;
        else
        begin
            if (v_sync || game_init)
                hit_brick <= 0;
            else
                hit_brick <= hit_brick | (pixel_brick & pixel_ball);
        end
    end

    reg hit_paddle;
    always @(posedge clk or posedge reset)
    begin
        if (reset)
            hit_paddle <= 0;
        else
        begin
            if (v_sync || game_init)
                hit_paddle <= 0;
            else
                hit_paddle <= hit_paddle | (pixel_paddle & pixel_ball);
        end
    end

    reg game_over;
    always @(posedge clk or posedge reset)
    begin
        if (reset)
            game_over <= 0;
        else
        begin
            if (game_init)
                game_over <= 0;
            else if (y_ball>(`SCREEN_HEIGHT-`PADDLE_HEIGHT))
                game_over <= 1;
        end
    end

    // Ball rom address ---------------------------------------------
    wire [2:0]  rom_addr;
    assign rom_addr = y_pos-y_ball;

    // Ball Image ROM -----------------------------------------------
    reg  [`BALL_SIZE-1:0]  rom_data;
    always @*
    begin
        case(rom_addr)
            3'b000 :    rom_data = 8'b00111100; //   ****  
            3'b001 :    rom_data = 8'b01111110; //  ******
            3'b010 :    rom_data = 8'b11000011; // **    **
            3'b011 :    rom_data = 8'b11000011; // **    **
            3'b100 :    rom_data = 8'b11000011; // **    **
            3'b101 :    rom_data = 8'b11000011; // **    **
            3'b110 :    rom_data = 8'b01111110; //  ******
            3'b111 :    rom_data = 8'b00111100; //   ****
        endcase
    end

    // Ball rom bit-position ----------------------------------------
    reg [2:0]  rom_bit;
    always @*
        if ((x_ball<=x_pos) && ((x_ball+(`BALL_SIZE-1))>=x_pos) &&
            (y_ball<=y_pos) && ((y_ball+(`BALL_SIZE-1))>=y_pos))
        begin
            rom_bit = x_pos - x_ball;
        end
        else
        begin
            rom_bit = 0;
        end

    // Ball ---------------------------------------------------------
    reg pixel_ball;
    always @*
        if ((x_ball<=x_pos) && ((x_ball+(`BALL_SIZE-1))>=x_pos) &&
            (y_ball<=y_pos) && ((y_ball+(`BALL_SIZE-1))>=y_pos))
            pixel_ball = rom_data[rom_bit];
        else
            pixel_ball = 0;

    assign pixel = pixel_ball;
endmodule
