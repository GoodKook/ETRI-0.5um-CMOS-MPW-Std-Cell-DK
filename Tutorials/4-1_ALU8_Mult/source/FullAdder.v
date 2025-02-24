
module FullAdder(input A,B,Cin, output wire S,Cout);
    assign {Cout,S} = A+B+Cin;
endmodule

