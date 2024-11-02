//
// Co-Emulation warapper for CPU_6502
// (Memory-Embeded)
//
`ifdef EMU_MONITOR
module cpu_wrapper(Din_emu, Dout_emu, Addr_emu, load_emu, get_emu, IO_Req, clk_emu, clk_dut, clk_LED);
`else
module cpu_wrapper(Din_emu, Dout_emu, Addr_emu, load_emu, get_emu, IO_Req, clk_emu, clk_dut);
`endif
    input  [7:0]    Din_emu;
    output [7:0]    Dout_emu;
    input  [2:0]    Addr_emu;
    input           load_emu, get_emu, clk_emu;
    output          IO_Req;
    input           clk_dut;
`ifdef EMU_MONITOR
    output clk_LED;
    // Monitoring emulation process by blinking LED
    reg [3:0] counter;
    always @(posedge clk_dut)
    begin
        counter <= counter + 1;
    end
    assign clk_LED = counter[3];
`endif

    // Emulation wrapper: Stimulus & Output capture for DUT
    parameter   NUM_STIM_ARRAY  = 5,
                NUM_OUT_ARRAY   = 5;
    reg [7:0]   stimIn[NUM_STIM_ARRAY];
    reg [7:0]   vectOut[NUM_OUT_ARRAY];
    reg [7:0]   Dout_emu;
    // DUT interface: registered input
    reg  [7:0]  DI;     // data in, read bus
    reg  [7:0]  DI_P;   // data in, read bus
    reg         IRQ;    // interrupt request
    reg         NMI;    // non-maskable interrupt request
    reg         RDY;    // Ready signal. Pauses CPU when RDY=0 
    reg         reset;  // reset signal
    // DUT interface: output wire. DUT's output will be captured
    wire [15:0] AB;     // Address Bus
    wire        WE;     // write enable
    wire [7:0]  DO;     // data out, write bus

    // Signals for FPGA Embedded Memory Emulation
    reg         Mem_Emu_Ena;
    reg         Mem_Emu_Wen;
    reg  [15:0] Mem_Emu_Adr;
    reg  [ 7:0] Mem_Emu_Din;
    wire [ 7:0] Mem_Emu_Dout;
    
    // Emulation Transactor ---------------------------------------------
    always @(posedge clk_emu)
    begin
        if (load_emu)   // Input stimulus to DUT
        begin
            reset <= stimIn[0][0];
            IRQ   <= stimIn[0][1];
            NMI   <= stimIn[0][2];
            RDY   <= stimIn[0][3];
            DI_P  <= stimIn[1];
            // Memory Emulation
            Mem_Emu_Ena       <= stimIn[0][4];
            Mem_Emu_Wen       <= stimIn[0][5];
            Mem_Emu_Adr[15:8] <= stimIn[2];
            Mem_Emu_Adr[ 7:0] <= stimIn[3];
            Mem_Emu_Din       <= stimIn[4];
        end
        else if (get_emu)   // Capure output from DUT
        begin
            vectOut[0]    <= AB[15:8];
            vectOut[1]    <= AB[7:0];
            vectOut[2]    <= DO;
            vectOut[3]     = WE;
            vectOut[3][0] <= WE;
            vectOut[4]    <= Mem_Emu_Dout;
        end
        else
        begin
            stimIn[Addr_emu] <= Din_emu;    // stimulus: Host -> DUT
            Dout_emu <= vectOut[Addr_emu];  // output vector: DUT->Host
        end
    end

    // DUT --------------------------------------------------------------
    cpu u_cpu (
        .clk(clk_dut),
        .reset(reset),
        .AB(AB),
        .DI(DI),
        .DO(DO),
        .WE(WE),
        .IRQ(IRQ),
        .NMI(NMI),
        .RDY(RDY) );

    // In/Out Control
`define PIA_KBD_REG     16'hD010
`define PIA_KBD_CTL     16'hD011
`define PIA_DSP_REG     16'hD012
`define PIA_DSP_CTL     16'hD013
`define BIN_FILE_LOAD   16'hD018

    reg  IO_Sel;
    wire _IO_Req;

    always @*
    begin
        if ((AB==`PIA_KBD_REG) || (AB==`PIA_KBD_CTL) || (AB==`PIA_DSP_REG) || (AB==`PIA_DSP_CTL) || (AB==`BIN_FILE_LOAD))
            _IO_Req = 1;
        else
            _IO_Req = 0;

        // DI select
        if (IO_Sel)
            DI = DI_P;
        else
            DI = DI_M;
    end

    always @(posedge clk_dut)
    begin
        if ((AB==`PIA_KBD_REG) || (AB==`PIA_KBD_CTL) || (AB==`PIA_DSP_REG) || (AB==`PIA_DSP_CTL) || (AB==`BIN_FILE_LOAD))
            IO_Sel <= 1;
        else
            IO_Sel <= 0;
    end
    assign IO_Req = IO_Sel | _IO_Req;

    // Memory Embedded
    reg [7:0] Memory[65536];   // 64Kbytes
    reg [7:0] DI_M;

    wire [15:0] _Address;
    wire [ 7:0] _Din;
    wire [ 7:0] _Dout;
    wire        _WE;

    always @*
    begin
        if (Mem_Emu_Ena)
        begin
            _WE      = Mem_Emu_Wen;
            _Din     = Mem_Emu_Din;
            _Address = Mem_Emu_Adr;
        end
        else
        begin
            _WE      = WE;
            _Din     = DO;
            _Address = AB;
        end;
    end
    assign Mem_Emu_Dout = DI_M;
    
    always @(posedge clk_dut)
    begin
        if (_WE)
            Memory[_Address] <= _Din;
        else
            DI_M <= Memory[_Address];
    end

    initial
    begin
    // 256 bytes read from wozmon.bin
    // Offset address: FF00
        Memory[16'hFF00] = 8'hD8;
        Memory[16'hFF01] = 8'h58;
        Memory[16'hFF02] = 8'hA0;
        Memory[16'hFF03] = 8'h7F;
        Memory[16'hFF04] = 8'h8C;
        Memory[16'hFF05] = 8'h12;
        Memory[16'hFF06] = 8'hD0;
        Memory[16'hFF07] = 8'hA9;
        Memory[16'hFF08] = 8'hA7;
        Memory[16'hFF09] = 8'h8D;
        Memory[16'hFF0A] = 8'h11;
        Memory[16'hFF0B] = 8'hD0;
        Memory[16'hFF0C] = 8'h8D;
        Memory[16'hFF0D] = 8'h13;
        Memory[16'hFF0E] = 8'hD0;
        Memory[16'hFF0F] = 8'hC9;
        Memory[16'hFF10] = 8'hDF;
        Memory[16'hFF11] = 8'hF0;
        Memory[16'hFF12] = 8'h13;
        Memory[16'hFF13] = 8'hC9;
        Memory[16'hFF14] = 8'h9B;
        Memory[16'hFF15] = 8'hF0;
        Memory[16'hFF16] = 8'h03;
        Memory[16'hFF17] = 8'hC8;
        Memory[16'hFF18] = 8'h10;
        Memory[16'hFF19] = 8'h0F;
        Memory[16'hFF1A] = 8'hA9;
        Memory[16'hFF1B] = 8'hDC;
        Memory[16'hFF1C] = 8'h20;
        Memory[16'hFF1D] = 8'hEF;
        Memory[16'hFF1E] = 8'hFF;
        Memory[16'hFF1F] = 8'hA9;
        Memory[16'hFF20] = 8'h8D;
        Memory[16'hFF21] = 8'h20;
        Memory[16'hFF22] = 8'hEF;
        Memory[16'hFF23] = 8'hFF;
        Memory[16'hFF24] = 8'hA0;
        Memory[16'hFF25] = 8'h01;
        Memory[16'hFF26] = 8'h88;
        Memory[16'hFF27] = 8'h30;
        Memory[16'hFF28] = 8'hF6;
        Memory[16'hFF29] = 8'hAD;
        Memory[16'hFF2A] = 8'h11;
        Memory[16'hFF2B] = 8'hD0;
        Memory[16'hFF2C] = 8'h10;
        Memory[16'hFF2D] = 8'hFB;
        Memory[16'hFF2E] = 8'hAD;
        Memory[16'hFF2F] = 8'h10;
        Memory[16'hFF30] = 8'hD0;
        Memory[16'hFF31] = 8'h99;
        Memory[16'hFF32] = 8'h00;
        Memory[16'hFF33] = 8'h02;
        Memory[16'hFF34] = 8'h20;
        Memory[16'hFF35] = 8'hEF;
        Memory[16'hFF36] = 8'hFF;
        Memory[16'hFF37] = 8'hC9;
        Memory[16'hFF38] = 8'h8D;
        Memory[16'hFF39] = 8'hD0;
        Memory[16'hFF3A] = 8'hD4;
        Memory[16'hFF3B] = 8'hA0;
        Memory[16'hFF3C] = 8'hFF;
        Memory[16'hFF3D] = 8'hA9;
        Memory[16'hFF3E] = 8'h00;
        Memory[16'hFF3F] = 8'hAA;
        Memory[16'hFF40] = 8'h0A;
        Memory[16'hFF41] = 8'h85;
        Memory[16'hFF42] = 8'h2B;
        Memory[16'hFF43] = 8'hC8;
        Memory[16'hFF44] = 8'hB9;
        Memory[16'hFF45] = 8'h00;
        Memory[16'hFF46] = 8'h02;
        Memory[16'hFF47] = 8'hC9;
        Memory[16'hFF48] = 8'h8D;
        Memory[16'hFF49] = 8'hF0;
        Memory[16'hFF4A] = 8'hD4;
        Memory[16'hFF4B] = 8'hC9;
        Memory[16'hFF4C] = 8'hAE;
        Memory[16'hFF4D] = 8'h90;
        Memory[16'hFF4E] = 8'hF4;
        Memory[16'hFF4F] = 8'hF0;
        Memory[16'hFF50] = 8'hF0;
        Memory[16'hFF51] = 8'hC9;
        Memory[16'hFF52] = 8'hBA;
        Memory[16'hFF53] = 8'hF0;
        Memory[16'hFF54] = 8'hEB;
        Memory[16'hFF55] = 8'hC9;
        Memory[16'hFF56] = 8'hD2;
        Memory[16'hFF57] = 8'hF0;
        Memory[16'hFF58] = 8'h3B;
        Memory[16'hFF59] = 8'h86;
        Memory[16'hFF5A] = 8'h28;
        Memory[16'hFF5B] = 8'h86;
        Memory[16'hFF5C] = 8'h29;
        Memory[16'hFF5D] = 8'h84;
        Memory[16'hFF5E] = 8'h2A;
        Memory[16'hFF5F] = 8'hB9;
        Memory[16'hFF60] = 8'h00;
        Memory[16'hFF61] = 8'h02;
        Memory[16'hFF62] = 8'h49;
        Memory[16'hFF63] = 8'hB0;
        Memory[16'hFF64] = 8'hC9;
        Memory[16'hFF65] = 8'h0A;
        Memory[16'hFF66] = 8'h90;
        Memory[16'hFF67] = 8'h06;
        Memory[16'hFF68] = 8'h69;
        Memory[16'hFF69] = 8'h88;
        Memory[16'hFF6A] = 8'hC9;
        Memory[16'hFF6B] = 8'hFA;
        Memory[16'hFF6C] = 8'h90;
        Memory[16'hFF6D] = 8'h11;
        Memory[16'hFF6E] = 8'h0A;
        Memory[16'hFF6F] = 8'h0A;
        Memory[16'hFF70] = 8'h0A;
        Memory[16'hFF71] = 8'h0A;
        Memory[16'hFF72] = 8'hA2;
        Memory[16'hFF73] = 8'h04;
        Memory[16'hFF74] = 8'h0A;
        Memory[16'hFF75] = 8'h26;
        Memory[16'hFF76] = 8'h28;
        Memory[16'hFF77] = 8'h26;
        Memory[16'hFF78] = 8'h29;
        Memory[16'hFF79] = 8'hCA;
        Memory[16'hFF7A] = 8'hD0;
        Memory[16'hFF7B] = 8'hF8;
        Memory[16'hFF7C] = 8'hC8;
        Memory[16'hFF7D] = 8'hD0;
        Memory[16'hFF7E] = 8'hE0;
        Memory[16'hFF7F] = 8'hC4;
        Memory[16'hFF80] = 8'h2A;
        Memory[16'hFF81] = 8'hF0;
        Memory[16'hFF82] = 8'h97;
        Memory[16'hFF83] = 8'h24;
        Memory[16'hFF84] = 8'h2B;
        Memory[16'hFF85] = 8'h50;
        Memory[16'hFF86] = 8'h10;
        Memory[16'hFF87] = 8'hA5;
        Memory[16'hFF88] = 8'h28;
        Memory[16'hFF89] = 8'h81;
        Memory[16'hFF8A] = 8'h26;
        Memory[16'hFF8B] = 8'hE6;
        Memory[16'hFF8C] = 8'h26;
        Memory[16'hFF8D] = 8'hD0;
        Memory[16'hFF8E] = 8'hB5;
        Memory[16'hFF8F] = 8'hE6;
        Memory[16'hFF90] = 8'h27;
        Memory[16'hFF91] = 8'h4C;
        Memory[16'hFF92] = 8'h44;
        Memory[16'hFF93] = 8'hFF;
        Memory[16'hFF94] = 8'h6C;
        Memory[16'hFF95] = 8'h24;
        Memory[16'hFF96] = 8'h00;
        Memory[16'hFF97] = 8'h30;
        Memory[16'hFF98] = 8'h2B;
        Memory[16'hFF99] = 8'hA2;
        Memory[16'hFF9A] = 8'h02;
        Memory[16'hFF9B] = 8'hB5;
        Memory[16'hFF9C] = 8'h27;
        Memory[16'hFF9D] = 8'h95;
        Memory[16'hFF9E] = 8'h25;
        Memory[16'hFF9F] = 8'h95;
        Memory[16'hFFA0] = 8'h23;
        Memory[16'hFFA1] = 8'hCA;
        Memory[16'hFFA2] = 8'hD0;
        Memory[16'hFFA3] = 8'hF7;
        Memory[16'hFFA4] = 8'hD0;
        Memory[16'hFFA5] = 8'h14;
        Memory[16'hFFA6] = 8'hA9;
        Memory[16'hFFA7] = 8'h8D;
        Memory[16'hFFA8] = 8'h20;
        Memory[16'hFFA9] = 8'hEF;
        Memory[16'hFFAA] = 8'hFF;
        Memory[16'hFFAB] = 8'hA5;
        Memory[16'hFFAC] = 8'h25;
        Memory[16'hFFAD] = 8'h20;
        Memory[16'hFFAE] = 8'hDC;
        Memory[16'hFFAF] = 8'hFF;
        Memory[16'hFFB0] = 8'hA5;
        Memory[16'hFFB1] = 8'h24;
        Memory[16'hFFB2] = 8'h20;
        Memory[16'hFFB3] = 8'hDC;
        Memory[16'hFFB4] = 8'hFF;
        Memory[16'hFFB5] = 8'hA9;
        Memory[16'hFFB6] = 8'hBA;
        Memory[16'hFFB7] = 8'h20;
        Memory[16'hFFB8] = 8'hEF;
        Memory[16'hFFB9] = 8'hFF;
        Memory[16'hFFBA] = 8'hA9;
        Memory[16'hFFBB] = 8'hA0;
        Memory[16'hFFBC] = 8'h20;
        Memory[16'hFFBD] = 8'hEF;
        Memory[16'hFFBE] = 8'hFF;
        Memory[16'hFFBF] = 8'hA1;
        Memory[16'hFFC0] = 8'h24;
        Memory[16'hFFC1] = 8'h20;
        Memory[16'hFFC2] = 8'hDC;
        Memory[16'hFFC3] = 8'hFF;
        Memory[16'hFFC4] = 8'h86;
        Memory[16'hFFC5] = 8'h2B;
        Memory[16'hFFC6] = 8'hA5;
        Memory[16'hFFC7] = 8'h24;
        Memory[16'hFFC8] = 8'hC5;
        Memory[16'hFFC9] = 8'h28;
        Memory[16'hFFCA] = 8'hA5;
        Memory[16'hFFCB] = 8'h25;
        Memory[16'hFFCC] = 8'hE5;
        Memory[16'hFFCD] = 8'h29;
        Memory[16'hFFCE] = 8'hB0;
        Memory[16'hFFCF] = 8'hC1;
        Memory[16'hFFD0] = 8'hE6;
        Memory[16'hFFD1] = 8'h24;
        Memory[16'hFFD2] = 8'hD0;
        Memory[16'hFFD3] = 8'h02;
        Memory[16'hFFD4] = 8'hE6;
        Memory[16'hFFD5] = 8'h25;
        Memory[16'hFFD6] = 8'hA5;
        Memory[16'hFFD7] = 8'h24;
        Memory[16'hFFD8] = 8'h29;
        Memory[16'hFFD9] = 8'h07;
        Memory[16'hFFDA] = 8'h10;
        Memory[16'hFFDB] = 8'hC8;
        Memory[16'hFFDC] = 8'h48;
        Memory[16'hFFDD] = 8'h4A;
        Memory[16'hFFDE] = 8'h4A;
        Memory[16'hFFDF] = 8'h4A;
        Memory[16'hFFE0] = 8'h4A;
        Memory[16'hFFE1] = 8'h20;
        Memory[16'hFFE2] = 8'hE5;
        Memory[16'hFFE3] = 8'hFF;
        Memory[16'hFFE4] = 8'h68;
        Memory[16'hFFE5] = 8'h29;
        Memory[16'hFFE6] = 8'h0F;
        Memory[16'hFFE7] = 8'h09;
        Memory[16'hFFE8] = 8'hB0;
        Memory[16'hFFE9] = 8'hC9;
        Memory[16'hFFEA] = 8'hBA;
        Memory[16'hFFEB] = 8'h90;
        Memory[16'hFFEC] = 8'h02;
        Memory[16'hFFED] = 8'h69;
        Memory[16'hFFEE] = 8'h06;
        Memory[16'hFFEF] = 8'h2C;
        Memory[16'hFFF0] = 8'h12;
        Memory[16'hFFF1] = 8'hD0;
        Memory[16'hFFF2] = 8'h30;
        Memory[16'hFFF3] = 8'hFB;
        Memory[16'hFFF4] = 8'h8D;
        Memory[16'hFFF5] = 8'h12;
        Memory[16'hFFF6] = 8'hD0;
        Memory[16'hFFF7] = 8'h60;
        Memory[16'hFFF8] = 8'h00;
        Memory[16'hFFF9] = 8'h00;
        Memory[16'hFFFA] = 8'h00;
        Memory[16'hFFFB] = 8'h0F;
        Memory[16'hFFFC] = 8'h00;
        Memory[16'hFFFD] = 8'hFF;
        Memory[16'hFFFE] = 8'h00;
        Memory[16'hFFFF] = 8'h00;
    end
    
endmodule

