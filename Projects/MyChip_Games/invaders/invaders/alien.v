//
// Filename: alien.v
// Purpose:
//
`include "invaders.vh"

module alien(clk, reset, x_pos, y_pos, v_sync, x_ball, alien_flip, hit_alien, en_lfsr4, lfsr4, game_init, pixel_alien, pixel_bullet, game_complete);
input           clk;
input           reset;
input [6:0]     x_pos;
input [5:0]     y_pos;
input [6:0]     x_ball;
input           alien_flip;
input           hit_alien;
input [3:0]     lfsr4;
input           v_sync;
input           game_init;
output          en_lfsr4;
output          pixel_alien;
output          pixel_bullet;
output          game_complete;

    // Aliens --------------------------------------------------------
    reg [7:0] regAliens;
    always @(posedge clk or posedge reset)
    begin
        if (reset)
            regAliens <= 16'b11111111;
        else if (v_sync)
        begin
            if (hit_alien)
                regAliens[x_ball[6:4]] <= 0;
        end
    end

    assign game_complete = (!regAliens)? 1 : 0;

    // Aliens rom address ---------------------------------------------
    wire [`ALIEN_H_BITS-1:0]    rom_addr;
    assign rom_addr = y_pos - (`SCREEN_HEIGHT-`ALIENS_Y0);

    // Aliens Image ROM -----------------------------------------------
    reg  [`ALIEN_WIDTH-1:0]     rom_data_0;
    always @*
    begin
        case(rom_addr)
            3'b000 : rom_data_0 = 16'b0001111111100000;
            3'b001 : rom_data_0 = 16'b0011111111110000;
            3'b010 : rom_data_0 = 16'b0011001100110000;
            3'b011 : rom_data_0 = 16'b0011001100110000;
            3'b100 : rom_data_0 = 16'b0011111111110000;
            3'b101 : rom_data_0 = 16'b0001111111100000;
            3'b110 : rom_data_0 = 16'b0000100001000000;
            3'b111 : rom_data_0 = 16'b0001000000100000;
        endcase
    end

    // Aliens Image ROM -----------------------------------------------
    reg  [`ALIEN_WIDTH-1:0]     rom_data_1;
    always @*
    begin
        case(rom_addr)
            3'b000 : rom_data_1 = 16'b0000011111111000;
            3'b001 : rom_data_1 = 16'b0000111111111100;
            3'b010 : rom_data_1 = 16'b0000110011001100;
            3'b011 : rom_data_1 = 16'b0000110011001100;
            3'b100 : rom_data_1 = 16'b0000111111111100;
            3'b101 : rom_data_1 = 16'b0000011111111000;
            3'b110 : rom_data_1 = 16'b0000010000010000;
            3'b111 : rom_data_1 = 16'b0000001000100000;
        endcase
    end

    wire [`ALIEN_WIDTH-1:0] rom_data;
    assign rom_data = (alien_flip)? rom_data_1:rom_data_0;

    // Alien Pixel ----------------------------------------------------
    reg [7:0] _pixel;
    integer i;
    always @*
    begin
        for (i = 0; i < 8; i = i + 1)
        begin
            if (regAliens[i])
            begin
                if ((x_pos>(i*`ALIEN_WIDTH)) && (x_pos<(`ALIEN_WIDTH*(i+1))) && (y_pos>`ALIENS_Y0) && (y_pos<(`ALIENS_Y0+`ALIEN_HEIGHT)))
                    _pixel[i] = rom_data[x_pos];
                else
                    _pixel[i] = 0;
            end
            else
                _pixel[i] = 0;
        end
    end

    assign pixel_alien = (_pixel)? 1 : 0;

    // Bullet ----------------------------------------------------------
    reg [6:0]   x_bullet;
    reg [5:0]   y_bullet;
    always @(posedge clk or posedge reset)
    begin
        if (reset)
        begin
            x_bullet <= 16*4+8;
            y_bullet <= 0;
        end
        else
        begin
            if (game_init)
                y_bullet <= 0;
            else if (regAliens[lfsr4] && y_bullet==0)
            begin
                x_bullet <= 16*lfsr4+8;
                y_bullet <= 8;
            end
            else if(y_bullet && v_sync)
            begin
                y_bullet <= y_bullet + 1;
            end
        end
    end

    assign en_lfsr4 = (y_bullet==0)? 1:0;

    // Bullet Pixel ----------------------------------------------------
    assign pixel_bullet = ( (x_pos==x_bullet)    && (y_pos==y_bullet)   |
                            ((x_pos==x_bullet+1) && (y_pos==y_bullet))  |
                            ((x_pos==x_bullet)   && (y_pos==y_bullet+1))|
                            ((x_pos==x_bullet+1) && (y_pos==y_bullet+1)) )? 1:0;
endmodule
