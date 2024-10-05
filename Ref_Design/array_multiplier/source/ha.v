//
// https://github.com/tnat93/16x16-Array-Multiplier
//
// 16x16-Array-Multiplier
// Design of a 16x16 Array Multiplier in Verilog
//
// A structural design of a 16x16 array multiplier, starting with a 2x2, then a 4x4, then an 8x8.
//
 
module ha(a,b,s,c);
    input a,b;
    output s,c;
     
    assign s = a^b;
    assign c = a&b;
endmodule
