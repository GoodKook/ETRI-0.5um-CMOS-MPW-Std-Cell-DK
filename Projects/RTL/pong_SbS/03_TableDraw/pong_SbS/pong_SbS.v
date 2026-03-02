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

    // FSM ////////////////////////
    reg [2:0]   State;
    parameter sWait  = 3'b001;
    parameter sPixel = 3'b010;
    parameter sCheck = 3'b100;

    always @(posedge clk or posedge reset)
    begin
        if (reset)
        begin
            x_pos <= 127;
            y_pos <= 63;
            p_tick <= 0;
            State <= sWait;
        end
        else
            case(State)
            sWait:
                begin
                    if (!busy)
                    begin
                        x_pos += 1;
                        if (x_pos==0)   y_pos += 1;
                        p_tick <= 1'b1;
                        State <= sPixel;
                    end
                end
            sPixel:
                begin
                    if (busy)
                    begin
                        p_tick <= 1'b0;
                        //State <= sCheck;
                        State <= sWait;
                    end
                end
            sCheck:
                State <= sWait;
            default:
                State <= sWait;
            endcase
    end

    assign pixel = (x_pos>9 && x_pos<15)? 1'b1:1'b0;
endmodule
