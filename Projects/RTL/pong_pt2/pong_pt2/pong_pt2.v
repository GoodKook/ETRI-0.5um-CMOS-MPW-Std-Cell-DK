//
// Filename: pong_pt2.v
// Purpose:
//

module pong_pt2(clk, reset, v_sync, pixel, p_tick, up, down, left, right, game_over);
input           clk;
input           reset;
output          v_sync;
output          pixel;
output          p_tick;
input           up;
input           down;
input           left;
input           right;
output          game_over;

    wire [6:0] x_pos;
    wire [5:0] y_pos;
    wire [6:0] paddle_h;
    wire [5:0] paddle_v;
    wire _v_sync, pixel_ball, pixel_paddle, game_over;
    assign v_sync = _v_sync;

    ctrl u_ctrl(
        .clk(clk),
        .reset(reset),
        .x_pos(x_pos),
        .y_pos(y_pos),
        .p_tick(p_tick),
        .v_sync(_v_sync),
        .pixel_ball(pixel_ball),
        .pixel_paddle(pixel_paddle),
        .pixel(pixel));

    ball u_ball(
        .clk(clk),
        .reset(reset),
        .x_pos(x_pos),
        .y_pos(y_pos),
        .v_sync(_v_sync),
        .paddle_h(paddle_h),
        .paddle_v(paddle_v),
        .pixel(pixel_ball),
        .game_over(game_over));

    paddle u_paddle(
        .clk(clk),
        .reset(reset),
        .x_pos(x_pos),
        .y_pos(y_pos),
        .v_sync(_v_sync),
        .pixel(pixel_paddle),
        .paddle_h(paddle_h),
        .paddle_v(paddle_v),
        .up(up),
        .down(down),
        .left(left),
        .right(right));

endmodule
