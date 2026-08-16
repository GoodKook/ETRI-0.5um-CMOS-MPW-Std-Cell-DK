//
// Filename: dino.v
// Purpose:
//
`include "dino_run.vh"

module dino(clk, reset, game_init, x_pos, y_pos, v_sync, jump, pixel);
input       clk;
input       reset;
input       game_init;
input [6:0] x_pos;
input [5:0] y_pos;
input       v_sync;
input       jump;
output      pixel;

    // Update Dino position -----------------------------------------
    reg [5:0] y_dino;
    always @(posedge clk or posedge reset)
    begin
        if (reset)
        begin
            y_dino <= (`SCREEN_HEIGHT-`DINO_SIZE-`DINO_BASE);
        end
        else
        begin
            if (game_init)
                y_dino <= (`SCREEN_HEIGHT-`DINO_SIZE-`DINO_BASE);
            else if (v_sync && jump_on)
            begin
                if (sign_y) y_dino <= y_dino - 1;
                else        y_dino <= y_dino + 1;
            end;
        end
    end

    reg sign_y;
    always @(posedge clk or posedge reset)
    begin
        if (reset)
            sign_y <= 1;
        else
        begin
            if (game_init)
                sign_y <= 1;
            else if (v_sync)
            begin
                if (y_dino<=(`DINO_BASE*2))
                    sign_y <= 0;
                else if (y_dino>=(`SCREEN_HEIGHT-`DINO_SIZE-`DINO_BASE))
                    sign_y <= 1;
            end
        end
    end

    reg jump_on;
    always @(posedge clk or posedge reset)
    begin
        if (reset)
            jump_on <= 0;
        else
        begin
            if (game_init)
              jump_on <= 0;
            else if (v_sync)
            begin
                if (!jump)
                    jump_on <= 1;
                else if (jump_on && (y_dino==(`SCREEN_HEIGHT-`DINO_SIZE-`DINO_BASE)))
                    jump_on <= 0;
            end
        end
    end

    // Dino Image ROM -----------------------------------------------
    reg  [`DINO_SIZE-1:0]  rom_data;
    always @*
    begin
        case(rom_addr)                                 //0123456701234567
            4'b0000 : rom_data = 16'b0000000001111110; //         ******  
            4'b0001 : rom_data = 16'b0000000011111111; //        ********
            4'b0010 : rom_data = 16'b0000000011101111; //        *** ****
            4'b0011 : rom_data = 16'b0000000011111111; //        ********
            4'b0100 : rom_data = 16'b0000000011110000; //        ****
            4'b0101 : rom_data = 16'b0000000011111100; //        ******
            4'b0110 : rom_data = 16'b0000000111110000; //       *****
            4'b0111 : rom_data = 16'b1000001111110000; //     *******
            4'b1000 : rom_data = 16'b1100111111111110; //*   ***********
            4'b1001 : rom_data = 16'b1111111111110010; //************  *
            4'b1010 : rom_data = 16'b1111111111111000; //************
            4'b1011 : rom_data = 16'b0111111111111100; // ************
            4'b1100 : rom_data = 16'b0001111111111000; //   *********
            4'b1101 : rom_data = 16'b0001110000011000; //   ***   **
            4'b1110 : rom_data = 16'b0000100000010000; //    *     *
            4'b1111 : rom_data = 16'b0000111000011100; //    ***   ***
        endcase
    end

    // Dino rom address ---------------------------------------------
    wire [3:0]  rom_addr;
    assign rom_addr = y_pos - y_dino;

    // Dino rom bit-position ----------------------------------------
    reg pixel;
    always @*
        if ((x_pos>=`DINO_X) && (x_pos<(`DINO_X+`DINO_SIZE)) &&            
            (y_dino<=y_pos) && ((y_dino+(`DINO_SIZE-1))>=y_pos))
        begin
            pixel = rom_data[x_pos-`DINO_X];
        end
        else
        begin
            pixel = 0;
        end

endmodule
