//
// https://github.com/tnat93/16x16-Array-Multiplier
//
// 16x16-Array-Multiplier
// Design of a 16x16 Array Multiplier in Verilog
//
// A structural design of a 16x16 array multiplier, starting with a 2x2, then a 4x4, then an 8x8.
//
/* verilator lint_off WIDTHTRUNC */
/* verilator lint_off UNUSEDSIGNAL */

module array8(a,b,c);
    input [7:0]a,b;
    output [15:0]c;
     
    wire [15:0]q0,q1,q2,q3,c;
    wire [7:0]q4,temp1;
    wire [11:0]q5,q6,temp2,temp3,temp4;
     
    array4 z1(a[3:0],b[3:0],q0[15:0]);
    array4 z2(a[7:4],b[3:0],q1[15:0]);
    array4 z3(a[3:0],b[7:4],q2[15:0]);
    array4 z4(a[7:4],b[7:4],q3[15:0]);
     
    assign temp1 ={4'b0,q0[7:4]};
    assign q4 = q1[7:0]+temp1;
    assign temp2 ={4'b0,q2[7:0]};
    assign temp3 ={q3[7:0],4'b0};
    assign q5 = temp2+temp3;
    assign temp4={4'b0,q4[7:0]};
     
    // stage 2 adder
    assign q6 = temp4+q5;
     
    // final output assignment
    assign c[3:0]=q0[3:0];
    assign c[15:4]=q6[11:0];
endmodule
