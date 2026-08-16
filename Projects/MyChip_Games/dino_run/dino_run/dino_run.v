//
// Filename: dino_run.v
// Purpose:
//

module dino_run(clk, reset, v_sync, pixel, p_tick, option, jump, game_over, game_new);
input           clk;
input           reset;
output          v_sync;
output          pixel;
output          p_tick;
input           jump;
input [7:0]     option;
input           game_new;
output          game_over;

    wire [6:0] x_pos;
    wire [5:0] y_pos;
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
        .game_init(game_init));

    wire pixel_dino;
    dino u_dino(
        .clk(clk),
        .reset(reset),
        .game_init(game_init),
        .x_pos(x_pos),
        .y_pos(y_pos),
        .v_sync(_v_sync),
        .pixel(pixel_dino),
        .jump(jump));

    wire pixel_cactus;
    cactus u_cactus(
        .clk(clk),
        .reset(reset),
        .game_init(game_init),
        .x_pos(x_pos),
        .y_pos(y_pos),
        .v_sync(v_sync),
        .pixel(pixel_cactus),
        .delay(option));

    wire pixel_cloud;
    cloud u_cloud(
        .clk(clk),
        .reset(reset),
        .game_init(game_init),
        .x_pos(x_pos),
        .y_pos(y_pos),
        .v_sync(v_sync),
        .alt(alt),
        .en_alt(en_alt),
        .pixel(pixel_cloud));

    // LFSR Pseudo RNG ---------------------------------------------
    wire [3:0] alt;
    wire       en_alt;
    lfsr_4bit u_lfsr_4bit(
        .clk(clk),
        .reset(reset),
        .enable(en_alt),
        .q(alt));

    health u_health(
        .clk(clk),
        .reset(reset),
        .game_init(game_init),
        .v_sync(v_sync),
        .x_pos(x_pos),
        .y_pos(y_pos),
        .pixel_dino(pixel_dino),
        .pixel_cactus(pixel_cactus),
        .pixel_cloud(pixel_cloud),
        .pixel(pixel),
        .game_over(game_over));

endmodule
