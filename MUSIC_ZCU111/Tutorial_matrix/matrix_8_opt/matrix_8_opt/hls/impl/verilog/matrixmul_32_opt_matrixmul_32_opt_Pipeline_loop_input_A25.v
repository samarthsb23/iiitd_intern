// ==============================================================
// Generated by Vitis HLS v2024.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module matrixmul_32_opt_matrixmul_32_opt_Pipeline_loop_input_A25 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        in_A_TVALID,
        in_A_TDATA,
        in_A_TREADY,
        in_A_TKEEP,
        in_A_TSTRB,
        in_A_TLAST,
        empty_214_i,
        empty_214_o,
        empty_214_o_ap_vld,
        empty_215,
        empty_215_ap_vld,
        empty_216,
        empty_216_ap_vld,
        empty,
        empty_ap_vld,
        input_A_356_out,
        input_A_356_out_ap_vld,
        input_A_355_out,
        input_A_355_out_ap_vld,
        input_A_354_out,
        input_A_354_out_ap_vld,
        input_A_353_out,
        input_A_353_out_ap_vld,
        input_A_352_out,
        input_A_352_out_ap_vld,
        input_A_351_out,
        input_A_351_out_ap_vld,
        input_A_350_out,
        input_A_350_out_ap_vld,
        input_A_349_out,
        input_A_349_out_ap_vld,
        input_A_348_out,
        input_A_348_out_ap_vld,
        input_A_347_out,
        input_A_347_out_ap_vld,
        input_A_346_out,
        input_A_346_out_ap_vld,
        input_A_345_out,
        input_A_345_out_ap_vld,
        input_A_344_out,
        input_A_344_out_ap_vld,
        input_A_343_out,
        input_A_343_out_ap_vld,
        input_A_342_out,
        input_A_342_out_ap_vld,
        input_A_341_out,
        input_A_341_out_ap_vld,
        input_A_340_out,
        input_A_340_out_ap_vld,
        input_A_339_out,
        input_A_339_out_ap_vld,
        input_A_338_out,
        input_A_338_out_ap_vld,
        input_A_337_out,
        input_A_337_out_ap_vld,
        input_A_336_out,
        input_A_336_out_ap_vld,
        input_A_335_out,
        input_A_335_out_ap_vld,
        input_A_334_out,
        input_A_334_out_ap_vld,
        input_A_333_out,
        input_A_333_out_ap_vld,
        input_A_332_out,
        input_A_332_out_ap_vld,
        input_A_331_out,
        input_A_331_out_ap_vld,
        input_A_330_out,
        input_A_330_out_ap_vld,
        input_A_329_out,
        input_A_329_out_ap_vld,
        input_A_328_out,
        input_A_328_out_ap_vld,
        input_A_327_out,
        input_A_327_out_ap_vld,
        input_A_326_out,
        input_A_326_out_ap_vld,
        input_A_325_out,
        input_A_325_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   in_A_TVALID;
input  [31:0] in_A_TDATA;
output   in_A_TREADY;
input  [3:0] in_A_TKEEP;
input  [3:0] in_A_TSTRB;
input  [0:0] in_A_TLAST;
input  [31:0] empty_214_i;
output  [31:0] empty_214_o;
output   empty_214_o_ap_vld;
output  [3:0] empty_215;
output   empty_215_ap_vld;
output  [3:0] empty_216;
output   empty_216_ap_vld;
output  [0:0] empty;
output   empty_ap_vld;
output  [31:0] input_A_356_out;
output   input_A_356_out_ap_vld;
output  [31:0] input_A_355_out;
output   input_A_355_out_ap_vld;
output  [31:0] input_A_354_out;
output   input_A_354_out_ap_vld;
output  [31:0] input_A_353_out;
output   input_A_353_out_ap_vld;
output  [31:0] input_A_352_out;
output   input_A_352_out_ap_vld;
output  [31:0] input_A_351_out;
output   input_A_351_out_ap_vld;
output  [31:0] input_A_350_out;
output   input_A_350_out_ap_vld;
output  [31:0] input_A_349_out;
output   input_A_349_out_ap_vld;
output  [31:0] input_A_348_out;
output   input_A_348_out_ap_vld;
output  [31:0] input_A_347_out;
output   input_A_347_out_ap_vld;
output  [31:0] input_A_346_out;
output   input_A_346_out_ap_vld;
output  [31:0] input_A_345_out;
output   input_A_345_out_ap_vld;
output  [31:0] input_A_344_out;
output   input_A_344_out_ap_vld;
output  [31:0] input_A_343_out;
output   input_A_343_out_ap_vld;
output  [31:0] input_A_342_out;
output   input_A_342_out_ap_vld;
output  [31:0] input_A_341_out;
output   input_A_341_out_ap_vld;
output  [31:0] input_A_340_out;
output   input_A_340_out_ap_vld;
output  [31:0] input_A_339_out;
output   input_A_339_out_ap_vld;
output  [31:0] input_A_338_out;
output   input_A_338_out_ap_vld;
output  [31:0] input_A_337_out;
output   input_A_337_out_ap_vld;
output  [31:0] input_A_336_out;
output   input_A_336_out_ap_vld;
output  [31:0] input_A_335_out;
output   input_A_335_out_ap_vld;
output  [31:0] input_A_334_out;
output   input_A_334_out_ap_vld;
output  [31:0] input_A_333_out;
output   input_A_333_out_ap_vld;
output  [31:0] input_A_332_out;
output   input_A_332_out_ap_vld;
output  [31:0] input_A_331_out;
output   input_A_331_out_ap_vld;
output  [31:0] input_A_330_out;
output   input_A_330_out_ap_vld;
output  [31:0] input_A_329_out;
output   input_A_329_out_ap_vld;
output  [31:0] input_A_328_out;
output   input_A_328_out_ap_vld;
output  [31:0] input_A_327_out;
output   input_A_327_out_ap_vld;
output  [31:0] input_A_326_out;
output   input_A_326_out_ap_vld;
output  [31:0] input_A_325_out;
output   input_A_325_out_ap_vld;

reg ap_idle;
reg in_A_TREADY;
reg[31:0] empty_214_o;
reg empty_214_o_ap_vld;
reg empty_215_ap_vld;
reg empty_216_ap_vld;
reg empty_ap_vld;
reg input_A_356_out_ap_vld;
reg input_A_355_out_ap_vld;
reg input_A_354_out_ap_vld;
reg input_A_353_out_ap_vld;
reg input_A_352_out_ap_vld;
reg input_A_351_out_ap_vld;
reg input_A_350_out_ap_vld;
reg input_A_349_out_ap_vld;
reg input_A_348_out_ap_vld;
reg input_A_347_out_ap_vld;
reg input_A_346_out_ap_vld;
reg input_A_345_out_ap_vld;
reg input_A_344_out_ap_vld;
reg input_A_343_out_ap_vld;
reg input_A_342_out_ap_vld;
reg input_A_341_out_ap_vld;
reg input_A_340_out_ap_vld;
reg input_A_339_out_ap_vld;
reg input_A_338_out_ap_vld;
reg input_A_337_out_ap_vld;
reg input_A_336_out_ap_vld;
reg input_A_335_out_ap_vld;
reg input_A_334_out_ap_vld;
reg input_A_333_out_ap_vld;
reg input_A_332_out_ap_vld;
reg input_A_331_out_ap_vld;
reg input_A_330_out_ap_vld;
reg input_A_329_out_ap_vld;
reg input_A_328_out_ap_vld;
reg input_A_327_out_ap_vld;
reg input_A_326_out_ap_vld;
reg input_A_325_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln19_fu_566_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    in_A_TDATA_blk_n;
wire    ap_block_pp0_stage0_grp1;
wire   [4:0] trunc_ln19_fu_578_p1;
reg   [4:0] trunc_ln19_reg_1121;
reg    ap_block_pp0_stage0_11001;
reg    ap_block_pp0_stage0_11001_grp1;
reg   [5:0] col_5_fu_184;
wire   [5:0] add_ln19_fu_572_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_col;
wire    ap_block_pp0_stage0;
reg   [31:0] input_A_fu_188;
wire   [31:0] local_stream_data_fu_627_p1;
wire    ap_block_pp0_stage0_11001_grp0;
reg    ap_block_pp0_stage0_subdone_grp0_done_reg;
wire    ap_block_pp0_stage0_subdone_grp0;
wire    ap_block_pp0_stage0_grp0;
reg   [31:0] input_A_1_fu_192;
reg   [31:0] input_A_2_fu_196;
reg   [31:0] input_A_3_fu_200;
reg   [31:0] input_A_4_fu_204;
reg   [31:0] input_A_5_fu_208;
reg   [31:0] input_A_6_fu_212;
reg   [31:0] input_A_7_fu_216;
reg   [31:0] input_A_8_fu_220;
reg   [31:0] input_A_9_fu_224;
reg   [31:0] input_A_10_fu_228;
reg   [31:0] input_A_11_fu_232;
reg   [31:0] input_A_12_fu_236;
reg   [31:0] input_A_13_fu_240;
reg   [31:0] input_A_14_fu_244;
reg   [31:0] input_A_15_fu_248;
reg   [31:0] input_A_16_fu_252;
reg   [31:0] input_A_17_fu_256;
reg   [31:0] input_A_18_fu_260;
reg   [31:0] input_A_19_fu_264;
reg   [31:0] input_A_20_fu_268;
reg   [31:0] input_A_21_fu_272;
reg   [31:0] input_A_22_fu_276;
reg   [31:0] input_A_23_fu_280;
reg   [31:0] input_A_24_fu_284;
reg   [31:0] input_A_25_fu_288;
reg   [31:0] input_A_26_fu_292;
reg   [31:0] input_A_27_fu_296;
reg   [31:0] input_A_28_fu_300;
reg   [31:0] input_A_29_fu_304;
reg   [31:0] input_A_30_fu_308;
reg   [31:0] input_A_31_fu_312;
wire    ap_block_pp0_stage0_01001_grp0;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
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
#0 col_5_fu_184 = 6'd0;
#0 input_A_fu_188 = 32'd0;
#0 ap_block_pp0_stage0_subdone_grp0_done_reg = 1'b0;
#0 input_A_1_fu_192 = 32'd0;
#0 input_A_2_fu_196 = 32'd0;
#0 input_A_3_fu_200 = 32'd0;
#0 input_A_4_fu_204 = 32'd0;
#0 input_A_5_fu_208 = 32'd0;
#0 input_A_6_fu_212 = 32'd0;
#0 input_A_7_fu_216 = 32'd0;
#0 input_A_8_fu_220 = 32'd0;
#0 input_A_9_fu_224 = 32'd0;
#0 input_A_10_fu_228 = 32'd0;
#0 input_A_11_fu_232 = 32'd0;
#0 input_A_12_fu_236 = 32'd0;
#0 input_A_13_fu_240 = 32'd0;
#0 input_A_14_fu_244 = 32'd0;
#0 input_A_15_fu_248 = 32'd0;
#0 input_A_16_fu_252 = 32'd0;
#0 input_A_17_fu_256 = 32'd0;
#0 input_A_18_fu_260 = 32'd0;
#0 input_A_19_fu_264 = 32'd0;
#0 input_A_20_fu_268 = 32'd0;
#0 input_A_21_fu_272 = 32'd0;
#0 input_A_22_fu_276 = 32'd0;
#0 input_A_23_fu_280 = 32'd0;
#0 input_A_24_fu_284 = 32'd0;
#0 input_A_25_fu_288 = 32'd0;
#0 input_A_26_fu_292 = 32'd0;
#0 input_A_27_fu_296 = 32'd0;
#0 input_A_28_fu_300 = 32'd0;
#0 input_A_29_fu_304 = 32'd0;
#0 input_A_30_fu_308 = 32'd0;
#0 input_A_31_fu_312 = 32'd0;
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln19_fu_566_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            col_5_fu_184 <= add_ln19_fu_572_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            col_5_fu_184 <= 6'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln19_reg_1121 == 5'd10))) begin
        input_A_10_fu_228 <= local_stream_data_fu_627_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln19_reg_1121 == 5'd11))) begin
        input_A_11_fu_232 <= local_stream_data_fu_627_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln19_reg_1121 == 5'd12))) begin
        input_A_12_fu_236 <= local_stream_data_fu_627_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln19_reg_1121 == 5'd13))) begin
        input_A_13_fu_240 <= local_stream_data_fu_627_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln19_reg_1121 == 5'd14))) begin
        input_A_14_fu_244 <= local_stream_data_fu_627_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln19_reg_1121 == 5'd15))) begin
        input_A_15_fu_248 <= local_stream_data_fu_627_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln19_reg_1121 == 5'd16))) begin
        input_A_16_fu_252 <= local_stream_data_fu_627_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln19_reg_1121 == 5'd17))) begin
        input_A_17_fu_256 <= local_stream_data_fu_627_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln19_reg_1121 == 5'd18))) begin
        input_A_18_fu_260 <= local_stream_data_fu_627_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln19_reg_1121 == 5'd19))) begin
        input_A_19_fu_264 <= local_stream_data_fu_627_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln19_reg_1121 == 5'd1))) begin
        input_A_1_fu_192 <= local_stream_data_fu_627_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln19_reg_1121 == 5'd20))) begin
        input_A_20_fu_268 <= local_stream_data_fu_627_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln19_reg_1121 == 5'd21))) begin
        input_A_21_fu_272 <= local_stream_data_fu_627_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln19_reg_1121 == 5'd22))) begin
        input_A_22_fu_276 <= local_stream_data_fu_627_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln19_reg_1121 == 5'd23))) begin
        input_A_23_fu_280 <= local_stream_data_fu_627_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln19_reg_1121 == 5'd24))) begin
        input_A_24_fu_284 <= local_stream_data_fu_627_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln19_reg_1121 == 5'd25))) begin
        input_A_25_fu_288 <= local_stream_data_fu_627_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln19_reg_1121 == 5'd26))) begin
        input_A_26_fu_292 <= local_stream_data_fu_627_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln19_reg_1121 == 5'd27))) begin
        input_A_27_fu_296 <= local_stream_data_fu_627_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln19_reg_1121 == 5'd28))) begin
        input_A_28_fu_300 <= local_stream_data_fu_627_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln19_reg_1121 == 5'd29))) begin
        input_A_29_fu_304 <= local_stream_data_fu_627_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln19_reg_1121 == 5'd2))) begin
        input_A_2_fu_196 <= local_stream_data_fu_627_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln19_reg_1121 == 5'd30))) begin
        input_A_30_fu_308 <= local_stream_data_fu_627_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln19_reg_1121 == 5'd31))) begin
        input_A_31_fu_312 <= local_stream_data_fu_627_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln19_reg_1121 == 5'd3))) begin
        input_A_3_fu_200 <= local_stream_data_fu_627_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln19_reg_1121 == 5'd4))) begin
        input_A_4_fu_204 <= local_stream_data_fu_627_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln19_reg_1121 == 5'd5))) begin
        input_A_5_fu_208 <= local_stream_data_fu_627_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln19_reg_1121 == 5'd6))) begin
        input_A_6_fu_212 <= local_stream_data_fu_627_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln19_reg_1121 == 5'd7))) begin
        input_A_7_fu_216 <= local_stream_data_fu_627_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln19_reg_1121 == 5'd8))) begin
        input_A_8_fu_220 <= local_stream_data_fu_627_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln19_reg_1121 == 5'd9))) begin
        input_A_9_fu_224 <= local_stream_data_fu_627_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln19_reg_1121 == 5'd0))) begin
        input_A_fu_188 <= local_stream_data_fu_627_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        trunc_ln19_reg_1121 <= trunc_ln19_fu_578_p1;
    end
end

always @ (*) begin
    if (((icmp_ln19_fu_566_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_col = 6'd0;
    end else begin
        ap_sig_allocacmp_col = col_5_fu_184;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_grp1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_214_o = in_A_TDATA;
    end else begin
        empty_214_o = empty_214_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001_grp1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_214_o_ap_vld = 1'b1;
    end else begin
        empty_214_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001_grp1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_215_ap_vld = 1'b1;
    end else begin
        empty_215_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001_grp1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_216_ap_vld = 1'b1;
    end else begin
        empty_216_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001_grp1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_ap_vld = 1'b1;
    end else begin
        empty_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_grp1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in_A_TDATA_blk_n = in_A_TVALID;
    end else begin
        in_A_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001_grp1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in_A_TREADY = 1'b1;
    end else begin
        in_A_TREADY = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln19_fu_566_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_A_325_out_ap_vld = 1'b1;
    end else begin
        input_A_325_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln19_fu_566_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_A_326_out_ap_vld = 1'b1;
    end else begin
        input_A_326_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln19_fu_566_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_A_327_out_ap_vld = 1'b1;
    end else begin
        input_A_327_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln19_fu_566_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_A_328_out_ap_vld = 1'b1;
    end else begin
        input_A_328_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln19_fu_566_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_A_329_out_ap_vld = 1'b1;
    end else begin
        input_A_329_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln19_fu_566_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_A_330_out_ap_vld = 1'b1;
    end else begin
        input_A_330_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln19_fu_566_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_A_331_out_ap_vld = 1'b1;
    end else begin
        input_A_331_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln19_fu_566_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_A_332_out_ap_vld = 1'b1;
    end else begin
        input_A_332_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln19_fu_566_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_A_333_out_ap_vld = 1'b1;
    end else begin
        input_A_333_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln19_fu_566_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_A_334_out_ap_vld = 1'b1;
    end else begin
        input_A_334_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln19_fu_566_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_A_335_out_ap_vld = 1'b1;
    end else begin
        input_A_335_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln19_fu_566_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_A_336_out_ap_vld = 1'b1;
    end else begin
        input_A_336_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln19_fu_566_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_A_337_out_ap_vld = 1'b1;
    end else begin
        input_A_337_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln19_fu_566_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_A_338_out_ap_vld = 1'b1;
    end else begin
        input_A_338_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln19_fu_566_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_A_339_out_ap_vld = 1'b1;
    end else begin
        input_A_339_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln19_fu_566_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_A_340_out_ap_vld = 1'b1;
    end else begin
        input_A_340_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln19_fu_566_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_A_341_out_ap_vld = 1'b1;
    end else begin
        input_A_341_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln19_fu_566_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_A_342_out_ap_vld = 1'b1;
    end else begin
        input_A_342_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln19_fu_566_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_A_343_out_ap_vld = 1'b1;
    end else begin
        input_A_343_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln19_fu_566_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_A_344_out_ap_vld = 1'b1;
    end else begin
        input_A_344_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln19_fu_566_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_A_345_out_ap_vld = 1'b1;
    end else begin
        input_A_345_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln19_fu_566_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_A_346_out_ap_vld = 1'b1;
    end else begin
        input_A_346_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln19_fu_566_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_A_347_out_ap_vld = 1'b1;
    end else begin
        input_A_347_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln19_fu_566_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_A_348_out_ap_vld = 1'b1;
    end else begin
        input_A_348_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln19_fu_566_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_A_349_out_ap_vld = 1'b1;
    end else begin
        input_A_349_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln19_fu_566_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_A_350_out_ap_vld = 1'b1;
    end else begin
        input_A_350_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln19_fu_566_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_A_351_out_ap_vld = 1'b1;
    end else begin
        input_A_351_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln19_fu_566_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_A_352_out_ap_vld = 1'b1;
    end else begin
        input_A_352_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln19_fu_566_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_A_353_out_ap_vld = 1'b1;
    end else begin
        input_A_353_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln19_fu_566_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_A_354_out_ap_vld = 1'b1;
    end else begin
        input_A_354_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln19_fu_566_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_A_355_out_ap_vld = 1'b1;
    end else begin
        input_A_355_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln19_fu_566_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_A_356_out_ap_vld = 1'b1;
    end else begin
        input_A_356_out_ap_vld = 1'b0;
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

assign add_ln19_fu_572_p2 = (ap_sig_allocacmp_col + 6'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001_grp0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((in_A_TVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_pp0_stage0_11001_grp0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001_grp1 = ((in_A_TVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_pp0_stage0_grp0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_grp1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((in_A_TVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_pp0_stage0_subdone_grp0 = ~(1'b1 == 1'b1);

assign ap_done = ap_done_sig;

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign ap_ready = ap_ready_sig;

assign empty = in_A_TLAST;

assign empty_215 = in_A_TKEEP;

assign empty_216 = in_A_TSTRB;

assign icmp_ln19_fu_566_p2 = ((ap_sig_allocacmp_col == 6'd32) ? 1'b1 : 1'b0);

assign input_A_325_out = input_A_fu_188;

assign input_A_326_out = input_A_1_fu_192;

assign input_A_327_out = input_A_2_fu_196;

assign input_A_328_out = input_A_3_fu_200;

assign input_A_329_out = input_A_4_fu_204;

assign input_A_330_out = input_A_5_fu_208;

assign input_A_331_out = input_A_6_fu_212;

assign input_A_332_out = input_A_7_fu_216;

assign input_A_333_out = input_A_8_fu_220;

assign input_A_334_out = input_A_9_fu_224;

assign input_A_335_out = input_A_10_fu_228;

assign input_A_336_out = input_A_11_fu_232;

assign input_A_337_out = input_A_12_fu_236;

assign input_A_338_out = input_A_13_fu_240;

assign input_A_339_out = input_A_14_fu_244;

assign input_A_340_out = input_A_15_fu_248;

assign input_A_341_out = input_A_16_fu_252;

assign input_A_342_out = input_A_17_fu_256;

assign input_A_343_out = input_A_18_fu_260;

assign input_A_344_out = input_A_19_fu_264;

assign input_A_345_out = input_A_20_fu_268;

assign input_A_346_out = input_A_21_fu_272;

assign input_A_347_out = input_A_22_fu_276;

assign input_A_348_out = input_A_23_fu_280;

assign input_A_349_out = input_A_24_fu_284;

assign input_A_350_out = input_A_25_fu_288;

assign input_A_351_out = input_A_26_fu_292;

assign input_A_352_out = input_A_27_fu_296;

assign input_A_353_out = input_A_28_fu_300;

assign input_A_354_out = input_A_29_fu_304;

assign input_A_355_out = input_A_30_fu_308;

assign input_A_356_out = input_A_31_fu_312;

assign local_stream_data_fu_627_p1 = empty_214_i;

assign trunc_ln19_fu_578_p1 = ap_sig_allocacmp_col[4:0];

endmodule //matrixmul_32_opt_matrixmul_32_opt_Pipeline_loop_input_A25
