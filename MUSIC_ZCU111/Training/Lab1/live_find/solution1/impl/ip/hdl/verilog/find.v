// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="find,hls_ip_2019_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.473000,HLS_SYN_LAT=65,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=47,HLS_SYN_LUT=116,HLS_VERSION=2019_2}" *)

module find (
        ap_clk,
        ap_rst_n,
        val_r_TDATA,
        val_r_TVALID,
        val_r_TREADY,
        in_vec_TDATA,
        in_vec_TVALID,
        in_vec_TREADY,
        in_vec_TLAST,
        out_vec_TDATA,
        out_vec_TVALID,
        out_vec_TREADY,
        out_vec_TLAST
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst_n;
input  [7:0] val_r_TDATA;
input   val_r_TVALID;
output   val_r_TREADY;
input  [31:0] in_vec_TDATA;
input   in_vec_TVALID;
output   in_vec_TREADY;
input  [0:0] in_vec_TLAST;
output  [31:0] out_vec_TDATA;
output   out_vec_TVALID;
input   out_vec_TREADY;
output  [0:0] out_vec_TLAST;

reg val_r_TREADY;
reg in_vec_TREADY;

 reg    ap_rst_n_inv;
reg    val_r_TDATA_blk_n;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    in_vec_TDATA_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln16_fu_87_p2;
reg    out_vec_TDATA_blk_n;
wire    ap_CS_fsm_state3;
wire  signed [31:0] sext_ln9_fu_83_p1;
reg  signed [31:0] sext_ln9_reg_120;
wire   [5:0] i_fu_93_p2;
reg   [5:0] i_reg_128;
wire    regslice_both_out_vec_V_data_V_U_apdone_blk;
reg    ap_block_state2;
reg    ap_block_state2_io;
reg   [5:0] i_0_reg_72;
wire   [0:0] icmp_ln879_fu_103_p2;
reg   [2:0] ap_NS_fsm;
wire    regslice_both_val_r_U_apdone_blk;
wire   [7:0] val_r_TDATA_int;
wire    val_r_TVALID_int;
reg    val_r_TREADY_int;
wire    regslice_both_val_r_U_ack_in;
wire    regslice_both_in_vec_V_data_V_U_apdone_blk;
wire   [31:0] in_vec_TDATA_int;
wire    in_vec_TVALID_int;
reg    in_vec_TREADY_int;
wire    regslice_both_in_vec_V_data_V_U_ack_in;
wire    regslice_both_in_vec_V_last_V_U_apdone_blk;
wire   [0:0] in_vec_TLAST_int;
wire    regslice_both_in_vec_V_last_V_U_vld_out;
wire    regslice_both_in_vec_V_last_V_U_ack_in;
wire   [31:0] out_vec_TDATA_int;
reg    out_vec_TVALID_int;
wire    out_vec_TREADY_int;
wire    regslice_both_out_vec_V_data_V_U_vld_out;
wire    regslice_both_out_vec_V_last_V_U_apdone_blk;
wire   [0:0] out_vec_TLAST_int;
wire    regslice_both_out_vec_V_last_V_U_ack_in_dummy;
wire    regslice_both_out_vec_V_last_V_U_vld_out;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
end

regslice_both #(
    .DataWidth( 8 ))
regslice_both_val_r_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(val_r_TDATA),
    .vld_in(val_r_TVALID),
    .ack_in(regslice_both_val_r_U_ack_in),
    .data_out(val_r_TDATA_int),
    .vld_out(val_r_TVALID_int),
    .ack_out(val_r_TREADY_int),
    .apdone_blk(regslice_both_val_r_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 32 ))
regslice_both_in_vec_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(in_vec_TDATA),
    .vld_in(in_vec_TVALID),
    .ack_in(regslice_both_in_vec_V_data_V_U_ack_in),
    .data_out(in_vec_TDATA_int),
    .vld_out(in_vec_TVALID_int),
    .ack_out(in_vec_TREADY_int),
    .apdone_blk(regslice_both_in_vec_V_data_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 1 ))
regslice_both_in_vec_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(in_vec_TLAST),
    .vld_in(in_vec_TVALID),
    .ack_in(regslice_both_in_vec_V_last_V_U_ack_in),
    .data_out(in_vec_TLAST_int),
    .vld_out(regslice_both_in_vec_V_last_V_U_vld_out),
    .ack_out(in_vec_TREADY_int),
    .apdone_blk(regslice_both_in_vec_V_last_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 32 ))
regslice_both_out_vec_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(out_vec_TDATA_int),
    .vld_in(out_vec_TVALID_int),
    .ack_in(out_vec_TREADY_int),
    .data_out(out_vec_TDATA),
    .vld_out(regslice_both_out_vec_V_data_V_U_vld_out),
    .ack_out(out_vec_TREADY),
    .apdone_blk(regslice_both_out_vec_V_data_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 1 ))
regslice_both_out_vec_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(out_vec_TLAST_int),
    .vld_in(out_vec_TVALID_int),
    .ack_in(regslice_both_out_vec_V_last_V_U_ack_in_dummy),
    .data_out(out_vec_TLAST),
    .vld_out(regslice_both_out_vec_V_last_V_U_vld_out),
    .ack_out(out_vec_TREADY),
    .apdone_blk(regslice_both_out_vec_V_last_V_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (out_vec_TREADY_int == 1'b1))) begin
        i_0_reg_72 <= i_reg_128;
    end else if (((1'b1 == ap_CS_fsm_state1) & (val_r_TVALID_int == 1'b1))) begin
        i_0_reg_72 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((1'b1 == ap_block_state2_io) | (regslice_both_out_vec_V_data_V_U_apdone_blk == 1'b1) | ((icmp_ln16_fu_87_p2 == 1'd0) & (in_vec_TVALID_int == 1'b0))) & (1'b1 == ap_CS_fsm_state2))) begin
        i_reg_128 <= i_fu_93_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (val_r_TVALID_int == 1'b1))) begin
        sext_ln9_reg_120 <= sext_ln9_fu_83_p1;
    end
end

always @ (*) begin
    if (((icmp_ln16_fu_87_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        in_vec_TDATA_blk_n = in_vec_TVALID_int;
    end else begin
        in_vec_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((regslice_both_in_vec_V_data_V_U_ack_in == 1'b1) & (in_vec_TVALID == 1'b1))) begin
        in_vec_TREADY = 1'b1;
    end else begin
        in_vec_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((~((1'b1 == ap_block_state2_io) | (regslice_both_out_vec_V_data_V_U_apdone_blk == 1'b1) | ((icmp_ln16_fu_87_p2 == 1'd0) & (in_vec_TVALID_int == 1'b0))) & (icmp_ln16_fu_87_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        in_vec_TREADY_int = 1'b1;
    end else begin
        in_vec_TREADY_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((icmp_ln16_fu_87_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        out_vec_TDATA_blk_n = out_vec_TREADY_int;
    end else begin
        out_vec_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((1'b1 == ap_block_state2_io) | (regslice_both_out_vec_V_data_V_U_apdone_blk == 1'b1) | ((icmp_ln16_fu_87_p2 == 1'd0) & (in_vec_TVALID_int == 1'b0))) & (icmp_ln16_fu_87_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        out_vec_TVALID_int = 1'b1;
    end else begin
        out_vec_TVALID_int = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        val_r_TDATA_blk_n = val_r_TVALID_int;
    end else begin
        val_r_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((regslice_both_val_r_U_ack_in == 1'b1) & (val_r_TVALID == 1'b1))) begin
        val_r_TREADY = 1'b1;
    end else begin
        val_r_TREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (val_r_TVALID_int == 1'b1))) begin
        val_r_TREADY_int = 1'b1;
    end else begin
        val_r_TREADY_int = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (val_r_TVALID_int == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if ((~((1'b1 == ap_block_state2_io) | (regslice_both_out_vec_V_data_V_U_apdone_blk == 1'b1) | ((icmp_ln16_fu_87_p2 == 1'd0) & (in_vec_TVALID_int == 1'b0))) & (icmp_ln16_fu_87_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if ((~((1'b1 == ap_block_state2_io) | (regslice_both_out_vec_V_data_V_U_apdone_blk == 1'b1) | ((icmp_ln16_fu_87_p2 == 1'd0) & (in_vec_TVALID_int == 1'b0))) & (icmp_ln16_fu_87_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (out_vec_TREADY_int == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

always @ (*) begin
    ap_block_state2 = ((regslice_both_out_vec_V_data_V_U_apdone_blk == 1'b1) | ((icmp_ln16_fu_87_p2 == 1'd0) & (in_vec_TVALID_int == 1'b0)));
end

always @ (*) begin
    ap_block_state2_io = ((icmp_ln16_fu_87_p2 == 1'd0) & (out_vec_TREADY_int == 1'b0));
end

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign i_fu_93_p2 = (i_0_reg_72 + 6'd1);

assign icmp_ln16_fu_87_p2 = ((i_0_reg_72 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln879_fu_103_p2 = ((in_vec_TDATA_int == sext_ln9_reg_120) ? 1'b1 : 1'b0);

assign out_vec_TDATA_int = icmp_ln879_fu_103_p2;

assign out_vec_TLAST_int = ((i_0_reg_72 == 6'd31) ? 1'b1 : 1'b0);

assign out_vec_TVALID = regslice_both_out_vec_V_data_V_U_vld_out;

assign sext_ln9_fu_83_p1 = $signed(val_r_TDATA_int);

endmodule //find
