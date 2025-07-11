// ==============================================================
// Generated by Vitis HLS v2024.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module matrixmul_3_matrixmul_3_Pipeline_loop_output_C1_loop_output_C2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        out_C_TREADY,
        output_C_address0,
        output_C_ce0,
        output_C_q0,
        out_C_TDATA,
        out_C_TVALID
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   out_C_TREADY;
output  [5:0] output_C_address0;
output   output_C_ce0;
input  [31:0] output_C_q0;
output  [63:0] out_C_TDATA;
output   out_C_TVALID;

reg ap_idle;
reg out_C_TVALID;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln181_fu_102_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    out_C_TDATA_blk_n;
wire    ap_block_pp0_stage0_grp1;
reg    ap_block_pp0_stage0_11001;
wire   [5:0] add_ln185_fu_175_p2;
reg   [5:0] add_ln185_reg_250;
reg    ap_block_pp0_stage0_11001_grp1;
wire   [0:0] local_stream_last_fu_187_p2;
reg   [0:0] local_stream_last_reg_255;
reg   [0:0] local_stream_last_reg_255_pp0_iter2_reg;
wire   [63:0] zext_ln185_1_fu_209_p1;
reg   [3:0] col_fu_52;
wire   [3:0] add_ln182_fu_193_p2;
wire    ap_loop_init;
reg   [3:0] row_fu_56;
wire   [3:0] select_ln181_fu_145_p3;
reg   [6:0] indvar_flatten20_fu_60;
wire   [6:0] add_ln181_1_fu_108_p2;
reg   [6:0] ap_sig_allocacmp_indvar_flatten20_load;
wire    ap_block_pp0_stage0;
reg    ap_block_pp0_stage0_01001_grp1;
reg    output_C_ce0_local;
wire   [0:0] icmp_ln182_fu_131_p2;
wire   [3:0] add_ln181_fu_125_p2;
wire   [2:0] trunc_ln185_fu_153_p1;
wire   [3:0] select_ln142_fu_137_p3;
wire   [5:0] tmp_2_fu_157_p3;
wire   [5:0] zext_ln185_fu_171_p1;
wire   [0:0] cmp68_fu_165_p2;
wire   [0:0] icmp_ln187_fu_181_p2;
wire   [32:0] tmp_fu_213_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
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
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 col_fu_52 = 4'd0;
#0 row_fu_56 = 4'd0;
#0 indvar_flatten20_fu_60 = 7'd0;
#0 ap_done_reg = 1'b0;
end

matrixmul_3_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
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
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001_grp1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            col_fu_52 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            col_fu_52 <= add_ln182_fu_193_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln181_fu_102_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten20_fu_60 <= add_ln181_1_fu_108_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten20_fu_60 <= 7'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001_grp1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            row_fu_56 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            row_fu_56 <= select_ln181_fu_145_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001_grp1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln185_reg_250 <= add_ln185_fu_175_p2;
        local_stream_last_reg_255 <= local_stream_last_fu_187_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001_grp1)) begin
        local_stream_last_reg_255_pp0_iter2_reg <= local_stream_last_reg_255;
    end
end

always @ (*) begin
    if (((icmp_ln181_fu_102_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten20_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten20_load = indvar_flatten20_fu_60;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_grp1) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        out_C_TDATA_blk_n = out_C_TREADY;
    end else begin
        out_C_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001_grp1) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        out_C_TVALID = 1'b1;
    end else begin
        out_C_TVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001_grp1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        output_C_ce0_local = 1'b1;
    end else begin
        output_C_ce0_local = 1'b0;
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

assign add_ln181_1_fu_108_p2 = (ap_sig_allocacmp_indvar_flatten20_load + 7'd1);

assign add_ln181_fu_125_p2 = (row_fu_56 + 4'd1);

assign add_ln182_fu_193_p2 = (select_ln142_fu_137_p3 + 4'd1);

assign add_ln185_fu_175_p2 = (tmp_2_fu_157_p3 + zext_ln185_fu_171_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001_grp1 = ((out_C_TREADY == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((out_C_TREADY == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_grp1 = ((out_C_TREADY == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b1));
end

assign ap_block_pp0_stage0_grp1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((out_C_TREADY == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b1));
end

assign ap_done = ap_done_sig;

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign ap_ready = ap_ready_sig;

assign cmp68_fu_165_p2 = ((select_ln181_fu_145_p3 == 4'd7) ? 1'b1 : 1'b0);

assign icmp_ln181_fu_102_p2 = ((ap_sig_allocacmp_indvar_flatten20_load == 7'd64) ? 1'b1 : 1'b0);

assign icmp_ln182_fu_131_p2 = ((col_fu_52 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln187_fu_181_p2 = ((select_ln142_fu_137_p3 == 4'd7) ? 1'b1 : 1'b0);

assign local_stream_last_fu_187_p2 = (icmp_ln187_fu_181_p2 & cmp68_fu_165_p2);

assign out_C_TDATA = tmp_fu_213_p3;

assign output_C_address0 = zext_ln185_1_fu_209_p1;

assign output_C_ce0 = output_C_ce0_local;

assign select_ln142_fu_137_p3 = ((icmp_ln182_fu_131_p2[0:0] == 1'b1) ? 4'd0 : col_fu_52);

assign select_ln181_fu_145_p3 = ((icmp_ln182_fu_131_p2[0:0] == 1'b1) ? add_ln181_fu_125_p2 : row_fu_56);

assign tmp_2_fu_157_p3 = {{trunc_ln185_fu_153_p1}, {3'd0}};

assign tmp_fu_213_p3 = {{local_stream_last_reg_255_pp0_iter2_reg}, {output_C_q0}};

assign trunc_ln185_fu_153_p1 = select_ln181_fu_145_p3[2:0];

assign zext_ln185_1_fu_209_p1 = add_ln185_reg_250;

assign zext_ln185_fu_171_p1 = select_ln142_fu_137_p3;

endmodule //matrixmul_3_matrixmul_3_Pipeline_loop_output_C1_loop_output_C2
