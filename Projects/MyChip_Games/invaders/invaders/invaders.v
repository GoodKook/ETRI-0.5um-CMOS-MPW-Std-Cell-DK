//
// Filename: invaders.v
// Purpose:
//

module invaders(clk, reset, v_sync, pixel, p_tick, btn_left, btn_right, game_over, game_complete, game_new);
input           clk;
input           reset;
input           btn_left;
input           btn_right;
input           game_new;
output          v_sync;
output          pixel;
output          p_tick;
output          game_over;
output          game_complete;

    wire [6:0] x_pos, x_ball;
    wire [5:0] y_pos, y_ball;
    wire       game_init;
    
    wire _v_sync;
    assign v_sync = _v_sync;

    wire alien_flip;
    ctrl u_ctrl(
        .clk(clk),
        .reset(reset),
        .x_pos(x_pos),
        .y_pos(y_pos),
        .p_tick(p_tick),
        .v_sync(_v_sync),
        .alien_flip(alien_flip),
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

    wire pixel_alien, pixel_bullet, en_lfsr4;
    alien u_alien(
        .clk(clk),
        .reset(reset),
        .x_pos(x_pos),
        .y_pos(y_pos),
        .v_sync(_v_sync),
        .x_ball(x_ball),
        .alien_flip(alien_flip),
        .hit_alien(hit_alien),
        .game_init(game_init),
        .lfsr4(lfsr4),
        .en_lfsr4(en_lfsr4),
        .pixel_alien(pixel_alien),
        .pixel_bullet(pixel_bullet),
        .game_complete(game_complete));

    wire [3:0] lfsr4;
    lfsr_4bit u_lfsr_4bit(
        .clk(clk),
        .reset(reset),
        .enable(en_lfsr4),
        .q(lfsr4));

    wire pixel_ball, hit_alien;
    ball u_ball(
        .clk(clk),
        .reset(reset),
        .x_pos(x_pos),
        .y_pos(y_pos),
        .v_sync(v_sync),
        .x_ball(x_ball),
        .y_ball(y_ball),
        .hit_alien(hit_alien),
        .x_paddle(x_paddle),
        .pixel_paddle(pixel_paddle),
        .pixel_alien(pixel_alien),
        .pixel_bullet(pixel_bullet),
        .pixel(pixel_ball),
        .game_init(game_init),
        .game_over(game_over));

    assign pixel = pixel_paddle | pixel_alien | pixel_bullet | pixel_ball;
endmodule
