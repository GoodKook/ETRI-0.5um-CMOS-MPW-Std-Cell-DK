`timescale 1ns / 1ps
`default_nettype none
////////////////////////////////////////////////////////////////////////
//
// MCS-4 clock phase recovery module
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
 *  Recover the clock phase timing from the MCS-4 bus
 *
 *  This module is for use in other component emulations
 *  such as the i4001 ROM and the i4002 RAM chips.
 */
module timing_recovery (
    input  wire     sysclk, // System clock
    input  wire     clk1,   // Clock phase 1
    input  wire     clk2,   // Clock phase 2
    input  wire     sync,   // Clock sync

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
    output reg      x32
    );

    //
    // Recover the cycle timing
    //
    always @(posedge sysclk) begin
        if (clk2) begin
            a11 <= sync;
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

endmodule
