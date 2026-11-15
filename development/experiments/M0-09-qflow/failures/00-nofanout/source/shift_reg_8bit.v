
module shift_reg_8bit (
    input        clk,
    input        rst_n,
    input        din,
    output [7:0] dout
);

    reg [7:0] shift_reg;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            shift_reg <= 8'b00000000;
        end else begin
            shift_reg <= {shift_reg[6:0], din};
        end
    end

    assign dout = shift_reg;

endmodule
