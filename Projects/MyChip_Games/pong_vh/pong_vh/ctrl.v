//
// Filename: ctrl.v
// Purpose:
//
`include "pong_vh.vh"

module ctrl(clk, reset, x_pos, y_pos, p_tick, v_sync, pixel_ball, pixel_paddle, pixel, game_new, game_over, load_option);
input           clk;
input           reset;
output [6:0]    x_pos;
output [5:0]    y_pos;

input           game_over;
input           game_new;
output          p_tick;
output          v_sync;
output          load_option;

input           pixel_ball;
input           pixel_paddle;
output          pixel;

    reg [6:0]   x_pos;
    reg [5:0]   y_pos;
    //reg         pixel;
    reg         p_tick;

    reg         v_sync;
    reg         load_option;

    // FSM //////////////////////////////////////////////////////////
    reg [4:0]   State;
    reg [2:0]   cnt_v_sync;
    parameter sGame   = 5'b00001;
    parameter sLoad   = 5'b00010;
    parameter sWait   = 5'b00100;
    parameter sPixel  = 5'b01000;
    parameter sV_Sync = 5'b10000;

    always @(posedge clk or posedge reset)
    begin
        if (reset)
        begin
            x_pos  <= 127;
            y_pos  <= 63;
            p_tick <= 0;
            v_sync <= 0;
            cnt_v_sync <= 0;
            load_option <= 0;
            State <= sGame;
        end
        else
            case(State)
            sGame:
            begin
                x_pos  <= 127;
                y_pos  <= 63;
                p_tick <= 0;
                v_sync <= 0;
                cnt_v_sync <= 0;
                load_option <= 0;
                if (!game_new)  // Button Down
                begin
                    load_option <= 1;
                    State <= sLoad;
                end
            end

            sLoad:
            begin
                if (game_new)   // Button Up
                begin
                    load_option <= 0;
                    State <= sWait;
                end
            end

            sWait:
            begin
                x_pos <= x_pos + 1;
                if (game_over)
                    State <= sGame;
                else if (x_pos==(`TABLE_WIDTH-1))
                begin
                    y_pos <= y_pos + 1;
                    if(y_pos==(`TABLE_HEIGHT-1))
                    begin
                        v_sync <= 1;
                        cnt_v_sync <= {3{1'b1}};
                        State <= sV_Sync;
                    end
                    else
                    begin
                        p_tick <= 1'b1;
                        State <= sPixel;
                    end
                end
                else
                begin
                    p_tick <= 1'b1;
                    State <= sPixel;
                end
            end

            sPixel:
            begin
                v_sync <= 0;
                p_tick <= 1'b0;
                if (game_over)
                    State <= sGame;
                else
                    State <= sWait;
            end

            sV_Sync:
            begin
                v_sync <= 0;
                cnt_v_sync <= cnt_v_sync - 1;
                if (cnt_v_sync==0)
                begin
                    p_tick <= 1'b1;
                    State <= sPixel;
                end
            end

            default:
                State <= sWait;
            endcase
    end

    // Wall ---------------------------------------------------------
    wire pixel_wall;
    assign pixel_wall = ((x_pos<`PADDLE_THICK)? 1:0) || ((y_pos<`PADDLE_THICK)? 1:0);
    // Pixel --------------------------------------------------------
    assign pixel = pixel_ball | pixel_paddle | pixel_wall;

endmodule
