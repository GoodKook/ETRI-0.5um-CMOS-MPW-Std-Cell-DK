
`define macro_args
`define indexed_part_select

module Multiplier_flat #(parameter M = 4, parameter N = 4)(
    input [M-1:0] A, //Input A, size M
    input [N-1:0] B, //Input B, size N
    output [M+N-1:0] P );  //Output P (product), size M+N

    /* Calculate LSB using Wolfram Alpha
    N==3 : http://www.wolframalpha.com/input/?i=0%2C+4%2C+9%2C+15%2C+...
    N==4 : http://www.wolframalpha.com/input/?i=0%2C+5%2C+11%2C+18%2C+26%2C+35%2C+...
    N==5 : http://www.wolframalpha.com/input/?i=0%2C+6%2C+13%2C+21%2C+30%2C+...
    */
`ifdef macro_args
    // initial $display("Use Macro Args");
    `define calc_pp_lsb(n) (((n)-1)*((n)+2*M)/2)
    //`define calc_pp_msb(n) (`calc_pp_lsb(n+1)-1)
    `define calc_pp_msb(n) ((n**2+(2*M+1)*n-2)/2)
    //`define calc_range(n) `calc_pp_msb(n):`calc_pp_lsb(n)
    `define calc_pp_range(n) `calc_pp_lsb(n) +: (M+n)
    wire [`calc_pp_msb(N):0] PP;
    assign PP[`calc_pp_range(1)] = { 1'b0 , { A & {M{B[0]}} } };
    assign P = PP[`calc_pp_range(N)];
`elsif indexed_part_select
    // initial $display("Use Indexed Part Select");
    localparam MSB = (N**2+(2*M+1)*N-2)/2;
    wire [MSB:0] PP;
    assign PP[M:0] = { 1'b0 , { A & {M{B[0]}} } };
    assign P = PP[MSB -: M+N];
`else
    // initial $display("Use Worst Case");
    localparam MSB = (N**2+(2*M+1)*N-2)/2;
    wire [MSB:0] PP;
    assign PP[M:0] = { 1'b0 , { A & {M{B[0]}} } };
    assign P = PP[MSB : MSB+1-M-N];
`endif
    
    genvar i;
    generate
    for (i=1; i < N; i=i+1)
    begin: addPartialProduct
        wire [M+i-1:0] gA,gB,gS;
        wire Cout;
        assign gA = { A & {M{B[i]}} , {i{1'b0}} };
`ifdef macro_args
        assign gB = PP[`calc_pp_range(i)];
        assign PP[`calc_pp_range(i+1)] = {Cout,gS};
`elsif indexed_part_select
        assign gB = PP[(i-1)*(i+2*M)/2 +: M+i];
        assign PP[i*((i+1)+2*M)/2 +: M+i+1] = {Cout,gS};
`else
        localparam LSB = (i-1)*(i+2*M)/2;
        localparam MSB = (i**2+(2*M+1)*i-2)/2;
        localparam MSB2 = ((i+1)**2+(2*M+1)*(i+1)-2)/2;
        assign gB = PP[MSB : LSB];
        assign PP[ MSB2 : MSB+1] = {Cout,gS};
`endif
        RippleCarryAdder#(M+i) adder( .A(gA), .B(gB), .S(gS), .Cin (1'b0), .Cout(Cout) );
    end
endgenerate

`ifdef macro_args
    // Cleanup global space
    `undef calc_pp_range
    `undef calc_pp_msb
    `undef calc_pp_lsb
`endif

endmodule
