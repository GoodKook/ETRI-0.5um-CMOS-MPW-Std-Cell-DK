
module RippleCarryAdder#(parameter N = 4)(A,B,Cin,S,Cout);
    input [N-1:0] A;
    input [N-1:0] B;
    input Cin;
    output [N-1:0] S;
    output Cout;
    
    wire [N:0] CC;
    
    assign CC[0] = Cin;
    assign Cout = CC[N];

    genvar i;
    generate
    for (i=0; i < N; i=i+1)
    begin: addbit
        FullAdder unit(A[i],B[i],CC[i],S[i],CC[i+1]);
    end
    endgenerate

endmodule
    
module FullAdder(input A,B,Cin, output wire S,Cout);
    assign {Cout,S} = A+B+Cin;
endmodule
