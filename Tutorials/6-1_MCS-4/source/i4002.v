`timescale 1ns / 1ps
`default_nettype none
////////////////////////////////////////////////////////////////////////
//
// MCS-4 i40021 RAM and Output Port module
//
// This module emulates the Intel 4002 RAM and Output Port chip. The
// RAM storage is implemented using an "i4002_ram" module, which is
// dependent on the availability of dual-port distributed RAM.
//
// This file is part of the MCS-4 project hosted at OpenCores:
//      http://www.opencores.org/cores/mcs-4/
//
// Copyright © 2021 by Reece Pollack <rrpollack@opencores.org>
//
// These materials are provided under the Creative Commons
// "Attribution-NonCommercial-ShareAlike" (CC BY-NC-SA) Public License.
// They are NOT "public domain", and are protected by copyright.
//
// This work based on materials provided by Intel Corporation and
// others under the same license. See the file doc/License for
// details of this license.
//
////////////////////////////////////////////////////////////////////////

module i4002 #(
    parameter   CHIP_NUMBER    =  0,    // Mask and P0 config
    parameter   RAM_ARRAY_SIZE = 32     // Size of the RAM array
    ) (
    input  wire         sysclk,     // 20 MHz oscillator input
    // MCS-4 system bus interface
    input  wire         clk1,       // MCS-4 Phase 1 clock
    input  wire         clk2,       // MCS-4 Phase 2 clock
    input  wire         sync,       // MCS-4 Phase synchronization
    input  wire         reset,      // MCS-4 Synchronous reset
    input  wire         cm,         // MCS-4 Command Line (bank select)
    inout  tri  [3:0]   data,       // MCS-4 bidirectional data bus

    output reg  [3:0]   oport,      // i4002 Output port

    // Ram array dual-port interface
    input  wire [4:0]   ram0_addr2,
    output wire [3:0]   ram0_data2_out,
    input  wire [4:0]   ram1_addr2,
    output wire [3:0]   ram1_data2_out,
    input  wire [4:0]   ram2_addr2,
    output wire [3:0]   ram2_data2_out,
    input  wire [4:0]   ram3_addr2,
    output wire [3:0]   ram3_data2_out
    );

    //
    // Recover the cycle timing
    //
    wire    a12, m12, m22, x22, x32;
    timing_recovery timing_recovery (
        .sysclk (sysclk),
        .clk1   (clk1),
        .clk2   (clk2),
        .sync   (sync),
        .a12    (a12),
        .m12    (m12),
        .m22    (m22),
        .x22    (x22),
        .x32    (x32)
    );

    // Capture OPA during the M2 subcycle
    reg             io;
    reg  [3:0]      opa;
    always @(posedge sysclk) begin
        if (reset) begin
            io = 1'b0;
            opa = 4'b0000;
        end
        else begin
            if (clk2 & m22) begin
                io = cm;
                opa = data;
            end
        end
    end

    // Decode I/O type operations
    wire    wrm = io & (opa == 4'b0000);
    wire    wmp = io & (opa == 4'b0001);
    wire    wrx = io & (opa[3:2] == 2'b01);
    wire    rdm = io & (opa[3:2] == 2'b10) & (opa[1:0] != 2'b10);
    wire    rdx = io & (opa[3:2] == 2'b11);

    // Capture the SRC address during the X22/X32 subcycles
    reg         ram_sel = 1'b0;
    reg         src_ram_sel = 1'b0;
    reg  [1:0]  reg_num = 2'b00;
    reg  [3:0]  char_num = 4'b0000;
    always @(posedge sysclk) begin
        if (reset) begin
            ram_sel = 1'b0;
            src_ram_sel = 1'b0;
            reg_num  = 2'b00;
            char_num = 4'b0000;
        end
        else begin
            if (cm & x22 & clk2) begin
                ram_sel = (data[3:2] == CHIP_NUMBER);
                src_ram_sel = ram_sel;
                reg_num = data[1:0];
            end
            if (clk2 & x32 & src_ram_sel) begin
                char_num = data;
            end
            if (a12) begin
                src_ram_sel = 1'b0;
            end
        end
    end

    // Decode the register address
    wire [4:0]  reg_addr = opa[2] ? {3'b100, opa[1:0]} :
                                    {1'b0, char_num};
    wire    reg_write  = ram_sel & clk2 & x22 & (wrm | wrx);
    wire    reg0_write = reg_write & (reg_num == 2'b00);
    wire    reg1_write = reg_write & (reg_num == 2'b01);
    wire    reg2_write = reg_write & (reg_num == 2'b10);
    wire    reg3_write = reg_write & (reg_num == 2'b11);

    // Latch the output port value
    always @(posedge sysclk) begin
        if (reset) begin
            oport = 4'b0000;
        end
        else if (ram_sel) begin
            if (clk2 & x22 & wmp)
                oport = data;
        end
    end

    //
    // In a real i4002, the RAM array is refreshed as follows:
    //   1) During the M11 subcycle, CLK1 causes all column sense
    //      lines to be precharged to a "high" state.
    //   2) During the M12 subcycle, the refresh row counter selects
    //      a row to be refreshed. CLK2 causes the selected row to
    //      be read onto the column sense lines.
    //   3) During the M22 subcycle, the selected row is rewritten
    //      with the data read during the M12 subcycle.
    //
    // The refresh row counter is 5 bits wide, and counts from 0x1f
    // down to 0x00 before rolling over. The upper bit determines
    // whether a "main memory" or "status" row is selected. Since
    // there are 16 "main memory" rows but only four status rows,
    // the status rows are refreshed four times per refresh cycle.
    //
    // The RAM array is written using a similar sequence:
    //   1) During the X11 subcycle, CLK1 causes all column sense
    //      lines to be precharged to a "high" state.
    //   2) During the X12 subcycle, a row is selected based on the
    //      most recent SRC command or the low two bits of OPA for
    //      status register reads and writes. CLK2 causes the
    //      selected row to be read onto the column sense lines.
    //   3) During the X21 subcycle, if the current operation is a
    //      read, the data from the selected register is gated onto
    //      the data bus.
    //   4) During the X22 subcycle, if the current operation is a
    //      write, the selected row is written. The previously
    //      selected register receives the data from the data bus,
    //      while the other registers in the row receive the data
    //      read during the X12 subcycle.
    //
    // When the RESET line is asserted, the RAM row read operations
    // are inhibited. This causes the refresh operations to write
    // zeros into the RAM. Also inhibited are the data bus gate
    // signals, preventing data bus values from being written during
    // any erroneous write operations.
    //
    reg  [4:0]  rfsh_addr = 5'd0;
    reg  [4:0]  rfsh_next = 5'd0;
    always @(posedge sysclk) begin
        if (m12)
            rfsh_addr <= rfsh_next;
        if (m22)
            rfsh_next <= rfsh_addr + 1'd1;
    end

    //
    // Mux the RAM's write port signals
    //
    wire [4:0]  ram_addr     = reset ? rfsh_addr : reg_addr;
    wire [3:0]  ram_data_out = reset ? 4'h0      : data;
    wire        ram0_write   = reset ? 1'b1      : reg0_write;
    wire        ram1_write   = reset ? 1'b1      : reg1_write;
    wire        ram2_write   = reset ? 1'b1      : reg2_write;
    wire        ram3_write   = reset ? 1'b1      : reg3_write;

    // Select the correct RAM output
    wire [3:0]  ram0_data_in;
    wire [3:0]  ram1_data_in;
    wire [3:0]  ram2_data_in;
    wire [3:0]  ram3_data_in;
    reg  [3:0]  reg_data_in;
    always @(*) begin
        case (reg_num)
            2'b00   : reg_data_in = ram0_data_in;
            2'b01   : reg_data_in = ram1_data_in;
            2'b10   : reg_data_in = ram2_data_in;
            2'b11   : reg_data_in = ram3_data_in;
        endcase
    end

    wire    reg_read = ram_sel & x22 & (rdm | rdx);
    assign  data = reg_read ? reg_data_in : 4'bzzzz;


    // Instantiate RAM0 array
    i4002_ram #(
        .RAM_ARRAY_SIZE (RAM_ARRAY_SIZE)
    ) ram0 (
        .sysclk     (sysclk),
        .addr       (ram_addr),
        .write      (ram0_write),
        .data_in    (ram_data_out),
        .data_out   (ram0_data_in),
        .addr2      (ram0_addr2),
        .data2_out  (ram0_data2_out)
    );

    // Instantiate RAM1 array
    i4002_ram #(
        .RAM_ARRAY_SIZE (RAM_ARRAY_SIZE)
    ) ram1 (
        .sysclk     (sysclk),
        .addr       (ram_addr),
        .write      (ram1_write),
        .data_in    (ram_data_out),
        .data_out   (ram1_data_in),
        .addr2      (ram1_addr2),
        .data2_out  (ram1_data2_out)
    );

    // Instantiate RAM2 array
    i4002_ram #(
        .RAM_ARRAY_SIZE (RAM_ARRAY_SIZE)
    ) ram2 (
        .sysclk     (sysclk),
        .addr       (ram_addr),
        .write      (ram2_write),
        .data_in    (ram_data_out),
        .data_out   (ram2_data_in),
        .addr2      (ram2_addr2),
        .data2_out  (ram2_data2_out)
    );

    // Instantiate RAM3 array
    i4002_ram #(
        .RAM_ARRAY_SIZE (RAM_ARRAY_SIZE)
    ) ram3 (
        .sysclk     (sysclk),
        .addr       (ram_addr),
        .write      (ram3_write),
        .data_in    (ram_data_out),
        .data_out   (ram3_data_in),
        .addr2      (ram3_addr2),
        .data2_out  (ram3_data2_out)
    );

endmodule
