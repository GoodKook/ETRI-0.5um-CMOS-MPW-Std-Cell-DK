//
// Filename: ctrl.v
// Purpose:
//
`include "pong_pt2.vh"

module ctrl(clk, reset, x_pos, y_pos, busy, p_tick, v_sync, pixel_ball, pixel_paddle, pixel);
input           clk;
input           reset;
output [6:0]    x_pos;
output [5:0]    y_pos;

input           busy;
output          p_tick;
output          v_sync;

input           pixel_ball;
input           pixel_paddle;
output          pixel;

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

    // Pixel --------------------------------------------------------
    assign pixel = pixel_ball | pixel_paddle;

endmodule
