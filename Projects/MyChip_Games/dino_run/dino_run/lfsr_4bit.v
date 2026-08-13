//
// 4-Bit Linear Feedback Shift Register (LFSR)
//
module lfsr_4bit ( clk, reset, enable, q);
input           clk;    // Clock input
input           reset;  // Asynchronous reset
input           enable;
output  [3:0]   q;       // 4-bit pseudo-random output

    reg  [3:0] q;

    wire feedback;

    // Feedback polynomial: x^4 + x^3 + 1 
    // Taps at bit position 3 and 2 (0-indexed)
    assign feedback = q[3] ^ q[2];

    always @(posedge clk or posedge reset)
    begin
        if (reset)
        begin
            // Initialize with a non-zero seed to prevent lockup
            q <= 4'b0001; 
        end
        else if (enable)
        begin
            // Shift left and insert the feedback bit into the LSB
            q <= {q[2:0], feedback};
        end
    end

endmodule
