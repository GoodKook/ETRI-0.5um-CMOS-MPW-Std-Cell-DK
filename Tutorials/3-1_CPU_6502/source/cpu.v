/*
 * verilog model of 6502 CPU.
 *
 * (C) Arlet Ottens, <arlet@c-scape.nl>
 *
 * Feel free to use this code in any project (commercial or not), as long as you
 * keep this message, and the copyright notice. This code is provided "as is", 
 * without any warranties of any kind. 
 * 
 */

/*
 * Note that not all 6502 interface signals are supported (yet).  The goal
 * is to create an Acorn Atom model, and the Atom didn't use all signals on
 * the main board.
 *
 * The data bus is implemented as separate read/write buses. Combine them
 * on the output pads if external memory is required.
 */

module cpu( clk, reset, AB, DI, DO, WE, IRQ, NMI, RDY );
input clk;              // CPU clock 
input reset;            // reset signal
output reg [15:0] AB;   // address bus
input [7:0] DI;         // data in, read bus
output [7:0] DO;        // data out, write bus
output WE;              // write enable
input IRQ;              // interrupt request
input NMI;              // non-maskable interrupt request
input RDY;              // Ready signal. Pauses CPU when RDY=0 

/*
 * internal signals
 */

reg  [15:0] PC;         // Program Counter 
reg  [7:0] ABL;         // Address Bus Register LSB
reg  [7:0] ABH;         // Address Bus Register MSB
wire [7:0] ADD;         // Adder Hold Register (registered in ALU)

reg  [7:0] DIHOLD;      // Hold for Data In
//reg  DIHOLD_valid;      //
wire [7:0] DIMUX;       //

reg  [7:0] IRHOLD;      // Hold for Instruction register 
reg  IRHOLD_valid;      // Valid instruction in IRHOLD

reg  [7:0] AXYS[3:0];   // A, X, Y and S register file

reg  C = 0;             // carry flag (init at zero to avoid X's in ALU sim)
reg  Z = 0;             // zero flag
reg  I = 0;             // interrupt flag
reg  D = 0;             // decimal flag
reg  V = 0;             // overflow flag
reg  N = 0;             // negative flag
wire AZ;                // ALU Zero flag
wire AV;                // ALU overflow flag
wire AN;                // ALU negative flag
wire HC;                // ALU half carry

reg  [7:0] AI;          // ALU Input A
reg  [7:0] BI;          // ALU Input B
wire [7:0] DI;          // Data In
wire [7:0] IR;          // Instruction register
reg  [7:0] DO;          // Data Out 
reg  WE;                // Write Enable
reg  CI;                // Carry In
wire CO;                // Carry Out 
wire [7:0] PCH = PC[15:8];
wire [7:0] PCL = PC[7:0];

reg NMI_edge = 0;       // captured NMI edge

reg [1:0] regsel;                       // Select A, X, Y or S register
wire [7:0] regfile = AXYS[regsel];      // Selected register output

parameter 
        SEL_A    = 2'd0,
        SEL_S    = 2'd1,
        SEL_X    = 2'd2, 
        SEL_Y    = 2'd3;

/*
 * define some signals for watching in simulator output
 */


`ifdef SIM
wire [7:0]   A = AXYS[SEL_A];           // Accumulator
wire [7:0]   X = AXYS[SEL_X];           // X register
wire [7:0]   Y = AXYS[SEL_Y];           // Y register 
wire [7:0]   S = AXYS[SEL_S];           // Stack pointer 
`endif

wire [7:0] P = { N, V, 2'b11, D, I, Z, C };

/*
 * instruction decoder/sequencer
 */

reg [5:0] state;

/*
 * control signals
 */

reg PC_inc;             // Increment PC
reg [15:0] PC_temp;     // intermediate value of PC 

reg [1:0] src_reg;      // source register index
reg [1:0] dst_reg;      // destination register index

reg index_y;            // if set, then Y is index reg rather than X 
reg load_reg;           // loading a register (A, X, Y, S) in this instruction
reg inc;                // increment
reg write_back;         // set if memory is read/modified/written 
reg load_only;          // LDA/LDX/LDY instruction
reg store;              // doing store (STA/STX/STY)
reg adc_sbc;            // doing ADC/SBC
reg compare;            // doing CMP/CPY/CPX
reg shift;              // doing shift/rotate instruction
reg rotate;             // doing rotate (no shift)
reg backwards;          // backwards branch
reg cond_true;          // branch condition is true
reg [2:0] cond_code;    // condition code bits from instruction
reg shift_right;        // Instruction ALU shift/rotate right 
reg alu_shift_right;    // Current cycle shift right enable
reg [3:0] op;           // Main ALU operation for instruction
reg [3:0] alu_op;       // Current cycle ALU operation 
reg adc_bcd;            // ALU should do BCD style carry 
reg adj_bcd;            // results should be BCD adjusted

/* 
 * some flip flops to remember we're doing special instructions. These
 * get loaded at the DECODE state, and used later
 */
reg bit_ins;            // doing BIT instruction
reg plp;                // doing PLP instruction
reg php;                // doing PHP instruction 
reg clc;                // clear carry
reg sec;                // set carry
reg cld;                // clear decimal
reg sed;                // set decimal
reg cli;                // clear interrupt
reg sei;                // set interrupt
reg clv;                // clear overflow 
/* verilator lint_off UNUSEDSIGNAL */
reg brk;                // doing BRK
/* verilator lint_on UNUSEDSIGNAL */
reg res;                // in reset

/*
 * ALU operations
 */

parameter
//        OP_OR  = 4'b1100,
        OP_AND = 4'b1101,
//        OP_EOR = 4'b1110,
        OP_ADD = 4'b0011,
        OP_SUB = 4'b0111,
        OP_ROL = 4'b1011,
        OP_A   = 4'b1111;

/*
 * Microcode state machine. Basically, every addressing mode has its own
 * path through the state machine. Additional information, such as the
 * operation, source and destination registers are decoded in parallel, and
 * kept in separate flops. 
 */

parameter 
    ABS0   = 6'd0,  // ABS     - fetch LSB      
    ABS1   = 6'd1,  // ABS     - fetch MSB
    ABSX0  = 6'd2,  // ABS, X  - fetch LSB and send to ALU (+X)
    ABSX1  = 6'd3,  // ABS, X  - fetch MSB and send to ALU (+Carry)
    ABSX2  = 6'd4,  // ABS, X  - Wait for ALU (only if needed)
    BRA0   = 6'd5,  // Branch  - fetch offset and send to ALU (+PC[7:0])
    BRA1   = 6'd6,  // Branch  - fetch opcode, and send PC[15:8] to ALU 
    BRA2   = 6'd7,  // Branch  - fetch opcode (if page boundary crossed)
    BRK0   = 6'd8,  // BRK/IRQ - push PCH, send S to ALU (-1)
    BRK1   = 6'd9,  // BRK/IRQ - push PCL, send S to ALU (-1)
    BRK2   = 6'd10, // BRK/IRQ - push P, send S to ALU (-1)
    BRK3   = 6'd11, // BRK/IRQ - write S, and fetch @ fffe
    DECODE = 6'd12, // IR is valid, decode instruction, and write prev reg
    FETCH  = 6'd13, // fetch next opcode, and perform prev ALU op
    INDX0  = 6'd14, // (ZP,X)  - fetch ZP address, and send to ALU (+X)
    INDX1  = 6'd15, // (ZP,X)  - fetch LSB at ZP+X, calculate ZP+X+1
    INDX2  = 6'd16, // (ZP,X)  - fetch MSB at ZP+X+1
    INDX3  = 6'd17, // (ZP,X)  - fetch data 
    INDY0  = 6'd18, // (ZP),Y  - fetch ZP address, and send ZP to ALU (+1)
    INDY1  = 6'd19, // (ZP),Y  - fetch at ZP+1, and send LSB to ALU (+Y) 
    INDY2  = 6'd20, // (ZP),Y  - fetch data, and send MSB to ALU (+Carry)
    INDY3  = 6'd21, // (ZP),Y) - fetch data (if page boundary crossed)
    JMP0   = 6'd22, // JMP     - fetch PCL and hold
    JMP1   = 6'd23, // JMP     - fetch PCH
    JMPI0  = 6'd24, // JMP IND - fetch LSB and send to ALU for delay (+0)
    JMPI1  = 6'd25, // JMP IND - fetch MSB, proceed with JMP0 state
    JSR0   = 6'd26, // JSR     - push PCH, save LSB, send S to ALU (-1)
    JSR1   = 6'd27, // JSR     - push PCL, send S to ALU (-1)
    JSR2   = 6'd28, // JSR     - write S
    JSR3   = 6'd29, // JSR     - fetch MSB
    PULL0  = 6'd30, // PLP/PLA - save next op in IRHOLD, send S to ALU (+1)
    PULL1  = 6'd31, // PLP/PLA - fetch data from stack, write S
    PULL2  = 6'd32, // PLP/PLA - prefetch op, but don't increment PC
    PUSH0  = 6'd33, // PHP/PHA - send A to ALU (+0)
    PUSH1  = 6'd34, // PHP/PHA - write A/P, send S to ALU (-1)
    READ   = 6'd35, // Read memory for read/modify/write (INC, DEC, shift)
    REG    = 6'd36, // Read register for reg-reg transfers
    RTI0   = 6'd37, // RTI     - send S to ALU (+1)
    RTI1   = 6'd38, // RTI     - read P from stack 
    RTI2   = 6'd39, // RTI     - read PCL from stack
    RTI3   = 6'd40, // RTI     - read PCH from stack
    RTI4   = 6'd41, // RTI     - read PCH from stack
    RTS0   = 6'd42, // RTS     - send S to ALU (+1)
    RTS1   = 6'd43, // RTS     - read PCL from stack 
    RTS2   = 6'd44, // RTS     - write PCL to ALU, read PCH 
    RTS3   = 6'd45, // RTS     - load PC and increment
    WRITE  = 6'd46, // Write memory for read/modify/write 
    ZP0    = 6'd47, // Z-page  - fetch ZP address
    ZPX0   = 6'd48, // ZP, X   - fetch ZP, and send to ALU (+X)
    ZPX1   = 6'd49; // ZP, X   - load from memory

`ifdef SIM

/*
 * easy to read names in simulator output
 */
reg [8*6-1:0] statename;

always @*
    case( state )
            DECODE: statename = "DECODE";
            REG:    statename = "REG";
            ZP0:    statename = "ZP0";
            ZPX0:   statename = "ZPX0";
            ZPX1:   statename = "ZPX1";
            ABS0:   statename = "ABS0";
            ABS1:   statename = "ABS1";
            ABSX0:  statename = "ABSX0";
            ABSX1:  statename = "ABSX1";
            ABSX2:  statename = "ABSX2";
            INDX0:  statename = "INDX0";
            INDX1:  statename = "INDX1";
            INDX2:  statename = "INDX2";
            INDX3:  statename = "INDX3";
            INDY0:  statename = "INDY0";
            INDY1:  statename = "INDY1";
            INDY2:  statename = "INDY2";
            INDY3:  statename = "INDY3";
             READ:  statename = "READ";
            WRITE:  statename = "WRITE";
            FETCH:  statename = "FETCH";
            PUSH0:  statename = "PUSH0";
            PUSH1:  statename = "PUSH1";
            PULL0:  statename = "PULL0";
            PULL1:  statename = "PULL1";
            PULL2:  statename = "PULL2";
            JSR0:   statename = "JSR0";
            JSR1:   statename = "JSR1";
            JSR2:   statename = "JSR2";
            JSR3:   statename = "JSR3";
            RTI0:   statename = "RTI0";
            RTI1:   statename = "RTI1";
            RTI2:   statename = "RTI2";
            RTI3:   statename = "RTI3";
            RTI4:   statename = "RTI4";
            RTS0:   statename = "RTS0";
            RTS1:   statename = "RTS1";
            RTS2:   statename = "RTS2";
            RTS3:   statename = "RTS3";
            BRK0:   statename = "BRK0";
            BRK1:   statename = "BRK1";
            BRK2:   statename = "BRK2";
            BRK3:   statename = "BRK3";
            BRA0:   statename = "BRA0";
            BRA1:   statename = "BRA1";
            BRA2:   statename = "BRA2";
            JMP0:   statename = "JMP0";
            JMP1:   statename = "JMP1";
            JMPI0:  statename = "JMPI0";
            JMPI1:  statename = "JMPI1";
    endcase

//always @( PC )
//      $display( "%t, PC:%04x IR:%02x A:%02x X:%02x Y:%02x S:%02x C:%d Z:%d V:%d N:%d P:%02x", $time, PC, IR, A, X, Y, S, C, Z, V, N, P );

`endif



/*
 * Program Counter Increment/Load. First calculate the base value in
 * PC_temp.
 */
always @*
    case( state )
        DECODE:         if( (~I & IRQ) | NMI_edge )
                            PC_temp = { ABH, ABL };
                        else
                            PC_temp = PC;


        JMP1,
        JMPI1,
        JSR3,
        RTS3,           
        RTI4:           PC_temp = { DIMUX, ADD };
                        
        BRA1:           PC_temp = { ABH, ADD };

        BRA2:           PC_temp = { ADD, PCL };

        BRK2:           PC_temp =      res ? 16'hfffc : 
                                  NMI_edge ? 16'hfffa : 16'hfffe;

        default:        PC_temp = PC;
    endcase

/*
 * Determine wether we need PC_temp, or PC_temp + 1
 */
always @*
    case( state )
        DECODE:         if( (~I & IRQ) | NMI_edge )
                            PC_inc = 0;
                        else
                            PC_inc = 1;

        ABS0,
        ABSX0,
        FETCH,
        BRA0,
        BRA2,
        BRK3,
        JMPI1,
        JMP1,
        RTI4,
        RTS3:           PC_inc = 1;

        BRA1:           PC_inc = CO ^~ backwards;

        default:        PC_inc = 0;
    endcase

/* 
 * Set new PC
 */
always @(posedge clk or posedge reset)
    if ( reset )
        PC <= 0;
    else if( RDY )
        /* verilator lint_off WIDTHEXPAND */
        PC <= PC_temp + PC_inc;
        /* verilator lint_on WIDTHEXPAND */

/*
 * Address Generator 
 */

parameter
        ZEROPAGE  = 8'h00,
        STACKPAGE = 8'h01;

always @*
    case( state )
        ABSX1,
        INDX3,
        INDY2,
        JMP1,
        JMPI1,
        RTI4,
        ABS1:           AB = { DIMUX, ADD };

        BRA2,
        INDY3,
        ABSX2:          AB = { ADD, ABL };

        BRA1:           AB = { ABH, ADD };

        JSR0,
        PUSH1,
        RTS0,
        RTI0,
        BRK0:           AB = { STACKPAGE, regfile };

        BRK1,
        JSR1,
        PULL1,
        RTS1,
        RTS2,
        RTI1,
        RTI2,
        RTI3,
        BRK2:           AB = { STACKPAGE, ADD };
        
        INDY1,
        INDX1,
        ZPX1,
        INDX2:          AB = { ZEROPAGE, ADD };

        ZP0,
        INDY0:          AB = { ZEROPAGE, DIMUX };

        REG,
        READ,
        WRITE:          AB = { ABH, ABL };

        default:        AB = PC;
    endcase

/*
 * ABH/ABL pair is used for registering previous address bus state.
 * This can be used to keep the current address, freeing up the original
 * source of the address, such as the ALU or DI.
 */
always @(posedge clk or posedge reset)
    if ( reset )
    begin
        ABL <= 0;
        ABH <= 0;
    end
    else if( state != PUSH0 && state != PUSH1 && RDY && 
        state != PULL0 && state != PULL1 && state != PULL2 )
    begin
        ABL <= AB[7:0];
        ABH <= AB[15:8];
    end

/*
 * Data Out MUX 
 */
always @*
    case( state )
        WRITE:   DO = ADD;

        JSR0,
        BRK0:    DO = PCH;

        JSR1,
        BRK1:    DO = PCL;

        PUSH1:   DO = php ? P : ADD;

        BRK2:    DO = (IRQ | NMI_edge) ? (P & 8'b1110_1111) : P;

        default: DO = regfile;
    endcase

/*
 * Write Enable Generator
 */

always @*
    case( state )
        BRK0,   // writing to stack or memory
        BRK1,
        BRK2,
        JSR0,
        JSR1,
        PUSH1,
        WRITE:   WE = 1;

        INDX3,  // only if doing a STA, STX or STY
        INDY3,
        ABSX2,
        ABS1,
        ZPX1,
        ZP0:     WE = store;

        default: WE = 0;
    endcase

/*
 * register file, contains A, X, Y and S (stack pointer) registers. At each
 * cycle only 1 of those registers needs to be accessed, so they combined
 * in a small memory, saving resources.
 */

reg write_register;             // set when register file is written

always @*
    case( state )
        DECODE: write_register = load_reg & ~plp;

        PULL1, 
         RTS2, 
         RTI3,
         BRK3,
         JSR0,
         JSR2 : write_register = 1;

       default: write_register = 0;
    endcase

/*
 * BCD adjust logic
 */

always @(posedge clk or posedge reset)
    if ( reset )
        adj_bcd <= 0;
    else
        adj_bcd <= adc_sbc & D;     // '1' when doing a BCD instruction

reg [3:0] ADJL;
reg [3:0] ADJH;

// adjustment term to be added to ADD[3:0] based on the following
// adj_bcd: '1' if doing ADC/SBC with D=1
// adc_bcd: '1' if doing ADC with D=1
// HC     : half carry bit from ALU
always @* begin
    casez( {adj_bcd, adc_bcd, HC} )
         3'b0??: ADJL = 4'd0;   // no BCD instruction
         3'b100: ADJL = 4'd10;  // SBC, and digital borrow
         3'b101: ADJL = 4'd0;   // SBC, but no borrow
         3'b110: ADJL = 4'd0;   // ADC, but no carry
         3'b111: ADJL = 4'd6;   // ADC, and decimal/digital carry
    endcase
end

// adjustment term to be added to ADD[7:4] based on the following
// adj_bcd: '1' if doing ADC/SBC with D=1
// adc_bcd: '1' if doing ADC with D=1
// CO     : carry out bit from ALU
always @* begin
    casez( {adj_bcd, adc_bcd, CO} )
         3'b0??: ADJH = 4'd0;   // no BCD instruction
         3'b100: ADJH = 4'd10;  // SBC, and digital borrow
         3'b101: ADJH = 4'd0;   // SBC, but no borrow
         3'b110: ADJH = 4'd0;   // ADC, but no carry
         3'b111: ADJH = 4'd6;   // ADC, and decimal/digital carry
    endcase
end

/*
 * write to a register. Usually this is the (BCD corrected) output of the
 * ALU, but in case of the JSR0 we use the S register to temporarily store
 * the PCL. This is possible, because the S register itself is stored in
 * the ALU during those cycles.
 */
always @(posedge clk or posedge reset)
    if ( reset )
    begin
        AXYS[0] <= 0;
        AXYS[1] <= 0;
        AXYS[2] <= 0;
        AXYS[3] <= 0;
    end
    else if( write_register & RDY )
        AXYS[regsel] <= (state == JSR0) ? DIMUX : { ADD[7:4] + ADJH, ADD[3:0] + ADJL };

/*
 * register select logic. This determines which of the A, X, Y or
 * S registers will be accessed. 
 */

always @*  
    case( state )
        INDY1,
        INDX0,
        ZPX0,
        ABSX0  : regsel = index_y ? SEL_Y : SEL_X;


        DECODE : regsel = dst_reg; 

        BRK0,
        BRK3,
        JSR0,
        JSR2,
        PULL0,
        PULL1,
        PUSH1,
        RTI0,
        RTI3,
        RTS0,
        RTS2   : regsel = SEL_S;
        
        default: regsel = src_reg; 
    endcase

/*
 * ALU
 */

ALU8 u_ALU8(.clk(clk),
            .reset(reset),
            .op(alu_op),
            .right(alu_shift_right),
            .AI(AI),
            .BI(BI),
            .CI(CI),
            .BCD(adc_bcd & (state == FETCH)),
            .CO(CO),
            .OUT(ADD),
            .V(AV),
            .Z(AZ),
            .N(AN),
            .HC(HC),
            .RDY(RDY) );

/*
 * Select current ALU operation
 */

always @*
    case( state )
        /* verilator lint_off WIDTHEXPAND */
        READ:   alu_op = op;

        BRA1:   alu_op = backwards ? OP_SUB : OP_ADD; 

        FETCH,
        REG :   alu_op = op; 

        DECODE,
        ABS1:   alu_op = 1'bx;

        PUSH1,
        BRK0,
        BRK1,
        BRK2,
        JSR0,
        JSR1:   alu_op = OP_SUB;

     default:   alu_op = OP_ADD;
        /* verilator lint_on WIDTHEXPAND */
    endcase

/*
 * Determine shift right signal to ALU
 */

always @*
    if( state == FETCH || state == REG || state == READ )
        alu_shift_right = shift_right;
    else
        alu_shift_right = 0;

/*
 * Sign extend branch offset.  
 */

always @(posedge clk or posedge reset)
    if ( reset )
        backwards <= 0;
    else if( RDY )
        backwards <= DIMUX[7];

/* 
 * ALU A Input MUX 
 */

always @*
    case( state )
        JSR1,
        RTS1,
        RTI1,
        RTI2,
        BRK1,
        BRK2,
        INDX1:  AI = ADD;

        REG,
        ZPX0,
        INDX0,
        ABSX0,
        RTI0,
        RTS0,
        JSR0,
        JSR2,
        BRK0,
        PULL0,
        INDY1,
        PUSH0,
        PUSH1:  AI = regfile;

        BRA0,
        READ:   AI = DIMUX;

        BRA1:   AI = ABH;       // don't use PCH in case we're 

        FETCH:  AI = load_only ? 0 : regfile;

        DECODE,
        ABS1:   AI = 8'h00; // GoodKook 8'hxx;     // don't care

        default:  AI = 0;
    endcase


/*
 * ALU B Input mux
 */

always @*
    case( state )
         BRA1,
         RTS1,
         RTI0,
         RTI1,
         RTI2,
         INDX1,
         READ,
         REG,
         JSR0,
         JSR1,
         JSR2,
         BRK0,
         BRK1,
         BRK2,
         PUSH0, 
         PUSH1,
         PULL0,
         RTS0:  BI = 8'h00;
        
         BRA0:  BI = PCL;

         DECODE,
         ABS1:  BI = 8'h00; // GoodKook 8'hxx;

         default:       BI = DIMUX;
    endcase

/*
 * ALU CI (carry in) mux
 */

always @*
    case( state )
        INDY2,
        BRA1,
        ABSX1:  CI = CO;

        DECODE,
        ABS1:   CI = 1'b0;  // GoodKook1'bx;

        READ,
        REG:    CI = rotate ? C :
                     shift ? 0 : inc;

        FETCH:  CI = rotate  ? C : 
                     compare ? 1 : 
                     (shift | load_only) ? 0 : C;

        PULL0,
        RTI0,
        RTI1,
        RTI2,
        RTS0,
        RTS1,
        INDY0,
        INDX1:  CI = 1; 

        default:        CI = 0;
    endcase

/*
 * Processor Status Register update
 *
 */

/*
 * Update C flag when doing ADC/SBC, shift/rotate, compare
 */
always @(posedge clk or posedge reset )
    if ( reset )
        C <= 0;
    else if( shift && state == WRITE ) 
        C <= CO;
    else if( state == RTI2 )
        C <= DIMUX[0];
    else if( ~write_back && state == DECODE ) begin
        if( adc_sbc | shift | compare )
            C <= CO;
        else if( plp )
            C <= ADD[0];
        else begin
            if( sec ) C <= 1;
            if( clc ) C <= 0;
        end
    end

/*
 * Update Z, N flags when writing A, X, Y, Memory, or when doing compare
 */

always @(posedge clk or posedge reset) 
    if ( reset )
        Z <= 0;
    else if( state == WRITE ) 
        Z <= AZ;
    else if( state == RTI2 )
        Z <= DIMUX[1];
    else if( state == DECODE ) begin
        if( plp )
            Z <= ADD[1];
        else if( (load_reg & (regsel != SEL_S)) | compare | bit_ins )
            Z <= AZ;
    end

always @(posedge clk or posedge reset)
    if ( reset )
        N <= 0;
    else if( state == WRITE )
        N <= AN;
    else if( state == RTI2 )
        N <= DIMUX[7];
    else if( state == DECODE ) begin
        if( plp )
            N <= ADD[7];
        else if( (load_reg & (regsel != SEL_S)) | compare )
            N <= AN;
    end else if( state == FETCH && bit_ins ) 
        N <= DIMUX[7];

/*
 * Update I flag
 */

always @(posedge clk or posedge reset)
    if ( reset )
        I <= 0;
    else if( state == BRK3 )
        I <= 1;
    else if( state == RTI2 )
        I <= DIMUX[2];
    else if( state == REG ) begin
        if( sei ) I <= 1;
        if( cli ) I <= 0;
    end else if( state == DECODE )
        if( plp ) I <= ADD[2];

/*
 * Update D flag
 */
always @(posedge clk or posedge reset ) 
    if ( reset )
        D <= 0;
    else if( state == RTI2 )
        D <= DIMUX[3];
    else if( state == DECODE ) begin
        if( sed ) D <= 1;
        if( cld ) D <= 0;
        if( plp ) D <= ADD[3];
    end

/*
 * Update V flag
 */
always @(posedge clk or posedge reset )
    if ( reset )
        V <= 0;
    else if( state == RTI2 ) 
        V <= DIMUX[6];
    else if( state == DECODE ) begin
        if( adc_sbc ) V <= AV;
        if( clv )     V <= 0;
        if( plp )     V <= ADD[6];
    end else if( state == FETCH && bit_ins ) 
        V <= DIMUX[6];

/*
 * Instruction decoder
 */

/*
 * IR register/mux. Hold previous DI value in IRHOLD in PULL0 and PUSH0
 * states. In these states, the IR has been prefetched, and there is no
 * time to read the IR again before the next decode.
 */

always @(posedge clk or posedge reset )
    if( reset )
        IRHOLD_valid <= 0;
    else if( RDY ) begin
        if( state == PULL0 || state == PUSH0 ) begin
            IRHOLD <= DIMUX;
            IRHOLD_valid <= 1;
        end else if( state == DECODE )
            IRHOLD_valid <= 0;
    end

assign IR = (IRQ & ~I) | NMI_edge ? 8'h00 :
                     IRHOLD_valid ? IRHOLD : DIMUX;

always @(posedge clk or posedge reset )
    if ( reset )
        DIHOLD <= 0;
    else if( RDY )
        DIHOLD <= DI;

assign DIMUX = ~RDY ? DIHOLD : DI;

/*
 * Microcode state machine
 */
always @(posedge clk or posedge reset)
    if( reset )
        state <= BRK0;
    else if( RDY )
        /* verilator lint_off CASEINCOMPLETE */
        case( state )
        DECODE  : 
            casez ( IR )
                8'b0000_0000:   state <= BRK0;
                8'b0010_0000:   state <= JSR0;
                8'b0010_1100:   state <= ABS0;  // BIT abs
                8'b0100_0000:   state <= RTI0;  // 
                8'b0100_1100:   state <= JMP0;
                8'b0110_0000:   state <= RTS0;
                8'b0110_1100:   state <= JMPI0;
                8'b0?00_1000:   state <= PUSH0;
                8'b0?10_1000:   state <= PULL0;
                8'b0??1_1000:   state <= REG;   // CLC, SEC, CLI, SEI 
                8'b1??0_00?0:   state <= FETCH; // IMM
                8'b1??0_1100:   state <= ABS0;  // X/Y abs
                8'b1???_1000:   state <= REG;   // DEY, TYA, ... 
                8'b???0_0001:   state <= INDX0;
                8'b???0_01??:   state <= ZP0;
                8'b???0_1001:   state <= FETCH; // IMM
                8'b???0_1101:   state <= ABS0;  // even E column
                8'b???0_1110:   state <= ABS0;  // even E column
                8'b???1_0000:   state <= BRA0;  // odd 0 column
                8'b???1_0001:   state <= INDY0; // odd 1 column
                8'b???1_01??:   state <= ZPX0;  // odd 4,5,6,7 columns
                8'b???1_1001:   state <= ABSX0; // odd 9 column
                8'b???1_11??:   state <= ABSX0; // odd C, D, E, F columns
                8'b????_1010:   state <= REG;   // <shift> A, TXA, ...  NOP
            endcase

        ZP0     : state <= write_back ? READ : FETCH;

        ZPX0    : state <= ZPX1;
        ZPX1    : state <= write_back ? READ : FETCH;

        ABS0    : state <= ABS1;
        ABS1    : state <= write_back ? READ : FETCH;

        ABSX0   : state <= ABSX1;
        ABSX1   : state <= (CO | store | write_back) ? ABSX2 : FETCH;
        ABSX2   : state <= write_back ? READ : FETCH;

        INDX0   : state <= INDX1;
        INDX1   : state <= INDX2;
        INDX2   : state <= INDX3;
        INDX3   : state <= FETCH;

        INDY0   : state <= INDY1;
        INDY1   : state <= INDY2;
        INDY2   : state <= (CO | store) ? INDY3 : FETCH;
        INDY3   : state <= FETCH;

        READ    : state <= WRITE;
        WRITE   : state <= FETCH;
        FETCH   : state <= DECODE;

        REG     : state <= DECODE;
        
        PUSH0   : state <= PUSH1;
        PUSH1   : state <= DECODE;

        PULL0   : state <= PULL1;
        PULL1   : state <= PULL2; 
        PULL2   : state <= DECODE;

        JSR0    : state <= JSR1;
        JSR1    : state <= JSR2;
        JSR2    : state <= JSR3;
        JSR3    : state <= FETCH; 

        RTI0    : state <= RTI1;
        RTI1    : state <= RTI2;
        RTI2    : state <= RTI3;
        RTI3    : state <= RTI4;
        RTI4    : state <= DECODE;

        RTS0    : state <= RTS1;
        RTS1    : state <= RTS2;
        RTS2    : state <= RTS3;
        RTS3    : state <= FETCH;

        BRA0    : state <= cond_true ? BRA1 : DECODE;
        BRA1    : state <= (CO ^ backwards) ? BRA2 : DECODE;
        BRA2    : state <= DECODE;

        JMP0    : state <= JMP1;
        JMP1    : state <= DECODE; 

        JMPI0   : state <= JMPI1;
        JMPI1   : state <= JMP0;

        BRK0    : state <= BRK1;
        BRK1    : state <= BRK2;
        BRK2    : state <= BRK3;
        BRK3    : state <= JMP0;

        endcase
        /* verilator lint_on CASEINCOMPLETE */

/*
 * Additional control signals
 */

always @(posedge clk or posedge reset)
     if( reset )
         res <= 1;
     else if( state == DECODE )
         res <= 0;

always @(posedge clk or posedge reset)
    if ( reset )
        load_reg <= 0;
    else if( state == DECODE && RDY )
        casez( IR )
        /* verilator lint_off CASEOVERLAP */        
                8'b0??01010,    // ASLA, ROLA, LSRA, RORA
                8'b0?????01,    // ORA, AND, EOR, ADC
                8'b100?10?0,    // DEY, TYA, TXA, TXS
                8'b1010???0,    // LDA/LDX/LDY 
                8'b10111010,    // TSX
                8'b1011?1?0,    // LDX/LDY
                8'b11001010,    // DEX
                8'b1?1???01,    // LDA, SBC
                8'b???01000:    // DEY, TAY, INY, INX
                                load_reg <= 1;

                default:        load_reg <= 0;
        /* verilator lint_on CASEOVERLAP */        
        endcase

always @(posedge clk or posedge reset)
    if ( reset )
        dst_reg <= 0;
    else if( state == DECODE && RDY )
        casez( IR )
                8'b1110_1000,   // INX
                8'b1100_1010,   // DEX
                8'b101?_??10:   // LDX, TAX, TSX
                                dst_reg <= SEL_X;

                8'b0?00_1000,   // PHP, PHA
                8'b1001_1010:   // TXS
                                dst_reg <= SEL_S;

                8'b1?00_1000,   // DEY, DEX
                8'b101?_?100,   // LDY
                8'b1010_?000:   // LDY #imm, TAY
                                dst_reg <= SEL_Y;

                default:        dst_reg <= SEL_A;
        endcase

always @(posedge clk or posedge reset)
    if ( reset )
        src_reg <= 0;
    else if( state == DECODE && RDY )
        casez( IR )
        /* verilator lint_off CASEOVERLAP */
                8'b1011_1010:   // TSX 
                                src_reg <= SEL_S; 

                8'b100?_?110,   // STX
                8'b100?_1?10,   // TXA, TXS
                8'b1110_??00,   // INX, CPX
                8'b1100_1010:   // DEX
                                src_reg <= SEL_X; 

                8'b100?_?100,   // STY
                8'b1001_1000,   // TYA
                8'b1100_??00,   // CPY
                8'b1?00_1000:   // DEY, INY
                                src_reg <= SEL_Y;

                default:        src_reg <= SEL_A;
        /* verilator lint_on CASEOVERLAP */
        endcase

always @(posedge clk or posedge reset) 
    if ( reset )
        index_y <= 0;
    else if( state == DECODE && RDY )
        casez( IR )
                8'b???1_0001,   // INDY
                8'b10?1_?110,   // LDX/STX zpg/abs, Y
                8'b????_1001:   // abs, Y
                                index_y <= 1;

                default:        index_y <= 0;
        endcase


always @(posedge clk or posedge reset)
    if ( reset )
        store <= 0;
    else if( state == DECODE && RDY )
        casez( IR )
                8'b100?_?1?0,   // STX, STY
                8'b100?_??01:   // STA
                                store <= 1;

                default:        store <= 0;

        endcase

always @(posedge clk or posedge reset )
    if ( reset )
        write_back <= 0;
    else if( state == DECODE && RDY )
        casez( IR )
                8'b0???_?110,   // ASL, ROL, LSR, ROR
                8'b11??_?110:   // DEC/INC 
                                write_back <= 1;

                default:        write_back <= 0;
        endcase


always @(posedge clk or posedge reset )
    if ( reset )
        load_only <= 0;
    else if( state == DECODE && RDY )
        casez( IR )
                8'b101?_????:   // LDA, LDX, LDY
                                load_only <= 1;
                default:        load_only <= 0;
        endcase

always @(posedge clk or posedge reset )
    if ( reset )
        inc <= 0;
    else if( state == DECODE && RDY )
        casez( IR )
                8'b111?_?110,   // INC 
                8'b11?0_1000:   // INX, INY
                                inc <= 1;

                default:        inc <= 0;
        endcase

always @(posedge clk or posedge reset )
    if ( reset )
        adc_sbc <= 0;
    else if( (state == DECODE || state == BRK0) && RDY )
        casez( IR )
                8'b?11?_??01:   // SBC, ADC
                                adc_sbc <= 1;

                default:        adc_sbc <= 0;
        endcase

always @(posedge clk or posedge reset )
    if ( reset )
        adc_bcd <= 0;
    else if( (state == DECODE || state == BRK0) && RDY )
        casez( IR )
                8'b011?_??01:   // ADC
                                adc_bcd <= D;

                default:        adc_bcd <= 0;
        endcase

always @(posedge clk or posedge reset )
    if ( reset )
        shift <= 0;
    else if( state == DECODE && RDY )
        casez( IR )
                8'b0???_?110,   // ASL, ROL, LSR, ROR (abs, absx, zpg, zpgx)
                8'b0???_1010:   // ASL, ROL, LSR, ROR (acc)
                                shift <= 1;

                default:        shift <= 0;
        endcase

always @(posedge clk or posedge reset )
    if ( reset )
        compare <= 0;
    else if( state == DECODE && RDY )
        casez( IR )
                8'b11?0_0?00,   // CPX, CPY (imm/zp)
                8'b11?0_1100,   // CPX, CPY (abs)
                8'b110?_??01:   // CMP 
                                compare <= 1;

                default:        compare <= 0;
        endcase

always @(posedge clk or posedge reset )
    if ( reset )
        shift_right <= 0;
    else if( state == DECODE && RDY )
        casez( IR )
                8'b01??_??10:   // ROR, LSR
                                shift_right <= 1;

                default:        shift_right <= 0; 
        endcase

always @(posedge clk or posedge reset )
    if ( reset )
        rotate <= 0;
    else if( state == DECODE && RDY )
        casez( IR )
                8'b0?1?_1010,   // ROL A, ROR A
                8'b0?1?_?110:   // ROR, ROL 
                                rotate <= 1;

                default:        rotate <= 0; 
        endcase

always @(posedge clk or posedge reset )
    if ( reset )
        op <= 0;
    else if( state == DECODE && RDY )
        casez( IR )
                8'b00??_??10:   // ROL, ASL
                                op <= OP_ROL;

                8'b0010_?100:   // BIT zp/abs   
                                op <= OP_AND;

                8'b01??_??10:   // ROR, LSR
                                op <= OP_A;

                8'b1000_1000,   // DEY
                8'b1100_1010,   // DEX 
                8'b110?_?110,   // DEC 
                8'b11??_??01,   // CMP, SBC
                8'b11?0_0?00,   // CPX, CPY (imm, zpg)
                8'b11?0_1100:   op <= OP_SUB;

                8'b010?_??01,   // EOR
                8'b00??_??01:   // ORA, AND
                                op <= { 2'b11, IR[6:5] };
                
                default:        op <= OP_ADD; 
        endcase

always @(posedge clk or posedge reset )
    if ( reset )
        bit_ins <= 0;
    else if( state == DECODE && RDY )
        casez( IR )
                8'b0010_?100:   // BIT zp/abs   
                                bit_ins <= 1;

                default:        bit_ins <= 0; 
        endcase

/*
 * special instructions
 */
always @(posedge clk or posedge reset )
    if ( reset )
    begin
        php <= 0;
        clc <= 0;
        plp <= 0;
        sec <= 0;
        cli <= 0;
        sei <= 0;
        clv <= 0;
        cld <= 0;
        sed <= 0;
        brk <= 0;
    end
    else if( state == DECODE && RDY ) begin
        php <= (IR == 8'h08);
        clc <= (IR == 8'h18);
        plp <= (IR == 8'h28);
        sec <= (IR == 8'h38);
        cli <= (IR == 8'h58);
        sei <= (IR == 8'h78);
        clv <= (IR == 8'hb8);
        cld <= (IR == 8'hd8);
        sed <= (IR == 8'hf8);
        brk <= (IR == 8'h00);
     end

always @(posedge clk or posedge reset)
    if ( reset )
        cond_code <= 0;
    else if( RDY )
        cond_code <= IR[7:5];

always @*
    case( cond_code )
            3'b000: cond_true = ~N;
            3'b001: cond_true = N;
            3'b010: cond_true = ~V;
            3'b011: cond_true = V;
            3'b100: cond_true = ~C;
            3'b101: cond_true = C;
            3'b110: cond_true = ~Z;
            3'b111: cond_true = Z;
    endcase


reg NMI_1 = 0;          // delayed NMI signal

always @(posedge clk or posedge reset)
    if ( reset )
        NMI_1 <= 0;
    else
        NMI_1 <= NMI;

always @(posedge clk or posedge reset )
    if ( reset )
        NMI_edge <= 0;
    else if( NMI_edge && state == BRK3 )
        NMI_edge <= 0;
    else if( NMI & ~NMI_1 )
        NMI_edge <= 1;

endmodule
