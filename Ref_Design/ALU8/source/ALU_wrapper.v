/*
 * ALU Wrapper for ALU8 with Multiplier & IO FSM
 *
 */
 
`ifdef EMULATION
module ALU_wrapper( clk, reset, ABCmd_i, LoadA_i, LoadB_i, LoadCmd_i, ACC_o, Done_o, Done_LED);
`else
module ALU_wrapper( clk, reset, ABCmd_i, LoadA_i, LoadB_i, LoadCmd_i, ACC_o, Done_o);
`endif
	input clk;
	input reset;
    input LoadA_i;
    input LoadB_i;
    input LoadCmd_i;
    input [7:0] ABCmd_i;
    output [7:0] ACC_o;
    output Done_o;
`ifdef EMULATION
    output Done_LED;
`endif

    // Registers
    reg [7:0] rA, rB, ACC_o;
    reg Done_o;
    wire [7:0] AI = rA;
    wire [7:0] BI = rB;
    wire [7:0] ACC;

    wire [7:0] rCmd = ABCmd_i; // { MUL, BCD, shr, CI, op[3:0] }
    wire [3:0] alu_op = rCmd[3:0];
    wire CI  = rCmd[4];
    wire shr = rCmd[5];
    wire BCD = rCmd[6];
    wire MUL = rCmd[7];
    wire CO, AV, AZ, AN, HC;
    wire [15:0] mult_out;

    // FSM for Load-Exec-Out Control //////////////////////////////////////////
    parameter sReady   = 3'b001;
    parameter sLoadA   = 3'b010;
    parameter sLoadB   = 3'b011;
    parameter sLoadCmd = 3'b100;
    parameter sOutFlag = 3'b110;

    reg [2:0] state;
    reg LoadA, LoadB, LoadCmd, OutFlag;

    always@(posedge clk or posedge reset)
    begin : FSM_STATE
        if(reset) begin
            state <= sReady;
        end
        else begin
            case(state)
                sReady:
                    if (LoadCmd_i)      state <= sLoadCmd;
                    else if (LoadB_i)   state <= sLoadB;
                    else if (LoadA_i)   state <= sLoadA;
                    else                state <= sReady;
                sLoadA:
                    if (LoadB_i)        state <= sLoadB;
                    else if (LoadCmd_i) state <= sLoadCmd;
                    else                state <= sLoadA;
                sLoadB:
                    if (LoadA_i)        state <= sLoadA;
                    else if (LoadCmd_i) state <= sLoadCmd;
                    else                state <= sLoadB;
                sLoadCmd:
                    if (LoadA_i)        state <= sLoadA;
                    else if (LoadB_i)   state <= sLoadB;
                    else                state <= sOutFlag;
                sOutFlag:
                    if (LoadCmd_i)      state <= sLoadCmd;
                    else if (LoadB_i)   state <= sLoadB;
                    else if (LoadA_i)   state <= sLoadA;
                    else                state <= sReady;
                default:                state <= sReady;
            endcase
        end
    end

    always @*
    begin : FSM_OUT
        LoadA = 0;
        LoadB = 0;
        LoadCmd = 0;
        OutFlag = 0;
        Done_o = 0;
        case(state)
            sLoadA:
                LoadA = 1;
            sLoadB:
                LoadB = 1;
            sLoadCmd:
                LoadCmd = 1;
            sOutFlag: begin
                OutFlag = 1;
                Done_o = 1;
            end
            default: begin
                        LoadA = 0;
                        LoadB = 0;
                        LoadCmd = 0;
                        OutFlag = 0;
                        Done_o = 0;
            end
        endcase
    end
`ifdef EMULATION
    assign Done_LED = Done_o;
`endif    
    // Input Registers ----------------------------------------------
`ifdef USE_ASYNC_RESET
    always @(posedge clk or posedge reset)
    begin : LOAD_REGS
        if (reset) begin
            rA <= 0;
            rB <= 0;
        end
        else begin
            if (LoadA)      rA <= ABCmd_i;
            if (LoadB)      rB <= ABCmd_i;
        end
    end
`else
    // If Size matter ......
    always @(posedge clk)
    begin : LOAD_REGS
        if (LoadA)      rA <= ABCmd_i;
        if (LoadB)      rB <= ABCmd_i;
    end
`endif

    // ALU
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

    // Multiplier
    assign mult_out = AI * BI;

    //Multiplier_2D #(
    //    .M(8),
    //    .N(8))
    //    u_Mult (
    //    .A(AI),
    //    .B(BI),
    //    .P(mult_out));

    //Multiplier_flat #(
    //    .M(8),
    //    .N(8))
    //    u_Mult (
    //    .A(AI),
    //    .B(BI),
    //    .P(mult_out));

    // Execute & Output Flag
`ifdef USE_ASYNC_RESET
    always @(posedge clk or posedge reset)
    begin : EXECUTE
        if (reset) begin
            ACC_o <= 0;
        end
        else begin
            if (LoadCmd) begin
                if (MUL)
                    ACC_o <= mult_out[7:0];
                else
                    ACC_o <= ACC;
            end
            else if (OutFlag) begin
                if (MUL)
                    ACC_o <= mult_out[15:8];
                else
                    ACC_o <= { 3'b000, CO, AV, AZ, AN, HC};
            end
        end
    end
`else
    // If size matter ..................
    always @(posedge clk)
    begin : EXECUTE
        if (LoadCmd) begin
            if (MUL)
                ACC_o <= mult_out[7:0];
            else
                ACC_o <= ACC;
            end
            else if (OutFlag) begin
                if (MUL)
                    ACC_o <= mult_out[15:8];
                else
                    ACC_o <= { 3'b000, CO, AV, AZ, AN, HC};
            end
    end
`endif

endmodule
