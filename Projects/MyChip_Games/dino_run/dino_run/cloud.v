//
// Filename: cloud.v
// Purpose:
//
`include "dino_run.vh"

module cloud(clk, reset, game_init, x_pos, y_pos, v_sync, alt, en_alt, pixel);
input       clk;
input       reset;
input       game_init;
input [6:0] x_pos;
input [5:0] y_pos;
input       v_sync;
input [3:0] alt;
output      en_alt;
output      pixel;

    // Update Cloud position -----------------------------------------
    reg [6:0]   x_cloud[2];
    reg [3:0]   alt_cloud[2];
    reg         en_alt;
    always @(posedge clk or posedge reset)
    begin
        if (reset)
        begin
            x_cloud[0] <= 0;
            x_cloud[1] <= 0;
            en_alt <= 1;
            alt_cloud[0] <= 0;
            alt_cloud[1] <= 0;
        end
        else
        begin
            if (game_init)
            begin
                x_cloud[0] <= 0;
                x_cloud[1] <= 0;
                en_alt <= 1;
                alt_cloud[0] <= 0;
                alt_cloud[1] <= 0;
            end
            else if (v_sync)
            begin
                if (x_cloud[0]==0)
                begin
                    alt_cloud[0] <= alt + 10;
                    alt_cloud[1] <= alt + 16;
                    en_alt <= 1;
                end
                else
                    en_alt <= 0;

                x_cloud[0] <= x_cloud[0] + 1;
                x_cloud[1] <= x_cloud[1] + 2;
            end
        end
    end

    // Cloud Image ROM -----------------------------------------------
    reg  [`CLOUD_W-1:0]  rom_data_0;
    always @*
    begin                         //          1         2         3
        case(rom_addr_0)            //01234567890123456789012345678901
            3'b000 : rom_data_0 = 32'b00000000000000000011100000000000;
            3'b001 : rom_data_0 = 32'b00000000011000000100011000000000;
            3'b010 : rom_data_0 = 32'b00000000100010011000000100000000;
            3'b011 : rom_data_0 = 32'b00000001000000100000000011000000;
            3'b100 : rom_data_0 = 32'b00000010000000000000000000100000;
            3'b101 : rom_data_0 = 32'b00000100000000000000000000010000;
            3'b110 : rom_data_0 = 32'b00011000000110011000001100001000;
            3'b111 : rom_data_0 = 32'b01111111111001100011110011100000;
        endcase
    end

    // Cloud Image ROM -----------------------------------------------
    reg  [`CLOUD_W-1:0]  rom_data_1;
    always @*
    begin                         //          1         2         3
        case(rom_addr_1)            //01234567890123456789012345678901
            3'b000 : rom_data_1 = 32'b00000000000000000011100000000000;
            3'b001 : rom_data_1 = 32'b00000000011000000100011000000000;
            3'b010 : rom_data_1 = 32'b00000000100010011000000100000000;
            3'b011 : rom_data_1 = 32'b00000001000000100000000011000000;
            3'b100 : rom_data_1 = 32'b00000010000000000000000000100000;
            3'b101 : rom_data_1 = 32'b00000100000000000000000000010000;
            3'b110 : rom_data_1 = 32'b00011000000110011000001100001000;
            3'b111 : rom_data_1 = 32'b01111111111001100011110011100000;
        endcase
    end

    // Cloud rom address ---------------------------------------------
    wire [2:0]  rom_addr_0;
    assign rom_addr_0 = y_pos - alt_cloud[0];

    wire [2:0]  rom_addr_1;
    assign rom_addr_1 = y_pos - alt_cloud[1];

    // Cloud rom bit-position ----------------------------------------
    reg _pixel[2];
    always @*
    begin
        if ((x_cloud[0]>2) && (x_pos>x_cloud[0]) && (x_pos<(x_cloud[0]+`CLOUD_W)) && (y_pos>=alt_cloud[0]) && (y_pos<(alt_cloud[0]+`CLOUD_H)))
            _pixel[0] = rom_data_0[x_pos-x_cloud[0]];
        else
            _pixel[0] = 0;

        if ((x_cloud[1]>2) && (x_pos>x_cloud[1]) && (x_pos<(x_cloud[1]+`CLOUD_W)) && (y_pos>=alt_cloud[1]) && (y_pos<(alt_cloud[1]+`CLOUD_H)))
            _pixel[1] = rom_data_1[x_pos-x_cloud[1]];
        else
            _pixel[1] = 0;
    end

    assign pixel = _pixel[0] | _pixel[1];
endmodule
