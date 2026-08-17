//
// Filename: bricks_out.v
// Purpose:
//

module bricks_out(clk, reset, v_sync, pixel, p_tick, btn_left, btn_right, game_over, game_complete, game_new);
input           clk;
input           reset;
output          v_sync;
output          pixel;
output          p_tick;
input           btn_left;
input           btn_right;
input           game_new;
output          game_over;
output          game_complete;

    wire [6:0] x_pos, x_ball;
    wire [5:0] y_pos, y_ball;
    wire       game_init;
    
    wire _v_sync;
    assign v_sync = _v_sync;

    ctrl u_ctrl(
        .clk(clk),
        .reset(reset),
        .x_pos(x_pos),
        .y_pos(y_pos),
        .p_tick(p_tick),
        .v_sync(_v_sync),
        .game_new(game_new),
        .game_over(game_over),
        .game_complete(game_complete),
        .game_init(game_init));

    wire pixel_paddle;
    wire [6:0] x_paddle;
    paddle u_paddle(
        .clk(clk),
        .reset(reset),
        .x_pos(x_pos),
        .y_pos(y_pos),
        .x_paddle(x_paddle),
        .v_sync(_v_sync),
        .btn_left(btn_left),
        .btn_right(btn_right),
        .pixel(pixel_paddle));

    wire pixel_brick;
    bricks u_bricks(
        .clk(clk),
        .reset(reset),
        .x_pos(x_pos),
        .y_pos(y_pos),
        .v_sync(_v_sync),
        .x_ball(x_ball),
        .hit_brick(hit_brick),
        .pixel(pixel_brick),
        .game_complete(game_complete));

    wire pixel_ball, hit_brick;
    ball u_ball(
        .clk(clk),
        .reset(reset),
        .x_pos(x_pos),
        .y_pos(y_pos),
        .v_sync(v_sync),
        .x_ball(x_ball),
        .y_ball(y_ball),
        .hit_brick(hit_brick),
        .x_paddle(x_paddle),
        .pixel_paddle(pixel_paddle),
        .pixel_brick(pixel_brick),
        .pixel(pixel_ball),
        .game_init(game_init),
        .game_over(game_over));

    assign pixel = pixel_paddle | pixel_brick | pixel_ball;
endmodule
