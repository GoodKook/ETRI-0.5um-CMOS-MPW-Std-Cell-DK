//
// Filename: cactus.v
// Purpose:
//
`include "dino_run.vh"

module cactus(clk, reset, x_pos, y_pos, delay, v_sync, pixel);
input       clk;
input       reset;
input [6:0] x_pos;
input [5:0] y_pos;
input       v_sync;
input [7:0] delay;
output      pixel;

    // Update Cactus position -----------------------------------------
    reg [6:0] x_cactus[3];
    reg [3:0] cactus_delay[2];
    always @(posedge clk or posedge reset)
    begin
        if (reset)
        begin
            cactus_delay[0] <= 0;
            cactus_delay[1] <= 0;
            x_cactus[0] <= 0;
            x_cactus[1] <= 6;
            x_cactus[2] <= 75;
        end
        else
        begin
            if (v_sync)
            begin
                // Cactus 0
                x_cactus[0] <= x_cactus[0] + 1;

                // Cactus 1
                //x_cactus[1] <= x_cactus[1] + 1;
                if (x_cactus[1]==7'b1111111)
                    cactus_delay[0] <= delay[7:4];

                if (cactus_delay[0])
                    cactus_delay[0] <= cactus_delay[0] - 1;
                else
                    x_cactus[1] <= x_cactus[1] + 1;

                // Cactus 2
                //x_cactus[1] <= x_cactus[1] + 1;
                if (x_cactus[2]==7'b1111111)
                    cactus_delay[1] <= delay[3:0];

                if (cactus_delay[1])
                    cactus_delay[1] <= cactus_delay[1] - 1;
                else
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
            4'b0001 : rom_data = 16'b0000000110000000; //
            4'b0010 : rom_data = 16'b0000001111000000; //
            4'b0011 : rom_data = 16'b0000001111000000; //
            4'b0100 : rom_data = 16'b0000001111000000; //
            4'b0101 : rom_data = 16'b000001111000000; //
            4'b0110 : rom_data = 16'b0011001111000000; //
            4'b0111 : rom_data = 16'b0111001111011000; //
            4'b1000 : rom_data = 16'b0011111111011100; //
            4'b1001 : rom_data = 16'b0011111111011100; //
            4'b1010 : rom_data = 16'b0000111111111100; //
            4'b1011 : rom_data = 16'b00000011111110000; //
            4'b1100 : rom_data = 16'b00000011111000000; //
            4'b1101 : rom_data = 16'b00000011110000000; //
            4'b1110 : rom_data = 16'b00000011110000000; //
            4'b1111 : rom_data = 16'b00000011110000000; //
        endcase
    end

    // Cactus rom address ---------------------------------------------
    wire [3:0]  rom_addr;
    assign rom_addr = y_pos - `CACTUS_Y;

    // Cactus rom bit-position ----------------------------------------
    reg [2:0] _pixel;
    always @*
    begin
        if ((x_pos>=x_cactus[0]) && (x_pos<(x_cactus[0]+`CACTUS_SIZE)) && (y_pos>=`CACTUS_Y) && (y_pos<=`CACTUS_Y+`CACTUS_SIZE))
            _pixel[0] = rom_data[x_pos-x_cactus[0]];
        else
            _pixel[0] = 0;

        if ((x_pos>=x_cactus[1]) && (x_pos<(x_cactus[1]+`CACTUS_SIZE)) && (y_pos>=`CACTUS_Y) && (y_pos<=`CACTUS_Y+`CACTUS_SIZE))
            _pixel[1] = rom_data[x_pos-x_cactus[1]];
        else
            _pixel[1] = 0;

        if ((x_pos>=x_cactus[2]) && (x_pos<(x_cactus[2]+`CACTUS_SIZE)) && (y_pos>=`CACTUS_Y) && (y_pos<=`CACTUS_Y+`CACTUS_SIZE))
            _pixel[2] = rom_data[x_pos-x_cactus[2]];
        else
            _pixel[2] = 0;
    end

    assign pixel = _pixel[0]|_pixel[1]|_pixel[2] | (y_pos==`SCREEN_HEIGHT-7)? 1:0;
endmodule
