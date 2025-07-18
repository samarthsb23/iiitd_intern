// ==============================================================
// Generated by Vitis HLS v2024.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module matrixmul_32_opt_matrixmul_32_opt_Pipeline_loop_output_C2123 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        out_C_TREADY,
        output_C_30_address0,
        output_C_30_ce0,
        output_C_30_q0,
        empty_31_i,
        empty_31_o,
        empty_31_o_ap_vld,
        empty_32_i,
        empty_32_o,
        empty_32_o_ap_vld,
        empty_33_i,
        empty_33_o,
        empty_33_o_ap_vld,
        out_C_TDATA,
        out_C_TVALID,
        out_C_TKEEP,
        out_C_TSTRB,
        out_C_TLAST,
        empty
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   out_C_TREADY;
output  [4:0] output_C_30_address0;
output   output_C_30_ce0;
input  [31:0] output_C_30_q0;
input  [31:0] empty_31_i;
output  [31:0] empty_31_o;
output   empty_31_o_ap_vld;
input  [3:0] empty_32_i;
output  [3:0] empty_32_o;
output   empty_32_o_ap_vld;
input  [0:0] empty_33_i;
output  [0:0] empty_33_o;
output   empty_33_o_ap_vld;
output  [31:0] out_C_TDATA;
output   out_C_TVALID;
output  [3:0] out_C_TKEEP;
output  [3:0] out_C_TSTRB;
output  [0:0] out_C_TLAST;
input  [3:0] empty;

reg ap_idle;
reg[31:0] empty_31_o;
reg empty_31_o_ap_vld;
reg[3:0] empty_32_o;
reg empty_32_o_ap_vld;
reg[0:0] empty_33_o;
reg empty_33_o_ap_vld;
reg out_C_TVALID;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln53_fu_132_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    out_C_TDATA_blk_n;
wire    ap_block_pp0_stage0_grp1;
reg    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln53_fu_144_p1;
wire    ap_block_pp0_stage0;
reg   [5:0] col_fu_68;
wire   [5:0] add_ln53_fu_138_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_col_8;
wire   [31:0] bitcast_ln69_fu_154_p1;
reg    ap_block_pp0_stage0_01001;
wire    ap_block_pp0_stage0_01001_grp0;
reg    ap_block_pp0_stage0_subdone_grp0_done_reg;
wire    ap_block_pp0_stage0_subdone_grp0;
wire    ap_block_pp0_stage0_11001_grp0;
reg    ap_block_pp0_stage0_01001_grp1;
reg    ap_block_pp0_stage0_11001_grp1;
reg    output_C_30_ce0_local;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 col_fu_68 = 6'd0;
#0 ap_block_pp0_stage0_subdone_grp0_done_reg = 1'b0;
#0 ap_done_reg = 1'b0;
end

matrixmul_32_opt_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready_sig),
    .ap_done(ap_done_sig),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_block_pp0_stage0_subdone_grp0_done_reg <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_block_pp0_stage0_subdone_grp0_done_reg <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone_grp0)) begin
            ap_block_pp0_stage0_subdone_grp0_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln53_fu_132_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            col_fu_68 <= add_ln53_fu_138_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            col_fu_68 <= 6'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end

always @ (*) begin
    if (((icmp_ln53_fu_132_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_col_8 = 6'd0;
    end else begin
        ap_sig_allocacmp_col_8 = col_fu_68;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_31_o = bitcast_ln69_fu_154_p1;
    end else begin
        empty_31_o = empty_31_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_31_o_ap_vld = 1'b1;
    end else begin
        empty_31_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_01001_grp0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_32_o = 4'd15;
    end else begin
        empty_32_o = empty_32_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001_grp0) & (1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_32_o_ap_vld = 1'b1;
    end else begin
        empty_32_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_01001_grp0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_33_o = 1'd0;
    end else begin
        empty_33_o = empty_33_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001_grp0) & (1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_33_o_ap_vld = 1'b1;
    end else begin
        empty_33_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_grp1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        out_C_TDATA_blk_n = out_C_TREADY;
    end else begin
        out_C_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001_grp1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        out_C_TVALID = 1'b1;
    end else begin
        out_C_TVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_C_30_ce0_local = 1'b1;
    end else begin
        output_C_30_ce0_local = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln53_fu_138_p2 = (ap_sig_allocacmp_col_8 + 6'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((out_C_TREADY == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1));
end

assign ap_block_pp0_stage0_01001_grp0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001_grp1 = ((out_C_TREADY == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((out_C_TREADY == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1));
end

assign ap_block_pp0_stage0_11001_grp0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001_grp1 = ((out_C_TREADY == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1));
end

assign ap_block_pp0_stage0_grp1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((out_C_TREADY == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1));
end

assign ap_block_pp0_stage0_subdone_grp0 = ~(1'b1 == 1'b1);

assign ap_done = ap_done_sig;

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign ap_ready = ap_ready_sig;

assign bitcast_ln69_fu_154_p1 = output_C_30_q0;

assign icmp_ln53_fu_132_p2 = ((ap_sig_allocacmp_col_8 == 6'd32) ? 1'b1 : 1'b0);

assign out_C_TDATA = empty_31_i;

assign out_C_TKEEP = empty_32_i;

assign out_C_TLAST = empty_33_i;

assign out_C_TSTRB = empty;

assign output_C_30_address0 = zext_ln53_fu_144_p1;

assign output_C_30_ce0 = output_C_30_ce0_local;

assign zext_ln53_fu_144_p1 = ap_sig_allocacmp_col_8;

endmodule //matrixmul_32_opt_matrixmul_32_opt_Pipeline_loop_output_C2123
