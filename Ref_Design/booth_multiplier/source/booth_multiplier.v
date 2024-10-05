//
// https://github.com/Guru227/Booth-Multiplier-in-iverilog
//
// 16-bit Booth-Multiplier-in-iverilog
// Project Details
// “16-bit Booth’s Multiplier”
// 
// III Sem, B.Tech. (CSE)
// 
// Aug-Dec ‘19 - Digital Design and Computer Organisation Laboratory
// 
// Coding language: iVerilog+GtkWave
// 
// Problem Description
// -------------------
// Booth's multiplication algorithm is a multiplication algorithm that
// multiplies two signed binary numbers in two's complement notation.
// 
// Implementation
// --------------
// Booth's algorithm can be implemented by repeatedly adding (with
// ordinary unsigned binary addition) one of two predetermined values
// S(sum of multiplicand and accumulator) and D(difference of
// multiplicand and accumulator) to a product P, then performing
// a rightward arithmetic shift on P.
// 
// Modules and sub-modules
// -----------------------
// booth_multiplier(): This module takes in two signed 8-bit inputs,
// the multiplicand and the multiplier, and generates one signed 16-bit
// output, the product. Inputs: two 8-bit signed binary numbers Outputs:
// one 16-bit signed binary number This module implements one sub-module:
// booth_substep().
// 
// booth_substep(): By considering the Q[0] and q0, this module performs
// one iteration of the Booth’s multiplication process. Inputs: 8-bit
// signed accumulator, 8-bit signed multiplier, 8-bit signed multiplicand, q0.
// Outputs: 8-bit signed next-value-of-accumulator, 8-bit signed next-value-
// of-multiplier, next_q0 This module implements one sub-module:
// eight_bit_adder_subtractor().
// 
// eight_bit_adder_subtractor(): Depending on cin (0 for add, 1 for sub),
// the two 8 bit numbers passed to it are either added or subtracted. Inputs:
// cin, 8-bit signed input ‘a’, 8-bit signed input’b’. Outputs: 8-bit signed
// output ‘sum’ This module implements two sub-modules: (defined in lib.v)
// a) xor2 (performs xor on two 1-bit inputs and results in one 1-bit output)
// b) fa (full-adder module for two 1-bit inputs and one carry-in input and
// results in one sum output and one carry-out output).
// 
// PES University, 2019.

/* verilator lint_off UNUSEDSIGNAL */

module booth_multiplier(
    input clk, select,
    input signed[7:0] multIn,
    output signed [15:0] product);

    reg signed[7:0] multiplier, multiplicand;
    always @(posedge clk)
        if (select)
            multiplier <= multIn;
        else
            multiplicand <= multIn;

	wire signed [7:0] Q[0:6];  //an 8 bit (1byte) array, with a depth of 7 (0 to 6 rows of 1 byte each)
	wire signed [7:0] acc[0:7]; //an 8 bit (1byte) array, with a depth of 8 (0 to 7 rows of 1 byte each)
	wire signed[7:0] q0;
	wire qout;
    
    wire signed [15:0] _product;
    reg signed [15:0] __product;
	
	assign acc[0] = 8'b00000000;   //initialising accumulator to 0
	
	booth_substep step1(acc[0], multiplier, 1'b0, multiplicand, acc[1],        Q[0],         q0[1]);
	booth_substep step2(acc[1], Q[0],      q0[1], multiplicand, acc[2],        Q[1],         q0[2]);
	booth_substep step3(acc[2], Q[1],      q0[2], multiplicand, acc[3],        Q[2],         q0[3]);
	booth_substep step4(acc[3], Q[2],      q0[3], multiplicand, acc[4],        Q[3],         q0[4]);
	booth_substep step5(acc[4], Q[3],      q0[4], multiplicand, acc[5],        Q[4],         q0[5]);
	booth_substep step6(acc[5], Q[4],      q0[5], multiplicand, acc[6],        Q[5],         q0[6]);
	booth_substep step7(acc[6], Q[5],      q0[6], multiplicand, acc[7],        Q[6],         q0[7]);
	booth_substep step8(acc[7], Q[6],      q0[7], multiplicand, _product[15:8], _product[7:0], qout);
	
    always @(posedge clk)
        __product <= _product;
    
    assign product = __product;
    
endmodule
