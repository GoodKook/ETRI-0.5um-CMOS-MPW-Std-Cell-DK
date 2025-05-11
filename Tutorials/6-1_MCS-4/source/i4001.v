`timescale 1ns / 1ps
`default_nettype none
////////////////////////////////////////////////////////////////////////
//
// MCS-4 i4001 ROM and I/O Port module
//
// This module emulates the Intel 4001 ROM and I/O chip. To make the
// most efficient use of FPGA block ram resources, the ROM storage
// is implemented using an "i4001_rom" module, which can be connected
// to multiple "i4001" modules via a rom_addr / rom_data bus.
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

module i4001 #(ROM_NUMBER = 4'd0) (
    input  wire         sysclk,
    input  wire         clk1_pad,
    input  wire         clk2_pad,
    input  wire         sync_pad,
    input  wire         poc_pad,
    input  wire         cmrom_pad,
//    inout  tri  [3:0]   data_pad,
    input  wire [3:0]   data_in_pad,
    output wire [3:0]   data_out_pad,
    output wire         data_out_oen,
//    inout  wire [3:0]   io_pad,
    input  wire [3:0]   io_in_pad,
    output wire [3:0]   io_out_pad,
    input  wire         clear_pad,
    output wor  [11:0]  rom_addr,
    input  wire [ 7:0]  rom_data
    );

    // FUTURE: Sync these to the sysclk domain
    wire clk1   = clk1_pad;
    wire clk2   = clk2_pad;
    wire sync   = sync_pad;
    wire poc    = poc_pad;
    wire cmrom  = cmrom_pad;
    wire clear  = clear_pad;

    // Identify the execution phases
    wire    a12, a22, a32;
    wire    m11, m12, m21, m22;
    wire    x21, x22;
    timing_recovery timing_recovery (
        .sysclk (sysclk),
        .clk1   (clk1),
        .clk2   (clk2),
        .sync   (sync),
        .a12    (a12),
        .a22    (a22),
        .a32    (a32),
        .m11    (m11),
        .m12    (m12),
        .m21    (m21),
        .m22    (m22),
        .x21    (x21),
        .x22    (x22)
    );

    // Forward declarations
    wire mbusread;
    wire ioread, iowrite;
    wire [3:0]  io_in;
    reg  [3:0]  rom_out;
    reg         chipsel;

    // Mux ROM and I/O data for output
    reg  [3:0]  data_out;
    always @(posedge sysclk) begin
        if (~clk2) begin
            data_out = 4'bxxxx;
            if (ioread)   data_out = io_in;
            if (mbusread) data_out = rom_out;
        end
    end

    // Latch external bus drive signal
    wire n0108 = ((chipsel & (m11 | m21)) | ioread) & ~poc;
    reg  extbusdrive;
    always @(posedge sysclk) begin
        if (~clk2) begin
            extbusdrive <= n0108;
        end
    end

    // Drive the tristate data bus
    //assign data_out_pad = extbusdrive ? data_out : 4'bzzzz;
    assign data_out_pad = data_out;
    assign data_out_oen = extbusdrive;


    // Common chip number match
    wire chipnum = (data_in_pad == ROM_NUMBER);


    // =======================================
    // ROM interface
    // =======================================

    // Latch the address
    reg  [7:0]  fetch_addr;
    always @(posedge sysclk) begin
        if (clk2) begin
            if (a12) fetch_addr[ 3:0] <= data_in_pad;
            if (a22) fetch_addr[ 7:4] <= data_in_pad;
        end
    end

    // Latch the chip select
    always @(posedge sysclk) begin
        if (a12)        chipsel <= 1'b0;
        if (a32 & clk2) chipsel <= cmrom & chipnum;
    end

    reg  n0128;
    always @(posedge sysclk) begin
        if (clk1) begin
            n0128 <= ioread;
        end
    end
    assign mbusread = ~(ioread | n0128);

    // Access the external Block RAM array
    assign rom_addr = extbusdrive ? {ROM_NUMBER, fetch_addr} : 12'h000;

    //
    // Mux the ROM data for output
    //
    // A real i4001 muxes the ROM ouputs on M11 and M21, depending on
    // inertial delays to provide the required 40ns hold time when
    // changing from the upper 4 bits to the lower 4 bits.
    //
    // Actual measurements show the FPGA emulation of the i4001 switches
    // its outputs 10-12ns after CLK2 goes low, while the re-created
    // instruction pointer board needs at least 120ns hold time. Oops.
    //
    // By changing this mux to use M12 and M22 instead, the outputs
    // are held at the correct values long enough for the IP board to
    // latch the correct values.
    //
    always @(posedge sysclk) begin
        if (m12) rom_out = rom_data[7:4];
        if (m22) rom_out = rom_data[3:0];
    end


    // =======================================
    // I/O Port interface
    // =======================================

    localparam [3:0] OPA_WRR = 4'b0010;
    localparam [3:0] OPA_RDR = 4'b1010;

    // SRC flip-flop
    reg  srcff;
    always @(posedge sysclk) begin
        if (clk2) begin
            if (x22 & cmrom) srcff <= chipnum;
        end
    end
    wire m22_srcff_cm = m22 & srcff & cmrom;

    // Decode an I/O Read operation
    reg  n0161;
    // always @(*) begin
    //     if (a12)
    //         n0161 <= 1'b0;
    //     if (clk2 & m22_srcff_cm & (data_pad == OPA_RDR))
    //         n0161 <= 1'b1;
    // end
    always @(posedge sysclk) begin
        if (clk2) begin
            if (a12)
                n0161 <= 1'b0;
            if (m22_srcff_cm & (data_in_pad == OPA_RDR))
                n0161 <= 1'b1;
        end
    end
    assign ioread = x21 & n0161;

    // Decode an I/O Write operation
    reg  n0135;
    // always @(*) begin
    //     if (a12)
    //         n0135 <= 1'b0;
    //     if (clk2 & m22_srcff_cm & (data_pad == OPA_WRR))
    //         n0135 <= 1'b1;
    // end
    always @(posedge sysclk) begin
        if (clk2) begin
            if (a12)
                n0135 <= 1'b0;
            if (m22_srcff_cm & (data_in_pad == OPA_WRR))
                n0135 <= 1'b1;
        end
    end
    assign iowrite = x22 & n0135;

    // Latch new output data
    reg  [3:0]  io_out;
    always @(posedge sysclk) begin
        if (clear | poc)
            io_out <= 4'b0000;
        if (clk2 & iowrite) begin
            io_out <= data_in_pad;
        end
    end

    assign io_out_pad = io_out;
    assign io_in = io_in_pad;

//    // I/O config
//    generate
//        genvar p;
//        for (p = 0; p < 4; p = p + 1) begin: IO_PORTS
//            if (IO_OUTPUT[p]) begin: IO_OUT_CONFIG
//                if (IO_INVERT[p])   assign io_pad[p] = ~io_out[p];
//                else                assign io_pad[p] =  io_out[p];
//            end
//            else begin: IO_IN_CONFIG
//                assign io_pad[p] = 1'bz;
//                if (IO_PULLUP[p])   PULLUP   pu(.O(io_pad[p]));
//                if (IO_PULLDOWN[p]) PULLDOWN pd(.O(io_pad[p]));
//            end
//            if (IO_INVERT[p])   assign io_in[p] = ~io_pad[p];
//            else                assign io_in[p] =  io_pad[p];
//        end
//    endgenerate

endmodule
