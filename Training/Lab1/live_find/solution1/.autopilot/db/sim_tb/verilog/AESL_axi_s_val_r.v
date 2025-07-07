// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_IN_val_r_TDATA "./c.find.autotvin_val_r.dat"

`define AUTOTB_TRANSACTION_NUM 1

module AESL_axi_s_val_r (
    input clk,
    input reset,
    output [8 - 1:0] TRAN_val_r_TDATA,
    output TRAN_val_r_TVALID,
    input TRAN_val_r_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_val_r_TVALID_temp;
    wire val_r_TDATA_full;
    wire val_r_TDATA_empty;
    reg val_r_TDATA_write_en;
    reg [8 - 1:0] val_r_TDATA_write_data;
    reg val_r_TDATA_read_en;
    wire [8 - 1:0] val_r_TDATA_read_data;
    
    fifo #(1, 8) fifo_val_r_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(val_r_TDATA_write_en),
        .write_data(val_r_TDATA_write_data),
        .read_clock(clk),
        .read_en(val_r_TDATA_read_en),
        .read_data(val_r_TDATA_read_data),
        .full(val_r_TDATA_full),
        .empty(val_r_TDATA_empty));
    
    always @ (*) begin
        val_r_TDATA_write_en <= 0;
        val_r_TDATA_read_en <= TRAN_val_r_TREADY & TRAN_val_r_TVALID;
    end
    
    assign TRAN_val_r_TDATA = val_r_TDATA_read_data;
    assign TRAN_val_r_TVALID = TRAN_val_r_TVALID_temp;

    
    assign TRAN_val_r_TVALID_temp = ~(val_r_TDATA_empty);
    
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
    
    reg [31:0] transaction_load_val_r_TDATA;
    
    assign transaction = transaction_load_val_r_TDATA;
    
    initial begin : AXI_stream_driver_val_r_TDATA
        integer fp;
        reg [135:0] token;
        reg [8 - 1:0] data;
        reg [135:0] data_integer;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_val_r_TDATA = 0;
        fifo_val_r_TDATA.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_val_r_TDATA, "r");
        if (fp == 0) begin
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_val_r_TDATA);
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
                    fifo_val_r_TDATA.clear();
                    token = read_token(fp);
                    while (token != "[[/transaction]]") begin
                        if (fifo_val_r_TDATA.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_val_r_TDATA.push(data);
                        token = read_token(fp);
                    end
                    token = read_token(fp);
                    fifo_val_r_TDATA.snapshot();
                end else begin
                    fifo_val_r_TDATA.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                end
                transaction_load_val_r_TDATA = transaction_load_val_r_TDATA + 1;
            end
        end
    end

endmodule
