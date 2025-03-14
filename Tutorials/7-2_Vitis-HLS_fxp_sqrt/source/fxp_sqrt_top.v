// ==============================================================
// Generated by Vitis HLS v2024.2.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

/* verilator lint_off WIDTHTRUNC */
/* verilator lint_off UNUSEDSIGNAL */

(* CORE_GENERATION_INFO="fxp_sqrt_top_fxp_sqrt_top,hls_ip_2024_2_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xa7a12t-cpg238-2I,HLS_INPUT_CLOCK=100.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=9.081125,HLS_SYN_LAT=33,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=216,HLS_SYN_LUT=552,HLS_VERSION=2024_2_2}" *)

module fxp_sqrt_top (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        in_val,
        ap_return
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [23:0] in_val;
output  [27:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* shreg_extract = "no" *) reg    ap_rst_reg_2;
(* shreg_extract = "no" *) reg    ap_rst_reg_1;
(* shreg_extract = "no" *) reg    ap_rst_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [27:0] s_fu_68_p3;
reg   [27:0] s_reg_134;
reg    ap_block_state1;
wire    grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_start;
wire    grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_done;
wire    grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_idle;
wire    grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_ready;
wire   [30:0] grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_s_4_out;
wire    grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_s_4_out_ap_vld;
wire   [27:0] grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_p_v_out;
wire    grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_p_v_out_ap_vld;
wire   [28:0] grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_q_1_out;
wire    grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_q_1_out_ap_vld;
reg    grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_start_reg;
reg    ap_block_state1_ignore_call10;
wire    ap_CS_fsm_state2;
reg   [30:0] s_4_loc_fu_50;
reg   [27:0] p_v_loc_fu_46;
reg   [28:0] q_1_loc_fu_42;
wire    ap_CS_fsm_state3;
wire   [28:0] add_ln103_fu_92_p2;
wire   [0:0] icmp_ln102_fu_86_p2;
wire   [27:0] tmp_fu_98_p4;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_rst_reg_2 = 1'b1;
#0 ap_rst_reg_1 = 1'b1;
#0 ap_rst_reg = 1'b1;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_start_reg = 1'b0;
end

fxp_sqrt_top_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1 grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_reg),
    .ap_start(grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_start),
    .ap_done(grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_done),
    .ap_idle(grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_idle),
    .ap_ready(grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_ready),
    .zext_ln82(s_reg_134),
    .s_4_out(grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_s_4_out),
    .s_4_out_ap_vld(grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_s_4_out_ap_vld),
    .p_v_out(grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_p_v_out),
    .p_v_out_ap_vld(grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_p_v_out_ap_vld),
    .q_1_out(grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_q_1_out),
    .q_1_out_ap_vld(grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_q_1_out_ap_vld)
);

always @ (posedge ap_clk) begin
    if (ap_rst_reg == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_reg == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state3)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_reg == 1'b1) begin
        grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_state1_ignore_call10) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_start_reg <= 1'b1;
        end else if ((grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_ready == 1'b1)) begin
            grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    ap_rst_reg <= ap_rst_reg_1;
end

always @ (posedge ap_clk) begin
    ap_rst_reg_1 <= ap_rst_reg_2;
end

always @ (posedge ap_clk) begin
    ap_rst_reg_2 <= ap_rst;
end

always @ (posedge ap_clk) begin
    if (((grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_p_v_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        p_v_loc_fu_46 <= grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_p_v_out;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_q_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        q_1_loc_fu_42 <= grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_q_1_out;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_s_4_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_4_loc_fu_50 <= grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_s_4_out;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        s_reg_134[27 : 4] <= s_fu_68_p3[27 : 4];
    end
end

always @ (*) begin
    if ((1'b1 == ap_block_state1)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

assign ap_ST_fsm_state3_blk = 1'b0;

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln103_fu_92_p2 = (q_1_loc_fu_42 + 29'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

always @ (*) begin
    ap_block_state1_ignore_call10 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

assign ap_return = ((icmp_ln102_fu_86_p2[0:0] == 1'b1) ? tmp_fu_98_p4 : p_v_loc_fu_46);

assign grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_start = grp_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1_fu_60_ap_start_reg;

assign icmp_ln102_fu_86_p2 = (($signed(s_4_loc_fu_50) > $signed(31'd0)) ? 1'b1 : 1'b0);

assign s_fu_68_p3 = {{in_val}, {4'd0}};

assign tmp_fu_98_p4 = {{add_ln103_fu_92_p2[28:1]}};

always @ (posedge ap_clk) begin
    s_reg_134[3:0] <= 4'b0000;
end

endmodule //fxp_sqrt_top
