`timescale 1ns / 1ps
`default_nettype none
////////////////////////////////////////////////////////////////////////
//
// MCS-4 clock phase generator module
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

/*
 *  Generate the clock phase timing internal to the i4004 CPU
 */
module timing_generator (
    input  wire     sysclk, // System clock
    input  wire     clk1,   // Clock phase 1
    input  wire     clk2,   // Clock phase 2

    output reg      a11,
    output reg      a12,
    output reg      a21,
    output reg      a22,
    output reg      a31,
    output reg      a32,

    output reg      m11,
    output reg      m12,
    output reg      m21,
    output reg      m22,

    output reg      x11,
    output reg      x12,
    output reg      x21,
    output reg      x22,
    output reg      x31,
    output reg      x32,

    output reg      sync
);


    //
    // Generate  the cycle timing
    //
    always @(posedge sysclk) begin
        if (clk2) begin
            a11 <= ~(a12 | a22 | a32 | m12 | m22 | x12 | x22);
            a21 <= a12;
            a31 <= a22;
            m11 <= a32;
            m21 <= m12;
            x11 <= m22;
            x21 <= x12;
            x31 <= x22;
        end
    end

    always @(posedge sysclk) begin
        if (clk1) begin
            a12 <= a11;
            a22 <= a21;
            a32 <= a31;
            m12 <= m11;
            m22 <= m21;
            x12 <= x11;
            x22 <= x21;
            x32 <= x31;
        end
    end

    always @(posedge sysclk) begin
        if (~clk2)
            sync <= x31;
    end

    // This is self-initializing in hardware, but
    // initialization is required for simulation to
    // avoid endlessly propagating X states
    initial begin
        a11 = 1'b0;
        a12 = 1'b0;
        a21 = 1'b0;
        a22 = 1'b0;
        a31 = 1'b0;
        a32 = 1'b0;
        m11 = 1'b0;
        m12 = 1'b0;
        m21 = 1'b0;
        m22 = 1'b0;
        x11 = 1'b0;
        x12 = 1'b0;
        x21 = 1'b0;
        x22 = 1'b0;
        x31 = 1'b0;
        x32 = 1'b0;
        sync = 1'b0;
    end

endmodule
