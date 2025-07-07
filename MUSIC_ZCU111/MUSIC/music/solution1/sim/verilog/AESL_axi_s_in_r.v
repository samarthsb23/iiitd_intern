// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_IN_in_r_TDATA "../tv/cdatafile/c.MUSIC_top.autotvin_in_V_data.dat"
`define TV_IN_in_r_TLAST "../tv/cdatafile/c.MUSIC_top.autotvin_in_V_last_V.dat"

`define AUTOTB_TRANSACTION_NUM 1

module AESL_axi_s_in_r (
    input clk,
    input reset,
    output [128 - 1:0] TRAN_in_r_TDATA,
    output TRAN_in_r_TLAST,
    output TRAN_in_r_TVALID,
    input TRAN_in_r_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_in_r_TVALID_temp;
    wire in_r_TDATA_full;
    wire in_r_TDATA_empty;
    reg in_r_TDATA_write_en;
    reg [128 - 1:0] in_r_TDATA_write_data;
    reg in_r_TDATA_read_en;
    wire [128 - 1:0] in_r_TDATA_read_data;
    
    fifo #(200, 128) fifo_in_r_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(in_r_TDATA_write_en),
        .write_data(in_r_TDATA_write_data),
        .read_clock(clk),
        .read_en(in_r_TDATA_read_en),
        .read_data(in_r_TDATA_read_data),
        .full(in_r_TDATA_full),
        .empty(in_r_TDATA_empty));
    
    always @ (*) begin
        in_r_TDATA_write_en <= 0;
        in_r_TDATA_read_en <= TRAN_in_r_TREADY & TRAN_in_r_TVALID;
    end
    
    assign TRAN_in_r_TDATA = in_r_TDATA_read_data;
    wire in_r_TLAST_full;
    wire in_r_TLAST_empty;
    reg in_r_TLAST_write_en;
    reg [1 - 1:0] in_r_TLAST_write_data;
    reg in_r_TLAST_read_en;
    wire [1 - 1:0] in_r_TLAST_read_data;
    
    fifo #(200, 1) fifo_in_r_TLAST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(in_r_TLAST_write_en),
        .write_data(in_r_TLAST_write_data),
        .read_clock(clk),
        .read_en(in_r_TLAST_read_en),
        .read_data(in_r_TLAST_read_data),
        .full(in_r_TLAST_full),
        .empty(in_r_TLAST_empty));
    
    always @ (*) begin
        in_r_TLAST_write_en <= 0;
        in_r_TLAST_read_en <= TRAN_in_r_TREADY & TRAN_in_r_TVALID;
    end
    
    assign TRAN_in_r_TLAST = in_r_TLAST_read_data;
    assign TRAN_in_r_TVALID = TRAN_in_r_TVALID_temp;

    
    assign TRAN_in_r_TVALID_temp = ~(in_r_TDATA_empty || in_r_TLAST_empty);
    
    function is_blank_char(input [7:0] in_char);
        if (in_char == " " || in_char == "\011" || in_char == "\012" || in_char == "\015") begin
            is_blank_char = 1;
        end else begin
            is_blank_char = 0;
        end
    endfunction
    
    function [279:0] read_token(input integer fp);
        integer ret;
        begin
            read_token = "";
                    ret = 0;
                    ret = $fscanf(fp,"%s",read_token);
        end
    endfunction
    
    function [279:0] rm_0x(input [279:0] token);
        reg [279:0] token_tmp;
        integer i;
        begin
            token_tmp = "";
            for (i = 0; token[15:0] != "0x"; token = token >> 8) begin
                token_tmp = (token[7:0] << (8 * i)) | token_tmp;
                i = i + 1;
            end
            rm_0x = token_tmp;
        end
    endfunction
    
    reg [31:0] transaction_load_in_r_TDATA;
    
    assign transaction = transaction_load_in_r_TDATA;
    
    initial begin : AXI_stream_driver_in_r_TDATA
        integer fp;
        reg [279:0] token;
        reg [128 - 1:0] data;
        reg [279:0] data_integer;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_in_r_TDATA = 0;
        fifo_in_r_TDATA.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_in_r_TDATA, "r");
        if (fp == 0) begin
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_in_r_TDATA);
            $finish;
        end
        token = read_token(fp);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    fifo_in_r_TDATA.clear();
                    token = read_token(fp);
                    while (token != "[[/transaction]]") begin
                        if (fifo_in_r_TDATA.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_in_r_TDATA.push(data);
                        token = read_token(fp);
                    end
                    token = read_token(fp);
                    fifo_in_r_TDATA.snapshot();
                end else begin
                    fifo_in_r_TDATA.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                end
                transaction_load_in_r_TDATA = transaction_load_in_r_TDATA + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_in_r_TLAST;
    
    initial begin : AXI_stream_driver_in_r_TLAST
        integer fp;
        reg [279:0] token;
        reg [1 - 1:0] data;
        reg [279:0] data_integer;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_in_r_TLAST = 0;
        fifo_in_r_TLAST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_in_r_TLAST, "r");
        if (fp == 0) begin
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_in_r_TLAST);
            $finish;
        end
        token = read_token(fp);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    fifo_in_r_TLAST.clear();
                    token = read_token(fp);
                    while (token != "[[/transaction]]") begin
                        if (fifo_in_r_TLAST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_in_r_TLAST.push(data);
                        token = read_token(fp);
                    end
                    token = read_token(fp);
                    fifo_in_r_TLAST.snapshot();
                end else begin
                    fifo_in_r_TLAST.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                end
                transaction_load_in_r_TLAST = transaction_load_in_r_TLAST + 1;
            end
        end
    end

endmodule
