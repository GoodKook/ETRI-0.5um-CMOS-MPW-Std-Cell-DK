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

    reg [6:0]   x_pos;
    reg [5:0]   y_pos;
    reg         pixel;
    reg         p_tick;

    reg         v_sync;

    // FSM //////////////////////////////////////////////////////////
    reg [1:0]   State;
    parameter sWait  = 2'b01;
    parameter sPixel = 2'b10;

    always @(posedge clk or posedge reset)
    begin
        if (reset)
        begin
            x_pos  <= 127;
            y_pos  <= 63;
            p_tick <= 0;
            v_sync <= 0;
            State <= sWait;
        end
        else
            case(State)
            sWait:
                begin
                    if (!busy)
                    begin
                        x_pos <= x_pos + 1;
                        if (x_pos==127)
                        begin
                            y_pos <= y_pos + 1;
                            if(y_pos==63)
                               v_sync <= 1;
                        end
                        p_tick <= 1'b1;
                        State <= sPixel;
                    end
                end
            sPixel:
                begin
                    v_sync <= 0;
                    if (busy)
                    begin
                        p_tick <= 1'b0;
                        State <= sWait;
                    end
                end
            default:
                State <= sWait;
            endcase
    end

    // Update Ball position -----------------------------------------
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

    // Ball Image ROM -----------------------------------------------
    reg  [7:0]  rom_data;
    always @*
    begin
        case(rom_addr)
            3'b000 :    rom_data = 8'b00111100; //   ****  
            3'b001 :    rom_data = 8'b01111110; //  ******
            3'b010 :    rom_data = 8'b11000011; // **    **
            3'b011 :    rom_data = 8'b11000011; // **    **
            3'b100 :    rom_data = 8'b11000011; // **    **
            3'b101 :    rom_data = 8'b11000011; // **    **
            3'b110 :    rom_data = 8'b01111110; //  ******
            3'b111 :    rom_data = 8'b00111100; //   ****
        endcase
    end
    // Ball rom address ---------------------------------------------
    wire [2:0]  rom_addr;
    assign rom_addr = y_pos-y_ball;
    // Ball rom bit-position ----------------------------------------
    wire [2:0]  rom_bit;
    assign rom_bit = x_pos - x_ball;

//    assign pixel = rom_data[rom_bit];
    always @*
        if ((x_ball<=x_pos) && ((x_ball+7)>=x_pos) &&
            (y_ball<=y_pos) && ((y_ball+7)>=y_pos))
            pixel = rom_data[rom_bit];
        else
            pixel = 0;
endmodule
