//
// https://github.com/tnat93/16x16-Array-Multiplier
//
// 16x16-Array-Multiplier
// Design of a 16x16 Array Multiplier in Verilog
//
// A structural design of a 16x16 array multiplier, starting with a 2x2, then a 4x4, then an 8x8.
//
/* verilator lint_off WIDTHTRUNC */

module array16(a,b,c);
 
    input [15:0]a,b;
    output [31:0]c;
     
    wire [15:0]q0,q1,q2,q3,q4,temp1;
    wire [31:0]c;
    wire [23:0]q5,q6,temp2,temp3,temp4;
     
    array8 z1(a[7:0],b[7:0],q0[15:0]);
    array8 z2(a[15:8],b[7:0],q1[15:0]);
    array8 z3(a[7:0],b[15:8],q2[15:0]);
    array8 z4(a[15:8],b[15:8],q3[15:0]);
    assign temp1 ={8'b0,q0[15:8]};
    assign q4 = q1[15:0]+temp1;
    assign temp2 ={8'b0,q2[15:0]};
    assign temp3 ={q3[15:0],8'b0};
    assign q5 = temp2+temp3;
    assign temp4={8'b0,q4[15:0]};
     
    assign q6 = temp4 + q5;
     
    assign c[7:0]=q0[7:0];
    assign c[31:8]=q6[23:0];
 
endmodule

