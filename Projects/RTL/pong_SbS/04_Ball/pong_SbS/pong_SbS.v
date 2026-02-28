//
// Filename: pong_SbS.v
// Purpose: Draw Table
//

`define TABLE_WIDTH     128
`define TABLE_HEIGHT    64

module pong_SbS(clk, reset, x_pos, y_pos, pixel, p_tick, busy);
input           clk;
input           reset;
output [6:0]    x_pos;
output [5:0]    y_pos;
output          pixel;
output          p_tick;
input           busy;

    // FSM ----------------------------------------
    reg         p_tick;
    reg         inc_rom_bit;
    reg [2:0]   State;
    parameter sWait  = 3'b001;
    parameter sPixel = 3'b010;
    parameter sCheck = 3'b100;
    always @(posedge clk or posedge reset)
    begin
        if (reset)
        begin
            p_tick <= 0;
            inc_rom_bit <= 0;
            State <= sWait;
        end
        else
            case(State)
            sWait:
                begin
                    if (!busy)
                    begin
                        p_tick <= 1'b1;
                        State <= sPixel;
                    end
                end
            sPixel:
                begin
                    p_tick <= 1'b0;
                    inc_rom_bit <= 1;
                    State <= sCheck;
                end
            sCheck:
                begin
                    inc_rom_bit <= 0;
                    if (busy)
                        State <= sWait;
                end
            default:
                State <= sWait;
            endcase
    end

    // Pixel's X-position
    reg [6:0]   x_pos;
    always @(posedge clk or posedge reset)
    begin
        if (reset)
            x_pos <= 127;
        else if (p_tick)
            x_pos <= x_pos + 1;
    end
    // Pixel's Y-Position
    reg [5:0]   y_pos;
    always @(posedge clk or posedge reset)
    begin
        if (reset)
            y_pos <= 63;
        else if (p_tick && (x_pos==127))
            y_pos <= y_pos + 1;
    end
    // H-Sync
    reg h_sync;
    always @(posedge clk or posedge reset)
    begin
        if (reset)
            h_sync <= 0;
        else
        begin
            if(p_tick && (x_pos==127))
                h_sync <= 1;
            else
                h_sync <= 0;
        end
    end
    // V-Sync
    reg v_sync;
    always @(posedge clk or posedge reset)
    begin
        if (reset)
            v_sync <= 0;
        else
        begin
            if(p_tick && (x_pos==127) && (y_pos==63))
                v_sync <= 1;
            else
                v_sync <= 0;
        end
    end

    // Update Ball position ----------------------
    reg [6:0] x_ball;
    reg [5:0] y_ball;
    always @(posedge clk or posedge reset)
    begin
        if (reset)
        begin
            x_ball <= 0;
            y_ball <= 50;
        end
        else
        begin
            if (v_sync)
            begin
                if (sign_x) x_ball <= x_ball - 1;
                else        x_ball <= x_ball + 1;
                if (sign_y) y_ball <= y_ball - 1;
                else        y_ball <= y_ball + 1;
            end;
        end
    end

    reg sign_x;
    reg sign_y;
    always @(posedge clk or posedge reset)
    begin
        if (reset)
        begin
            sign_x <= 0;
            sign_y <= 0;
        end
        else if (v_sync)
        begin
            if (x_ball==119)    sign_x <= 1;
            else if (x_ball==0) sign_x <= 0;
            if (y_ball==55)     sign_y <= 1;
            else if (y_ball==0) sign_y <= 0;
        end
    end

    // Ball rom address --------------------------
    reg [2:0]  rom_addr;
    always @(posedge clk or posedge reset)
    begin
        if (reset)
            rom_addr <= 0;
        else if (y_pos==y_ball)
            rom_addr <= 0;
        else if (h_sync)
            rom_addr <= rom_addr + 1;
    end
    // Ball rom bit-position --------------------
    reg [2:0]  rom_bit;
    always @(posedge clk or posedge reset)
    begin
        if (reset)
            rom_bit <= 0;
        else
        begin
            if (inc_rom_bit)
            begin
                if (x_pos==x_ball)
                    rom_bit <= 0;
                else
                    rom_bit <= rom_bit + 1;
            end
        end
    end
    // Ball ROM ------------------------------------------
    reg  [7:0]  rom_data;
    always @*
    begin
        case(rom_addr)
            3'b000 :    rom_data = 8'b00111100; //   ****  
            3'b001 :    rom_data = 8'b01111110; //  ******
            3'b010 :    rom_data = 8'b11000011; // ********
            3'b011 :    rom_data = 8'b11000011; // ********
            3'b100 :    rom_data = 8'b11000011; // ********
            3'b101 :    rom_data = 8'b11000011; // ********
            3'b110 :    rom_data = 8'b01111110; //  ******
            3'b111 :    rom_data = 8'b00111100; //   ****
        endcase
    end

    // Pixel value --------------------------------------------
    reg pixel;
    always @*
        if ((x_ball<=x_pos) && ((x_ball+7)>=x_pos) &&
            (y_ball<=y_pos) && ((y_ball+7)>=y_pos))
            pixel = rom_data[rom_bit];
        else
            pixel = 0;
endmodule
