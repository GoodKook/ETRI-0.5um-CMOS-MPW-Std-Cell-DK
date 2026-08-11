//
// Filename: cactus.v
// Purpose:
//
`include "dino_run.vh"

module cactus(clk, reset, x_pos, y_pos, v_sync, pixel);
input       clk;
input       reset;
input [6:0] x_pos;
input [5:0] y_pos;
input       v_sync;
output      pixel;

    // Update Cactus position -----------------------------------------
    reg [6:0] x_cactus[3];
    always @(posedge clk or posedge reset)
    begin
        if (reset)
        begin
            x_cactus[0] <= 0;
            x_cactus[1] <= 55;
            x_cactus[2] <= 65;
        end
        else
        begin
            if (v_sync)
            begin
                x_cactus[0] <= x_cactus[0] + 1;
                x_cactus[1] <= x_cactus[1] + 1;
                x_cactus[2] <= x_cactus[2] + 1;
            end
        end
    end

    // Cactus Image ROM -----------------------------------------------
    reg  [`CACTUS_SIZE-1:0]  rom_data;
    always @*
    begin
        case(rom_addr)                                 //0123456701234567
            4'b0000 : rom_data = 16'b0000000000000000; //
            4'b0001 : rom_data = 16'b0000011100000000; //
            4'b0010 : rom_data = 16'b0000111110000000; //
            4'b0011 : rom_data = 16'b0000111110000000; //
            4'b0100 : rom_data = 16'b0110111110000000; //
            4'b0101 : rom_data = 16'b1110111110001100; //
            4'b0110 : rom_data = 16'b1110111110011110; //
            4'b0111 : rom_data = 16'b1111111110011110; //
            4'b1000 : rom_data = 16'b0111111111111110; //
            4'b1001 : rom_data = 16'b0011111111111110; //
            4'b1010 : rom_data = 16'b0000111111111000; //
            4'b1011 : rom_data = 16'b0000111110000000; //
            4'b1100 : rom_data = 16'b0000111110000000; //
            4'b1101 : rom_data = 16'b0000111110000000; //
            4'b1110 : rom_data = 16'b0000111110000000; //
            4'b1111 : rom_data = 16'b0000000000000000; //
        endcase
    end

    // Cactus rom address ---------------------------------------------
    wire [3:0]  rom_addr;
    assign rom_addr = y_pos - `CACTUS_Y;

    // Cactus rom bit-position ----------------------------------------
    reg [2:0] _pixel;
    always @*
    begin
        if ((x_pos>=x_cactus[0]) && (x_pos<(x_cactus[0]+`CACTUS_SIZE)) && (y_pos>=`CACTUS_Y))
            _pixel[0] = rom_data[x_pos-x_cactus[0]];
        else
            _pixel[0] = 0;

        if ((x_pos>=x_cactus[1]) && (x_pos<(x_cactus[1]+`CACTUS_SIZE)) && (y_pos>=`CACTUS_Y))
            _pixel[1] = rom_data[x_pos-x_cactus[1]];
        else
            _pixel[1] = 0;

        if ((x_pos>=x_cactus[2]) && (x_pos<(x_cactus[2]+`CACTUS_SIZE)) && (y_pos>=`CACTUS_Y))
            _pixel[2] = rom_data[x_pos-x_cactus[2]];
        else
            _pixel[2] = 0;
    end

    assign pixel = _pixel[0]|_pixel[1]|_pixel[2] | (y_pos==`SCREEN_HEIGHT-3)? 1:0;
endmodule
