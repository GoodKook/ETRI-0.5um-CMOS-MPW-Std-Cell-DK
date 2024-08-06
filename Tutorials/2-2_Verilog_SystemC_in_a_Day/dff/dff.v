
module dff(clk, d, q);
input clk, d;
output q;

reg q;

//assign q = (clk)? d : q;    // Circular combinational logic

//always @(posedge clk) // edge trigger
always @(clk)
//always @(clk or d)    // level trigger
//always @(clk, d)
begin
    if (clk)
        q <= d;
end

endmodule
