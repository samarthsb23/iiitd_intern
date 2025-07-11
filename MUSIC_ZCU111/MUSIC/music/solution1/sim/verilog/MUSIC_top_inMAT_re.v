// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1ns/1ps

module MUSIC_top_inMAT_re
#(parameter
    DataWidth    = 64,
    AddressRange = 32,
    AddressWidth = 8,
    BufferCount  = 2,
    MemLatency   = 1,
    IndexWidth   = 1
) (
    // system signals
    input  wire                    clk,
    input  wire                    reset,
    // initiator
    input  wire                    i_ce,
    input  wire                    i_write,
    output wire                    i_full_n,
    input  wire                    i_ce0,
    input  wire                    i_we0,
    input  wire [AddressWidth-1:0] i_address0,
    input  wire [DataWidth-1:0]    i_d0,
    output wire [DataWidth-1:0]    i_q0,
    input  wire                    i_ce1,
    input  wire [AddressWidth-1:0] i_address1,
    output wire [DataWidth-1:0]    i_q1,
    // target
    input  wire                    t_ce,
    input  wire                    t_read,
    output wire                    t_empty_n,
    input  wire                    t_ce0,
    input  wire                    t_we0,
    input  wire [AddressWidth-1:0] t_address0,
    input  wire [DataWidth-1:0]    t_d0,
    output wire [DataWidth-1:0]    t_q0,
    input  wire                    t_ce1,
    input  wire [AddressWidth-1:0] t_address1,
    output wire [DataWidth-1:0]    t_q1
);
//------------------------Local signal-------------------
// control/status
reg  [IndexWidth-1:0]   iptr    = 1'b0; // initiator index
reg  [IndexWidth-1:0]   tptr    = 1'b0; // target index
reg  [IndexWidth-1:0]   prev_iptr    = 1'b0; // previous initiator index
reg  [IndexWidth-1:0]   prev_tptr    = 1'b0; // previous target index
reg  [IndexWidth:0]     count   = 1'b0; // count of written buffers
reg                     full_n  = 1'b1; // whether all buffers are written
reg                     empty_n = 1'b0; // whether none of the buffers is written
wire                    push_buf;       // finish writing a buffer
wire                    pop_buf;        // finish reading a buffer
// buffer signals
wire                    buf_ce0[0:BufferCount-1];
wire                    buf_we0[0:BufferCount-1];
wire [AddressWidth-1:0] buf_a0[0:BufferCount-1];
wire [DataWidth-1:0]    buf_d0[0:BufferCount-1];
wire [DataWidth-1:0]    buf_q0[0:BufferCount-1];
wire                    buf_ce1[0:BufferCount-1];
wire [AddressWidth-1:0] buf_a1[0:BufferCount-1];
wire [DataWidth-1:0]    buf_q1[0:BufferCount-1];
//------------------------Instantiation------------------
genvar i;
generate
    for (i = 0; i < BufferCount; i = i + 1) begin : gen_buffer
        MUSIC_top_inMAT_re_memcore MUSIC_top_inMAT_re_memcore_U (
            .clk      ( clk ),
            .reset    ( reset ),
            .ce0      ( buf_ce0[i] ),
            .we0      ( buf_we0[i] ),
            .address0 ( buf_a0[i] ),
            .d0       ( buf_d0[i] ),
            .q0       ( buf_q0[i] ),
            .ce1      ( buf_ce1[i] ),
            .address1 ( buf_a1[i] ),
            .q1       ( buf_q1[i] )
        );
    end
endgenerate

//++++++++++++++++++++++++buffer signals+++++++++++++++++
generate
    for (i = 0; i < BufferCount; i = i + 1) begin : connect_buffer
        assign buf_ce0[i] = (iptr == i) ? i_ce0 :
                            (tptr == i && empty_n)? t_ce0 :
                            1'b0;
        assign buf_we0[i] = (iptr == i) ? i_we0 :
                            (tptr == i && empty_n)? t_we0 :
                            1'b0;
        assign buf_a0[i]  = (iptr == i) ? i_address0 : t_address0;
        assign buf_d0[i]  = (iptr == i) ? i_d0       : t_d0;
        assign buf_ce1[i] = (iptr == i) ? i_ce1 :
                            (tptr == i && empty_n)? t_ce1 :
                            1'b0;
        assign buf_a1[i]  = (iptr == i) ? i_address1 : t_address1;
    end
endgenerate
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++

//------------------------Body---------------------------
assign i_q0      = buf_q0[prev_iptr];
assign t_q0      = buf_q0[prev_tptr];
assign i_q1      = buf_q1[prev_iptr];
assign t_q1      = buf_q1[prev_tptr];

//++++++++++++++++++++++++output+++++++++++++++++++++++++
assign i_full_n  = full_n;
assign t_empty_n = empty_n;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++control/status+++++++++++++++++
assign push_buf = i_ce & i_write & full_n;
assign pop_buf  = t_ce & t_read & empty_n;

// iptr
always @(posedge clk) begin
    if (reset == 1'b1)
        iptr <= 1'b0;
    else if (push_buf) begin
        if (iptr == BufferCount - 1'b1)
            iptr <= 1'b0;
        else
            iptr <= iptr + 1'b1;
    end
end

// prev_iptr
always @(posedge clk) begin
    if (reset == 1'b1)
        prev_iptr <= 1'b0;
    else begin
        prev_iptr <= iptr;
    end
end

// prev_tptr
always @(posedge clk) begin
    if (reset == 1'b1)
        prev_tptr <= 1'b0;
    else begin
        prev_tptr <= tptr;
    end
end

// tptr
always @(posedge clk) begin
    if (reset == 1'b1)
        tptr <= 1'b0;
    else if (pop_buf) begin
        if (tptr == BufferCount - 1'b1)
            tptr <= 1'b0;
        else
            tptr <= tptr + 1'b1;
    end
end

// count
always @(posedge clk) begin
    if (reset == 1'b1)
        count <= 1'b0;
    else if (push_buf && !pop_buf)
        count <= count + 1'b1;
    else if (!push_buf && pop_buf)
        count <= count - 1'b1;
end

// full_n
always @(posedge clk) begin
    if (reset == 1'b1)
        full_n <= 1'b1;
    else if (push_buf && !pop_buf && count == BufferCount - 2'd2)
        full_n <= 1'b0;
    else if (!push_buf && pop_buf)
        full_n <= 1'b1;
end

// empty_n
always @(posedge clk) begin
    if (reset == 1'b1)
        empty_n <= 1'b0;
    else if (push_buf && !pop_buf)
        empty_n <= 1'b1;
    else if (!push_buf && pop_buf && count == 1'b1)
        empty_n <= 1'b0;
end
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++

endmodule

