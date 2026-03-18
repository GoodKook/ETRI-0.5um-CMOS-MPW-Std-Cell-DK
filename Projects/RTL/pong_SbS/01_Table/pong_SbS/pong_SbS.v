//
// Filename: pong_SbS.v
// Purpose: Draw Table
//

module pong_SbS(clk, reset, x_pos, y_pos, pixel);
input           clk;
input           reset;
output [6:0]    x_pos;
output [5:0]    y_pos;
output          pixel;

    reg [6:0]   x_pos;
    reg [5:0]   y_pos;
    reg         pixel;

    always @(posedge clk or posedge reset)
    begin
        if (reset)
        begin
            x_pos <= 0;
            y_pos <= 0;
        end
        else
        begin
            x_pos += 1;
            if (x_pos==0)   y_pos += 1;
        end
    end

    assign pixel = (x_pos>9 && x_pos<15)? 1'b1:1'b0;
endmodule
