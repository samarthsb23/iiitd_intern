// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

module AESL_axi_slave_AXILiteS (
    clk,
    reset,
    TRAN_s_axi_AXILiteS_AWADDR,
    TRAN_s_axi_AXILiteS_AWVALID,
    TRAN_s_axi_AXILiteS_AWREADY,
    TRAN_s_axi_AXILiteS_WVALID,
    TRAN_s_axi_AXILiteS_WREADY,
    TRAN_s_axi_AXILiteS_WDATA,
    TRAN_s_axi_AXILiteS_WSTRB,
    TRAN_s_axi_AXILiteS_ARADDR,
    TRAN_s_axi_AXILiteS_ARVALID,
    TRAN_s_axi_AXILiteS_ARREADY,
    TRAN_s_axi_AXILiteS_RVALID,
    TRAN_s_axi_AXILiteS_RREADY,
    TRAN_s_axi_AXILiteS_RDATA,
    TRAN_s_axi_AXILiteS_RRESP,
    TRAN_s_axi_AXILiteS_BVALID,
    TRAN_s_axi_AXILiteS_BREADY,
    TRAN_s_axi_AXILiteS_BRESP,
    TRAN_AXILiteS_write_data_finish,
    TRAN_AXILiteS_read_data_finish,
    TRAN_AXILiteS_start_in,
    TRAN_AXILiteS_idle_in,
    TRAN_AXILiteS_ready_in,
    TRAN_AXILiteS_done_in,
    TRAN_AXILiteS_transaction_done_in
    );

//------------------------Parameter----------------------
`define TV_IN_A_V "../tv/cdatafile/c.lab_1.autotvin_A_V.dat"
`define TV_IN_B_V "../tv/cdatafile/c.lab_1.autotvin_B_V.dat"
`define TV_IN_C_V "../tv/cdatafile/c.lab_1.autotvin_C_V.dat"
`define TV_OUT_Y_V "../tv/rtldatafile/rtl.lab_1.autotvout_Y_V.dat"
parameter ADDR_WIDTH = 6;
parameter DATA_WIDTH = 32;
parameter A_V_DEPTH = 1;
reg [31 : 0] A_V_OPERATE_DEPTH = 0;
parameter A_V_c_bitwidth = 32;
parameter B_V_DEPTH = 1;
reg [31 : 0] B_V_OPERATE_DEPTH = 0;
parameter B_V_c_bitwidth = 32;
parameter C_V_DEPTH = 1;
reg [31 : 0] C_V_OPERATE_DEPTH = 0;
parameter C_V_c_bitwidth = 32;
parameter Y_V_DEPTH = 1;
reg [31 : 0] Y_V_OPERATE_DEPTH = 0;
parameter Y_V_c_bitwidth = 32;
parameter A_V_data_in_addr = 16;
parameter B_V_data_in_addr = 24;
parameter C_V_data_in_addr = 32;
parameter Y_V_data_out_addr = 40;
parameter Y_V_valid_out_addr = 44;

output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_AXILiteS_AWADDR;
output  TRAN_s_axi_AXILiteS_AWVALID;
input  TRAN_s_axi_AXILiteS_AWREADY;
output  TRAN_s_axi_AXILiteS_WVALID;
input  TRAN_s_axi_AXILiteS_WREADY;
output [DATA_WIDTH - 1 : 0] TRAN_s_axi_AXILiteS_WDATA;
output [DATA_WIDTH/8 - 1 : 0] TRAN_s_axi_AXILiteS_WSTRB;
output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_AXILiteS_ARADDR;
output  TRAN_s_axi_AXILiteS_ARVALID;
input  TRAN_s_axi_AXILiteS_ARREADY;
input  TRAN_s_axi_AXILiteS_RVALID;
output  TRAN_s_axi_AXILiteS_RREADY;
input [DATA_WIDTH - 1 : 0] TRAN_s_axi_AXILiteS_RDATA;
input [2 - 1 : 0] TRAN_s_axi_AXILiteS_RRESP;
input  TRAN_s_axi_AXILiteS_BVALID;
output  TRAN_s_axi_AXILiteS_BREADY;
input [2 - 1 : 0] TRAN_s_axi_AXILiteS_BRESP;
output TRAN_AXILiteS_write_data_finish;
output TRAN_AXILiteS_read_data_finish;
input     clk;
input     reset;
input     TRAN_AXILiteS_start_in;
input     TRAN_AXILiteS_done_in;
input     TRAN_AXILiteS_ready_in;
input     TRAN_AXILiteS_idle_in;
input     TRAN_AXILiteS_transaction_done_in;

reg [ADDR_WIDTH - 1 : 0] AWADDR_reg = 0;
reg  AWVALID_reg = 0;
reg  WVALID_reg = 0;
reg [DATA_WIDTH - 1 : 0] WDATA_reg = 0;
reg [DATA_WIDTH/8 - 1 : 0] WSTRB_reg = 0;
reg [ADDR_WIDTH - 1 : 0] ARADDR_reg = 0;
reg  ARVALID_reg = 0;
reg  RREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] RDATA_reg = 0;
reg  BREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] mem_A_V [A_V_DEPTH - 1 : 0];
reg A_V_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_B_V [B_V_DEPTH - 1 : 0];
reg B_V_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_C_V [C_V_DEPTH - 1 : 0];
reg C_V_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_Y_V [Y_V_DEPTH - 1 : 0];
reg Y_V_read_data_finish;
reg AESL_ready_out_index_reg = 0;
reg AESL_write_start_finish = 0;
reg AESL_ready_reg;
reg ready_initial;
reg AESL_done_index_reg = 0;
reg AESL_idle_index_reg = 0;
reg AESL_auto_restart_index_reg;
reg process_0_finish = 0;
reg process_1_finish = 0;
reg process_2_finish = 0;
reg process_3_finish = 0;
//write A_V reg
reg [31 : 0] write_A_V_count = 0;
reg write_A_V_run_flag = 0;
reg write_one_A_V_data_done = 0;
//write B_V reg
reg [31 : 0] write_B_V_count = 0;
reg write_B_V_run_flag = 0;
reg write_one_B_V_data_done = 0;
//write C_V reg
reg [31 : 0] write_C_V_count = 0;
reg write_C_V_run_flag = 0;
reg write_one_C_V_data_done = 0;
//read Y_V reg
reg [31 : 0] read_Y_V_count = 0;
reg read_Y_V_run_flag = 0;
reg read_one_Y_V_data_done = 0;

//===================process control=================
reg [31 : 0] ongoing_process_number = 0;
//process number depends on how much processes needed.
reg process_busy = 0;

//=================== signal connection ==============
assign TRAN_s_axi_AXILiteS_AWADDR = AWADDR_reg;
assign TRAN_s_axi_AXILiteS_AWVALID = AWVALID_reg;
assign TRAN_s_axi_AXILiteS_WVALID = WVALID_reg;
assign TRAN_s_axi_AXILiteS_WDATA = WDATA_reg;
assign TRAN_s_axi_AXILiteS_WSTRB = WSTRB_reg;
assign TRAN_s_axi_AXILiteS_ARADDR = ARADDR_reg;
assign TRAN_s_axi_AXILiteS_ARVALID = ARVALID_reg;
assign TRAN_s_axi_AXILiteS_RREADY = RREADY_reg;
assign TRAN_s_axi_AXILiteS_BREADY = BREADY_reg;
assign TRAN_AXILiteS_read_data_finish = 1 & Y_V_read_data_finish;
assign TRAN_AXILiteS_write_data_finish = 1 & A_V_write_data_finish & B_V_write_data_finish & C_V_write_data_finish;
always @(TRAN_AXILiteS_done_in) 
begin
    AESL_done_index_reg <= TRAN_AXILiteS_done_in;
end
always @(TRAN_AXILiteS_ready_in or ready_initial) 
begin
    AESL_ready_reg <= TRAN_AXILiteS_ready_in | ready_initial;
end

always @(reset or process_0_finish or process_1_finish or process_2_finish or process_3_finish ) begin
    if (reset == 0) begin
        ongoing_process_number <= 0;
    end
    else if (ongoing_process_number == 0 && process_0_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 1 && process_1_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 2 && process_2_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 3 && process_3_finish == 1) begin
            ongoing_process_number <= 0;
    end
end

task count_c_data_four_byte_num_by_bitwidth;
input  integer bitwidth;
output integer num;
integer factor;
integer i;
begin
    factor = 32;
    for (i = 1; i <= 32; i = i + 1) begin
        if (bitwidth <= factor && bitwidth > factor - 32) begin
            num = i;
        end
        factor = factor + 32;
    end
end    
endtask

task count_seperate_factor_by_bitwidth;
input  integer bitwidth;
output integer factor;
begin
    if (bitwidth <= 8 ) begin
        factor=4;
    end
    if (bitwidth <= 16 & bitwidth > 8 ) begin
        factor=2;
    end
    if (bitwidth <= 32 & bitwidth > 16 ) begin
        factor=1;
    end
    if (bitwidth <= 1024 & bitwidth > 32 ) begin
        factor=1;
    end
end    
endtask

task count_operate_depth_by_bitwidth_and_depth;
input  integer bitwidth;
input  integer depth;
output integer operate_depth;
integer factor;
integer remain;
begin
    count_seperate_factor_by_bitwidth (bitwidth , factor);
    operate_depth = depth / factor;
    remain = depth % factor;
    if (remain > 0) begin
        operate_depth = operate_depth + 1;
    end
end    
endtask

task write; /*{{{*/
    input  reg [ADDR_WIDTH - 1:0] waddr;   // write address
    input  reg [DATA_WIDTH - 1:0] wdata;   // write data
    output reg wresp;
    reg aw_flag;
    reg w_flag;
    reg [DATA_WIDTH/8 - 1:0] wstrb_reg;
    integer i;
begin 
    wresp = 0;
    aw_flag = 0;
    w_flag = 0;
//=======================one single write operate======================
    AWADDR_reg <= waddr;
    AWVALID_reg <= 1;
    WDATA_reg <= wdata;
    WVALID_reg <= 1;
    for (i = 0; i < DATA_WIDTH/8; i = i + 1) begin
        wstrb_reg [i] = 1;
    end    
    WSTRB_reg <= wstrb_reg;
    while (!(aw_flag && w_flag)) begin
        @(posedge clk);
        if (aw_flag != 1)
            aw_flag = TRAN_s_axi_AXILiteS_AWREADY & AWVALID_reg;
        if (w_flag != 1)
            w_flag = TRAN_s_axi_AXILiteS_WREADY & WVALID_reg;
        AWVALID_reg <= !aw_flag;
        WVALID_reg <= !w_flag;
    end

    BREADY_reg <= 1;
    while (TRAN_s_axi_AXILiteS_BVALID != 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    BREADY_reg <= 0;
    if (TRAN_s_axi_AXILiteS_BRESP === 2'b00) begin
        wresp = 1;
        //input success. in fact BRESP is always 2'b00
    end   
//=======================one single write operate======================

end
endtask/*}}}*/

task read (/*{{{*/
    input  [ADDR_WIDTH - 1:0] raddr ,   // write address
    output [DATA_WIDTH - 1:0] RDATA_result ,
    output rresp
);
begin 
    rresp = 0;
//=======================one single read operate======================
    ARADDR_reg <= raddr;
    ARVALID_reg <= 1;
    while (TRAN_s_axi_AXILiteS_ARREADY !== 1) begin
        @(posedge clk);
    end
    @(posedge clk);
    ARVALID_reg <= 0;
    RREADY_reg <= 1;
    while (TRAN_s_axi_AXILiteS_RVALID !== 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    RDATA_result  <= TRAN_s_axi_AXILiteS_RDATA;
    RREADY_reg <= 0;
    if (TRAN_s_axi_AXILiteS_RRESP === 2'b00 ) begin
        rresp <= 1;
        //output success. in fact RRESP is always 2'b00
    end  
    @(posedge clk);

//=======================one single read operate end======================

end
endtask/*}}}*/

initial begin : ready_initial_process
    ready_initial = 0;
    wait(reset === 1);
    @(posedge clk);
    ready_initial = 1;
    @(posedge clk);
    ready_initial = 0;
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        A_V_write_data_finish <= 0;
        write_A_V_run_flag <= 0; 
        write_A_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (A_V_c_bitwidth, A_V_DEPTH, A_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_AXILiteS_start_in === 1) begin
            A_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_A_V_run_flag <= 1; 
            write_A_V_count = 0;
        end
        if (write_one_A_V_data_done === 1) begin
            write_A_V_count = write_A_V_count + 1;
            if (write_A_V_count == A_V_OPERATE_DEPTH) begin
                write_A_V_run_flag <= 0; 
                A_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_A_V
    integer write_A_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] A_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = A_V_c_bitwidth;
    process_num = 0;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_0_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_A_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write A_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (A_V_c_bitwidth < 32) begin
                        A_V_data_tmp_reg = mem_A_V[write_A_V_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < A_V_c_bitwidth) begin
                                A_V_data_tmp_reg[j] = mem_A_V[write_A_V_count][i*32 + j];
                            end
                            else begin
                                A_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (A_V_data_in_addr + write_A_V_count * four_byte_num * 4 + i * 4, A_V_data_tmp_reg, write_A_V_resp);
                end
                process_busy = 0;
                write_one_A_V_data_done <= 1;
                @(posedge clk);
                write_one_A_V_data_done <= 0;
            end   
            process_0_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        B_V_write_data_finish <= 0;
        write_B_V_run_flag <= 0; 
        write_B_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (B_V_c_bitwidth, B_V_DEPTH, B_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_AXILiteS_start_in === 1) begin
            B_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_B_V_run_flag <= 1; 
            write_B_V_count = 0;
        end
        if (write_one_B_V_data_done === 1) begin
            write_B_V_count = write_B_V_count + 1;
            if (write_B_V_count == B_V_OPERATE_DEPTH) begin
                write_B_V_run_flag <= 0; 
                B_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_B_V
    integer write_B_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] B_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = B_V_c_bitwidth;
    process_num = 1;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_1_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_B_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write B_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (B_V_c_bitwidth < 32) begin
                        B_V_data_tmp_reg = mem_B_V[write_B_V_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < B_V_c_bitwidth) begin
                                B_V_data_tmp_reg[j] = mem_B_V[write_B_V_count][i*32 + j];
                            end
                            else begin
                                B_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (B_V_data_in_addr + write_B_V_count * four_byte_num * 4 + i * 4, B_V_data_tmp_reg, write_B_V_resp);
                end
                process_busy = 0;
                write_one_B_V_data_done <= 1;
                @(posedge clk);
                write_one_B_V_data_done <= 0;
            end   
            process_1_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        C_V_write_data_finish <= 0;
        write_C_V_run_flag <= 0; 
        write_C_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (C_V_c_bitwidth, C_V_DEPTH, C_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_AXILiteS_start_in === 1) begin
            C_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_C_V_run_flag <= 1; 
            write_C_V_count = 0;
        end
        if (write_one_C_V_data_done === 1) begin
            write_C_V_count = write_C_V_count + 1;
            if (write_C_V_count == C_V_OPERATE_DEPTH) begin
                write_C_V_run_flag <= 0; 
                C_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_C_V
    integer write_C_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] C_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = C_V_c_bitwidth;
    process_num = 2;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_2_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_C_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write C_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (C_V_c_bitwidth < 32) begin
                        C_V_data_tmp_reg = mem_C_V[write_C_V_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < C_V_c_bitwidth) begin
                                C_V_data_tmp_reg[j] = mem_C_V[write_C_V_count][i*32 + j];
                            end
                            else begin
                                C_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (C_V_data_in_addr + write_C_V_count * four_byte_num * 4 + i * 4, C_V_data_tmp_reg, write_C_V_resp);
                end
                process_busy = 0;
                write_one_C_V_data_done <= 1;
                @(posedge clk);
                write_one_C_V_data_done <= 0;
            end   
            process_2_finish <= 1;
        end
        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        Y_V_read_data_finish <= 0;
        read_Y_V_run_flag <= 0; 
        read_Y_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (Y_V_c_bitwidth, Y_V_DEPTH, Y_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_AXILiteS_start_in === 1) begin
            read_Y_V_run_flag = 1; 
        end
        if (TRAN_AXILiteS_transaction_done_in === 1) begin
            Y_V_read_data_finish <= 0;
            read_Y_V_count = 0; 
        end
        if (read_one_Y_V_data_done === 1) begin
            read_Y_V_count = read_Y_V_count + 1;
            if (read_Y_V_count == Y_V_OPERATE_DEPTH) begin
                read_Y_V_run_flag <= 0; 
                Y_V_read_data_finish <= 1;
            end
        end
    end
end

initial begin : read_Y_V
    integer read_Y_V_resp;
    integer process_num;
    integer get_vld;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;

    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = Y_V_c_bitwidth;
    process_num = 3;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_3_finish <= 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (read_Y_V_run_flag === 1) begin
                process_busy = 1;
                get_vld = 0;
                //read Y_V vld
                read (Y_V_valid_out_addr, RDATA_reg, read_Y_V_resp);
                if (RDATA_reg[0 : 0] == 1) begin
                    get_vld = 1;
                end
                if (get_vld == 1) begin
                    //read Y_V data 
                    for (i = 0 ; i < four_byte_num ; i = i+1) begin
                        read (Y_V_data_out_addr + read_Y_V_count * four_byte_num * 4 + i * 4, RDATA_reg, read_Y_V_resp);
                        if (Y_V_c_bitwidth < 32) begin
                            mem_Y_V[read_Y_V_count] <= RDATA_reg;
                        end
                        else begin
                            for (j=0 ; j < 32 ; j = j + 1) begin
                                if (i*32 + j < Y_V_c_bitwidth) begin
                                    mem_Y_V[read_Y_V_count][i*32 + j] <= RDATA_reg[j];
                                end
                            end
                        end
                    end
                    
                    read_one_Y_V_data_done <= 1;
                    @(posedge clk);
                    read_one_Y_V_data_done <= 0;
                end    
                process_busy = 0;
            end    
            process_3_finish <= 1;
        end
        @(posedge clk);
    end    
end
//------------------------Task and function-------------- 
task read_token; 
    input integer fp; 
    output reg [127 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end 
endtask 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_A_V_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [A_V_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (A_V_c_bitwidth , factor);
  fp = $fopen(`TV_IN_A_V ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_A_V); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < A_V_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_A_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_A_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_A_V [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_A_V [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_A_V [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_B_V_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [B_V_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (B_V_c_bitwidth , factor);
  fp = $fopen(`TV_IN_B_V ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_B_V); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < B_V_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_B_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_B_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_B_V [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_B_V [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_B_V [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_C_V_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [C_V_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (C_V_c_bitwidth , factor);
  fp = $fopen(`TV_IN_C_V ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_C_V); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < C_V_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_C_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_C_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_C_V [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_C_V [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_C_V [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Write file----------------------- 
 
// Write data to file 
 
initial begin : write_Y_V_file_proc 
  integer fp; 
  integer factor; 
  integer transaction_idx; 
  reg [Y_V_c_bitwidth - 1 : 0] mem_tmp; 
  reg [ 100*8 : 1] str;
  integer i; 
  transaction_idx = 0; 
  count_seperate_factor_by_bitwidth (Y_V_c_bitwidth , factor);
  while(1) begin 
      @(posedge clk);
      while (Y_V_read_data_finish !== 1) begin
          @(posedge clk);
      end
      # 0.1;
      fp = $fopen(`TV_OUT_Y_V, "a"); 
      if(fp == 0) begin       // Failed to open file 
          $display("Failed to open file \"%s\"!", `TV_OUT_Y_V); 
          $finish; 
      end 
      $fdisplay(fp, "[[transaction]] %d", transaction_idx);
      for (i = 0; i < (Y_V_DEPTH - Y_V_DEPTH % factor); i = i + 1) begin
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp = mem_Y_V[i/factor][7:0];
              end
              if (i%factor == 1) begin
                  mem_tmp = mem_Y_V[i/factor][15:8];
              end
              if (i%factor == 2) begin
                  mem_tmp = mem_Y_V[i/factor][23:16];
              end
              if (i%factor == 3) begin
                  mem_tmp = mem_Y_V[i/factor][31:24];
              end
              $fdisplay(fp,"0x%x",mem_tmp);
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp = mem_Y_V[i/factor][15:0];
              end
              if (i%factor == 1) begin
                  mem_tmp = mem_Y_V[i/factor][31:16];
              end
              $fdisplay(fp,"0x%x",mem_tmp);
          end
          if (factor == 1) begin
              $fdisplay(fp,"0x%x",mem_Y_V[i]);
          end
      end 
      if (factor == 4) begin
          if ((Y_V_DEPTH - 1) % factor == 2) begin
              $fdisplay(fp,"0x%x",mem_Y_V[Y_V_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_Y_V[Y_V_DEPTH / factor][15:8]);
              $fdisplay(fp,"0x%x",mem_Y_V[Y_V_DEPTH / factor][23:16]);
          end
          if ((Y_V_DEPTH - 1) % factor == 1) begin
              $fdisplay(fp,"0x%x",mem_Y_V[Y_V_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_Y_V[Y_V_DEPTH / factor][15:8]);
          end
          if ((Y_V_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_Y_V[Y_V_DEPTH / factor][7:0]);
          end
      end
      if (factor == 2) begin
          if ((Y_V_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_Y_V[Y_V_DEPTH / factor][15:0]);
          end
      end
      $fdisplay(fp, "[[/transaction]]");
      transaction_idx = transaction_idx + 1;
      $fclose(fp); 
      while (TRAN_AXILiteS_start_in !== 1) begin
          @(posedge clk);
      end
  end 
end 
 
endmodule
