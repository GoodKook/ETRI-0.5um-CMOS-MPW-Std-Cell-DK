/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: dffrs.v
Purpose: D-FlipFlop
Revision History: Aug. 1, 2024
*******************************************************************************/

module dffrs(clk, r, s, d, q);
input clk, r, s, d;
output q;

reg q;

always @(posedge clk or negedge r or negedge s) // edge trigger, Async r & s
//always @(posedge clk) // edge trigger, Sync r & s
begin
    if (!r) // Reset
        q <= 0;
    else if (!s)  // Set
        q <= 1;
    else
        q <= d;
end

//always @(clk)
//always @(clk, r, s)
//always @(clk, r, s, d)
//begin
//    if (!r) // Reset
//        q <= 0;
//    else if (!s)  // Set
//        q <= 1;
//    else if (clk)
//        q <= d;
//end

endmodule
