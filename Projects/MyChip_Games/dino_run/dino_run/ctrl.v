//
// Filename: ctrl.v
// Purpose:
//
`include "dino_run.vh"

module ctrl(clk, reset, x_pos, y_pos, p_tick, v_sync);
input           clk;
input           reset;
output [6:0]    x_pos;
output [5:0]    y_pos;

output          p_tick;
output          v_sync;

    reg [6:0]   x_pos;
    reg [5:0]   y_pos;
    reg         pixel;
    reg         p_tick;

    reg         v_sync;

    // FSM //////////////////////////////////////////////////////////
    reg [2:0]   State;
    reg [2:0]   cnt_v_sync;
    parameter sWait   = 3'b001;
    parameter sPixel  = 3'b010;
    parameter sV_Sync = 3'b100;

    always @(posedge clk or posedge reset)
    begin
        if (reset)
        begin
            x_pos  <= 127;
            y_pos  <= 63;
            p_tick <= 0;
            v_sync <= 0;
            cnt_v_sync <= 0;
            State <= sWait;
        end
        else
            case(State)
            sWait:
            begin
                x_pos <= x_pos + 1;
                if (x_pos==(`SCREEN_WIDTH-1))
                begin
                    y_pos <= y_pos + 1;
                    if(y_pos==(`SCREEN_HEIGHT-1))
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

endmodule
