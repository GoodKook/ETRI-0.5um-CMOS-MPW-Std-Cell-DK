//
// Filename: pong_vh.v
// Purpose:
//

module pong_vh(clk, reset, v_sync, pixel, p_tick, option, btn_up, btn_down, btn_left, btn_right, game_over, game_new);
input           clk;
input           reset;
output          v_sync;
output          pixel;
output          p_tick;
input           btn_up;
input           btn_down;
input           btn_left;
input           btn_right;
input [7:0]     option;
output          game_over;
input           game_new;

    wire [6:0] x_pos;
    wire [5:0] y_pos;
    wire [6:0] paddle_h;
    wire [5:0] paddle_v;
    wire _v_sync, pixel_ball, pixel_paddle, game_over, load_option;
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
        .pixel(pixel),
        .game_new(game_new),
        .game_over(game_over),
        .load_option(load_option));

    ball u_ball(
        .clk(clk),
        .reset(reset),
        .x_pos(x_pos),
        .y_pos(y_pos),
        .v_sync(_v_sync),
        .paddle_h(paddle_h),
        .paddle_v(paddle_v),
        .pixel(pixel_ball),
        .option(option[5:0]),
        .load_option(load_option),
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
        .btn_up(btn_up),
        .btn_down(btn_down),
        .btn_left(btn_left),
        .btn_right(btn_right));

endmodule
