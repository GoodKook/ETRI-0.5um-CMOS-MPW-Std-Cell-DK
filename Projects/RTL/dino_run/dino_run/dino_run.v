//
// Filename: dino_run.v
// Purpose:
//

module dino_run(clk, reset, v_sync, pixel, p_tick, jump, game_over);
input           clk;
input           reset;
output          v_sync;
output          pixel;
output          p_tick;
input           jump;
output          game_over;

    wire [6:0] x_pos;
    wire [5:0] y_pos;
    wire _v_sync, pixel_dino;
    wire pixel_cactus;
    assign v_sync = _v_sync;

    ctrl u_ctrl(
        .clk(clk),
        .reset(reset),
        .x_pos(x_pos),
        .y_pos(y_pos),
        .p_tick(p_tick),
        .v_sync(_v_sync),
        .pixel_dino(pixel_dino),
        .pixel_cactus(pixel_cactus),
        .pixel(pixel),
        .game_over(game_over));

    dino u_dino(
        .clk(clk),
        .reset(reset),
        .x_pos(x_pos),
        .y_pos(y_pos),
        .v_sync(_v_sync),
        .pixel(pixel_dino),
        .jump(jump));

    cactus u_cactus(
        .clk(clk),
        .reset(reset),
        .x_pos(x_pos),
        .y_pos(y_pos),
        .v_sync(v_sync),
        .pixel(pixel_cactus));

endmodule
