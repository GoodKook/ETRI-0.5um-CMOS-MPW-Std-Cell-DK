/*
 * ALU8_Mult for ALU8 with Multiplier & IO FSM
 *
 */
 
`define MULT_ARITH
//`define MULT_2D
//`define MULT_FLAT

module ALU8_Mult( clk, reset, ABCmd_i, LoadA_i, LoadB_i, LoadCmd_i, MulL_i, MulH_i, Flag_i, ACC_o);
	input        clk;
	input        reset;
    input        LoadA_i;
    input        LoadB_i;
    input        LoadCmd_i;
    input [7:0]  ABCmd_i;
    input        MulL_i;
    input        MulH_i;
    input        Flag_i;
    output [7:0] ACC_o;

    // Registers
    reg [7:0] rA, rB, rCmd, ACC_o;

    wire [7:0] AI = rA;
    wire [7:0] BI = rB;
    wire [7:0] ACC;

    // Command bit-map: { MUL, BCD, shr, CI, op[3:0] }
    wire [3:0] alu_op = rCmd[3:0];
    // 0011: AI + BI
    // 0111: AI - BI
    // 1011: AI + AI
    // 1100: AI | BI
    // 1101: AI & BI
    // 1110: AI ^ BI
    // 1111: AI
    wire CI  = rCmd[4];
    wire shr = rCmd[5];
    wire BCD = rCmd[6];
    wire MUL = rCmd[7];

    // Flags
    wire CO, AV, AZ, AN, HC;

    // Multiplication
    wire [7:0] Mult_AI;
    wire [7:0] Mult_BI;
    wire [15:0] mult_out;

    initial begin
        $dumpfile("./ALU8_Mult.vcd");
        $dumpvars;
    end

    // Input Registers ----------------------------------------------
    always @(posedge clk)
    begin : LOAD_REGS
        if (LoadA_i)    rA   <= ABCmd_i;
        if (LoadB_i)    rB   <= ABCmd_i;
        if (LoadCmd_i)  rCmd <= ABCmd_i;
    end

    // ALU ----------------------------------------------------------
    ALU8 u_ALU8(
         .op(alu_op),
         .shr(shr),
         .AI(AI),
         .BI(BI),
         .CI(CI),
         .BCD(BCD),
         .CO(CO),
         .OUT(ACC),
         .V(AV),
         .Z(AZ),
         .N(AN),
         .HC(HC) );

    // Multiplier ---------------------------------------------------
    assign Mult_AI = (MUL)? AI:0;
    assign Mult_BI = (MUL)? BI:0;
`ifdef MULT_ARITH
    assign mult_out = Mult_AI * Mult_BI;
`elsif MULT_2D
    Multiplier_2D #(
        .M(8),
        .N(8))
        u_Mult (
        .A(Mult_AI),
        .B(Mult_BI),
        .P(mult_out));
`elsif MULT_FLAT
    Multiplier_flat #(
        .M(8),
        .N(8))
        u_Mult (
        .A(Mult_AI),
        .B(Mult_BI),
        .P(mult_out));
`endif

    // Output Registers ---------------------------------------------
    always @(posedge clk or posedge reset)
    begin : OUT_REGS
        if (reset)  // Async Reset
            ACC_o <= 0;
        else if (MulH_i)
            ACC_o <= mult_out[15:8];
        else if(MulL_i)
            ACC_o <= mult_out[7:0];
        else if (Flag_i)
            ACC_o <= {3'b000, CO, AV, AZ, AN, HC};
        else
            ACC_o <= ACC;
    end

endmodule

