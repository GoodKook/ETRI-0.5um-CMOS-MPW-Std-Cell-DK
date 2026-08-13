//
// Filename: pong_pt2.v
// Purpose:
//
`include "pong_pt2.vh"

module ball(clk, reset, x_pos, y_pos, paddle_h, paddle_v, v_sync, pixel, ball_start, game_over);
input       clk;
input       reset;
input [6:0] x_pos;
input [5:0] y_pos;
input [6:0] paddle_h;
input [5:0] paddle_v;
input       v_sync;
output      pixel;

input [7:0] ball_start;
output      game_over;

    // Update Ball position -----------------------------------------
    reg [6:0] x_ball;
    reg [5:0] y_ball;
    always @(posedge clk or posedge reset)
    begin
        if (reset)
        begin
            x_ball <= 0;
            y_ball <= ball_start[5:0];
        end
        else
        begin
            if (v_sync)
            begin
                if (sign_x) x_ball <= x_ball - 1;
                else        x_ball <= x_ball + 1;
                if (sign_y) y_ball <= y_ball - 1;
                else        y_ball <= y_ball + 1;
            end;
        end
    end

    reg sign_x;
    reg sign_y;
    always @(posedge clk or posedge reset)
    begin
        if (reset)
        begin
            sign_x <= 0;
            sign_y <= 0;
        end
        else if (v_sync)
        begin
            if ((x_ball>=(`TABLE_WIDTH-`PADDLE_THICK-`BALL_SIZE)) && (y_ball>=paddle_v) && (y_ball<=(paddle_v+`PADDLE_SIZE)))
                sign_x <= 1;
            else if (x_ball==1)
                sign_x <= 0;

            if ((y_ball>=(`TABLE_HEIGHT-`PADDLE_THICK-`BALL_SIZE)) && (x_ball>=paddle_h) && (x_ball<=(paddle_h+`PADDLE_SIZE)))
                sign_y <= 1;
            else if (y_ball==1)
                sign_y <= 0;
        end
    end


    reg game_over;
    always @(posedge clk or posedge reset)
    begin
        if (reset)
            game_over <= 0;
        else if (x_ball>(`TABLE_WIDTH-`PADDLE_THICK) || y_ball>(`TABLE_HEIGHT-`PADDLE_THICK))
            game_over <= 1;
    end


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
    // Ball rom address ---------------------------------------------
    wire [2:0]  rom_addr;
    assign rom_addr = y_pos-y_ball;
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
    reg pixel;
    always @*
        if ((x_ball<=x_pos) && ((x_ball+(`BALL_SIZE-1))>=x_pos) &&
            (y_ball<=y_pos) && ((y_ball+(`BALL_SIZE-1))>=y_pos))
            pixel = rom_data[rom_bit];
        else
            pixel = 0;

endmodule
