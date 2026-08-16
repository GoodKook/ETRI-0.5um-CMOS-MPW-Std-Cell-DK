//
// Filename: health.v
// Purpose:
//
`include "dino_run.vh"

module health(clk, reset, x_pos, y_pos, v_sync, pixel_dino, pixel_cactus, pixel_cloud, pixel, game_over, game_init);
input       clk;
input       reset;
input       game_init;
input [6:0] x_pos;
input [5:0] y_pos;
input       v_sync;
input       pixel_dino;
input       pixel_cactus;
input       pixel_cloud;
output      pixel;
output      game_over;

    reg Health_plus, Health_minus;
    always @(posedge clk or posedge reset)
    begin
        if (reset)
        begin
            Health_plus <= 0;
            Health_minus <= 0;
        end
        else
        begin
            if (v_sync || game_init)
            begin
                Health_plus <= 0;
                Health_minus <= 0;
            end
            else
            begin
                Health_plus  <= Health_plus  | (pixel_dino & pixel_cloud);
                Health_minus <= Health_minus | (pixel_dino & pixel_cactus);
            end
        end
    end

    reg [6:0] nHealth;
    always @(posedge clk or posedge reset)
    begin
        if (reset)
            nHealth <= 3;
        else
        begin
            if (game_init)
                nHealth <= 3;
            else if (v_sync)
            begin
                if ((nHealth!=7'b1111111) && (Health_plus))
                    nHealth <= nHealth + 1;
                else if ((nHealth>0) && Health_minus)
                    nHealth <= nHealth - 1;
            end
        end
    end

    assign game_over = (nHealth==0)? 1:0;

    assign pixel = (((y_pos==0) && (x_pos<nHealth))? 1 : 0) | pixel_dino | pixel_cloud | pixel_cactus;
endmodule

