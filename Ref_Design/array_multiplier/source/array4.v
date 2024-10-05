//
// https://github.com/tnat93/16x16-Array-Multiplier
//
// 16x16-Array-Multiplier
// Design of a 16x16 Array Multiplier in Verilog
//
// A structural design of a 16x16 array multiplier, starting with a 2x2, then a 4x4, then an 8x8.
//
 
module array4(a,b,c);
    input [3:0]a, b;
    output [7:0]c;
     
    wire [3:0]q0,q1,q2,q3,q4,temp1;
     
    wire [7:0]c;
    wire [5:0]q5,q6,temp2,temp3,temp4;
     
    array2 z1(a[1:0],b[1:0],q0[3:0]);
    array2 z2(a[3:2],b[1:0],q1[3:0]);
    array2 z3(a[1:0],b[3:2],q2[3:0]);
    array2 z4(a[3:2],b[3:2],q3[3:0]);
     
    assign temp1 ={2'b0,q0[3:2]};
    assign q4 = q1[3:0]+temp1;
    assign temp2 ={2'b0,q2[3:0]};
    assign temp3 ={q3[3:0],2'b0};
    assign q5 = temp2+temp3;
    assign temp4={2'b0,q4[3:0]};
    assign q6 = temp4+q5;
     
    assign c[1:0]=q0[1:0];
    assign c[7:2]=q6[5:0];
endmodule
