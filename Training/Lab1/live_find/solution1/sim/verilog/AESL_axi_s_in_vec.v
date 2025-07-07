// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_IN_in_vec_TDATA "../tv/cdatafile/c.find.autotvin_in_vec_V_data_V.dat"
`define INGRESS_STATUS_in_vec_TDATA "../tv/stream_size/stream_ingress_status_in_vec_V_data_V.dat"
`define TV_IN_in_vec_TLAST "../tv/cdatafile/c.find.autotvin_in_vec_V_last_V.dat"
`define INGRESS_STATUS_in_vec_TLAST "../tv/stream_size/stream_ingress_status_in_vec_V_last_V.dat"

`define AUTOTB_TRANSACTION_NUM 1

module AESL_axi_s_in_vec (
    input clk,
    input reset,
    output [32 - 1:0] TRAN_in_vec_TDATA,
    output TRAN_in_vec_TLAST,
    output TRAN_in_vec_TVALID,
    input TRAN_in_vec_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_in_vec_TVALID_temp;
    wire in_vec_TDATA_full;
    wire in_vec_TDATA_empty;
    reg in_vec_TDATA_write_en;
    reg [32 - 1:0] in_vec_TDATA_write_data;
    reg in_vec_TDATA_read_en;
    wire [32 - 1:0] in_vec_TDATA_read_data;
    
    fifo #(32, 32) fifo_in_vec_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(in_vec_TDATA_write_en),
        .write_data(in_vec_TDATA_write_data),
        .read_clock(clk),
        .read_en(in_vec_TDATA_read_en),
        .read_data(in_vec_TDATA_read_data),
        .full(in_vec_TDATA_full),
        .empty(in_vec_TDATA_empty));
    
    always @ (*) begin
        in_vec_TDATA_write_en <= 0;
        in_vec_TDATA_read_en <= TRAN_in_vec_TREADY & TRAN_in_vec_TVALID;
    end
    
    assign TRAN_in_vec_TDATA = in_vec_TDATA_read_data;
    wire in_vec_TLAST_full;
    wire in_vec_TLAST_empty;
    reg in_vec_TLAST_write_en;
    reg [1 - 1:0] in_vec_TLAST_write_data;
    reg in_vec_TLAST_read_en;
    wire [1 - 1:0] in_vec_TLAST_read_data;
    
    fifo #(32, 1) fifo_in_vec_TLAST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(in_vec_TLAST_write_en),
        .write_data(in_vec_TLAST_write_data),
        .read_clock(clk),
        .read_en(in_vec_TLAST_read_en),
        .read_data(in_vec_TLAST_read_data),
        .full(in_vec_TLAST_full),
        .empty(in_vec_TLAST_empty));
    
    always @ (*) begin
        in_vec_TLAST_write_en <= 0;
        in_vec_TLAST_read_en <= TRAN_in_vec_TREADY & TRAN_in_vec_TVALID;
    end
    
    assign TRAN_in_vec_TLAST = in_vec_TLAST_read_data;
    assign TRAN_in_vec_TVALID = TRAN_in_vec_TVALID_temp;

    
    reg in_vec_TDATA_valid = 0; // ingress buffer indicator: in_vec_TDATA
    reg in_vec_TLAST_valid = 0; // ingress buffer indicator: in_vec_TLAST
    
    assign TRAN_in_vec_TVALID_temp = ~(in_vec_TDATA_empty || in_vec_TLAST_empty) || (in_vec_TDATA_valid && in_vec_TLAST_valid);
    
    function is_blank_char(input [7:0] in_char);
        if (in_char == " " || in_char == "\011" || in_char == "\012" || in_char == "\015") begin
            is_blank_char = 1;
        end else begin
            is_blank_char = 0;
        end
    endfunction
    
    function [135:0] read_token(input integer fp);
        integer ret;
        begin
            read_token = "";
                    ret = 0;
                    ret = $fscanf(fp,"%s",read_token);
        end
    endfunction
    
    function [135:0] rm_0x(input [135:0] token);
        reg [135:0] token_tmp;
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
    
    reg [31:0] transaction_load_in_vec_TDATA;
    
    assign transaction = transaction_load_in_vec_TDATA;
    
    initial begin : AXI_stream_driver_in_vec_TDATA
        integer fp;
        reg [135:0] token;
        reg [32 - 1:0] data;
        reg [135:0] data_integer;
        integer fp_ingress_status;
        reg [135:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_in_vec_TDATA = 0;
        fifo_in_vec_TDATA.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_in_vec_TDATA, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_in_vec_TDATA);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_in_vec_TDATA, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_in_vec_TDATA);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_in_vec_TDATA.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_in_vec_TDATA.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_in_vec_TDATA.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    in_vec_TDATA_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                    fifo_in_vec_TDATA.snapshot();
                end else begin
                    fifo_in_vec_TDATA.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_in_vec_TDATA = transaction_load_in_vec_TDATA + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_in_vec_TLAST;
    
    initial begin : AXI_stream_driver_in_vec_TLAST
        integer fp;
        reg [135:0] token;
        reg [1 - 1:0] data;
        reg [135:0] data_integer;
        integer fp_ingress_status;
        reg [135:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_in_vec_TLAST = 0;
        fifo_in_vec_TLAST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_in_vec_TLAST, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_in_vec_TLAST);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_in_vec_TLAST, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_in_vec_TLAST);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_in_vec_TLAST.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_in_vec_TLAST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_in_vec_TLAST.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    in_vec_TLAST_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                    fifo_in_vec_TLAST.snapshot();
                end else begin
                    fifo_in_vec_TLAST.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_in_vec_TLAST = transaction_load_in_vec_TLAST + 1;
            end
        end
    end

endmodule
