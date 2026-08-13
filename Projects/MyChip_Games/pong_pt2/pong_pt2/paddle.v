//
// Filename: paddle.v
// Purpose:
//
`include "pong_pt2.vh"

module paddle(clk, reset, x_pos, y_pos, v_sync, pixel, paddle_h, paddle_v, up, down, left, right);
input       clk;
input       reset;

input [6:0] x_pos;
input [5:0] y_pos;
input       v_sync;
output      pixel;

output [6:0] paddle_h;
output [5:0] paddle_v;

input   up;
input   down;
input   left;
input   right;

    // Vertical Paddle Postion -----------------------------------------------
    reg [5:0]   paddle_v;
    always @(posedge clk or posedge reset)
    begin
        if (reset)
        begin
            paddle_v <= 0;
        end
        else
        begin
            if (!up && paddle_v > 0 && v_sync)
                paddle_v <= paddle_v - 1;
            if (!down && paddle_v < (`TABLE_HEIGHT-`PADDLE_SIZE) && v_sync)
                paddle_v <= paddle_v + 1;
        end
    end

    wire pixel_v;
    assign pixel_v = ((x_pos>(`TABLE_WIDTH-`PADDLE_THICK)) && (y_pos>paddle_v) && (y_pos<(paddle_v+`PADDLE_SIZE)))? 1:0;

    // Horizontal Paddle Postion -----------------------------------------------
    reg [6:0]   paddle_h;
    always @(posedge clk or posedge reset)
    begin
        if (reset)
        begin
            paddle_h <= 0;
        end
        else
        begin
            if (!left && paddle_h > 0 && v_sync)
                paddle_h <= paddle_h - 2;
            if (!right && paddle_h < (`TABLE_WIDTH-`PADDLE_SIZE) && v_sync)
                paddle_h <= paddle_h + 2;
        end
    end

    wire pixel_h;
    assign pixel_h = ((y_pos>(`TABLE_HEIGHT-`PADDLE_THICK)) && (x_pos>paddle_h) && (x_pos<(paddle_h+`PADDLE_SIZE)))? 1:0;

    assign pixel = pixel_v | pixel_h;
endmodule
