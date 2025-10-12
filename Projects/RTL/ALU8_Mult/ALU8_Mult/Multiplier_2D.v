
`define macro_args

module Multiplier_2D #(parameter M = 4, parameter N = 4)(
    input [M-1:0] A, //Input A, size M
    input [N-1:0] B, //Input B, size N
    output [M+N-1:0] P );  //Output P (product), size M+N

    wire [M+N-1:0] PP [N-1:0];

    // Note: bits PP[0][M+N-1:M+1] are never used. Unused bits are optimized out during synthesis
    //assign PP[0][M:0] = { {1'b0} , { A & {M{B[0]}} } };
    //assign PP[0][M+N-1:M+1] = {(N-1){1'b0}}; // uncomment to make probing readable
    assign PP[0] = { {N{1'b0}} , { A & {M{B[0]}} } };
    assign P = PP[N-1];
    
    genvar i;
    generate
    for (i=1; i < N; i=i+1)
    begin: addPartialProduct
        wire [M+i-1:0] gA,gB,gS; wire Cout;
        assign gA = { A & {M{B[i]}} , {i{1'b0}} };
        assign gB = PP[i-1][M+i-1:0];
        //assign PP[i][M+i:0] = {Cout,gS};
        //if (i+1<N) assign PP[i][M+N-1:M+i+1] = {(N-i){1'b0}}; // uncomment to make probing readable
        assign PP[i] = { {(N-i){1'b0}}, Cout, gS};
        RippleCarryAdder#(M+i) adder(
            .A(gA), .B(gB), .S(gS), .Cin(1'b0), .Cout(Cout) );
    end
    endgenerate
    
    //always@* foreach(S[i]) $display("S[%0d]:%b",i,S[i]);

endmodule
