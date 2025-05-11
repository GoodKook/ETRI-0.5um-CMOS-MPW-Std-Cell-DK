`timescale 1ns / 1ps
`default_nettype none
////////////////////////////////////////////////////////////////////////
//
// MCS-4 common counter sub-module
//
// This module emulates the counter logic found in Intel MCS-4
// integrated circuits such as the i4004 CPU.
//
// This file is part of the MCS-4 project hosted at OpenCores:
//      http://www.opencores.org/cores/mcs-4/
//
// Copyright © 2012, 2021 by Reece Pollack <rrpollack@opencores.org>
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

module counter (
    input  wire sysclk,

    input  wire step_a_in,
    input  wire step_b_in,

    output wire step_a_out,
    output wire step_b_out,
    output wire q,
    output wire qn
    );

    reg  master = 1'b0;
    reg  slave  = 1'b0;
    always @(posedge sysclk) begin
        if (step_a_in)
            master <= ~slave;
    end

    always @(posedge sysclk) begin
        if (step_b_in)
            slave  <= master;
    end

    assign step_a_out =  slave;
    assign step_b_out = ~slave;

    assign q  = step_a_out;
    assign qn = step_b_out;

endmodule
