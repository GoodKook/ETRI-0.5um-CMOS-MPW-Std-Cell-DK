//
// Filename: pong_SbS.v
// Purpose: Draw Table
//

`define TABLE_WIDTH     128
`define TABLE_HEIGHT    64

`define WALL_X          5
`define WALL_WIDTH      10

`define BALL_INIT_X     0
`define BALL_INIT_Y     50

`define BALL_SPEED_X    1
`define BALL_SPEED_Y    1

`define BALL_WIDTH      8
`define BALL_HEIGHT     8

`define PADDLE_WIDTH    5
`define PADDLE_HEIGHT   20

module pong_SbS(clk, reset, x_pos, y_pos, pixel, p_tick, busy, up, down);
input           clk;
input           reset;
output [6:0]    x_pos;
output [5:0]    y_pos;
output          pixel;
output          p_tick;
input           busy;
input           up;
input           down;

    reg [6:0]   x_pos;
    reg [5:0]   y_pos;
    wire        pixel;
    reg         p_tick;

    reg         v_sync;

    // FSM //////////////////////////////////////////////////////////
    reg [1:0]   State;
    parameter sWait  = 2'b01;
    parameter sPixel = 2'b10;

//    typedef enum {
//        sWait, sPixel
//    } State_t;
//    State_t State;

    always @(posedge clk or negedge reset)
    begin
        if (!reset)
        begin
            x_pos  <= `TABLE_WIDTH-1;
            y_pos  <= `TABLE_HEIGHT-1;
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
                        if (x_pos==(`TABLE_WIDTH-1))
                        begin
                            y_pos <= y_pos + 1;
                            if(y_pos==(`TABLE_HEIGHT-1))
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
    always @(posedge clk or negedge reset)
    begin
        if (!reset)
        begin
            x_ball <= `BALL_INIT_X;
            y_ball <= `BALL_INIT_Y;
        end
        else
        begin
            if (v_sync)
            begin
                if (sign_x) x_ball <= x_ball - `BALL_SPEED_X;
                else        x_ball <= x_ball + `BALL_SPEED_X;
                if (sign_y) y_ball <= y_ball - `BALL_SPEED_Y;
                else        y_ball <= y_ball + `BALL_SPEED_Y;
            end;
        end
    end

    reg sign_x;
    reg sign_y;
    always @(posedge clk or negedge reset)
    begin
        if (!reset)
        begin
            sign_x <= 0;
            sign_y <= 0;
        end
        else if (v_sync)
        begin
            if (x_ball==(`TABLE_WIDTH-`BALL_WIDTH))     sign_x <= 1;
            else if (x_ball==0)                         sign_x <= 0;
            if (y_ball==(`TABLE_HEIGHT-`BALL_HEIGHT))   sign_y <= 1;
            else if (y_ball==0)                         sign_y <= 0;
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

    // Paddle Postion -----------------------------------------------
    reg [5:0]   paddle;
    always @(posedge clk or negedge reset)
    begin
        if (!reset)
        begin
            paddle <= 0;
        end
        else
        begin
            if (up && paddle > 0 && v_sync)
                paddle <= paddle - 1;
            if (down && paddle < (`TABLE_HEIGHT-`PADDLE_HEIGHT) && v_sync)
                paddle <= paddle + 1;
        end
    end

    // Table --------------------------------------------------------
    wire pixel_table = ((x_pos>`WALL_X) && (x_pos<`WALL_WIDTH))? 1:0;
    // Ball ---------------------------------------------------------
    reg pixel_ball;
    always @*
        if ((x_ball<=x_pos) && ((x_ball+`BALL_WIDTH)>x_pos) &&
            (y_ball<=y_pos) && ((y_ball+`BALL_HEIGHT)>y_pos))
            pixel_ball = rom_data[rom_bit];
        else
            pixel_ball = 0;
    // Paddle -------------------------------------------------------
    wire pixel_paddle;
    assign pixel_paddle = ((x_pos>(`TABLE_WIDTH-`PADDLE_WIDTH)) &&
                          (y_pos>paddle) && (y_pos<(paddle+`PADDLE_HEIGHT)))?
                          1:0;

    // Pixel --------------------------------------------------------
    assign pixel = (pixel_table ^ pixel_ball) | pixel_paddle;

endmodule
