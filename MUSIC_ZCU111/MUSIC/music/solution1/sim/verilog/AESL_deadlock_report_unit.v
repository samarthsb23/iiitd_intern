`timescale 1 ns / 1 ps

module AESL_deadlock_report_unit #( parameter PROC_NUM = 4 ) (
    input reset,
    input clock,
    input [PROC_NUM - 1:0] dl_in_vec,
    output dl_detect_out,
    output reg [PROC_NUM - 1:0] origin,
    output token_clear);
   
    // FSM states
    localparam ST_IDLE = 2'b0;
    localparam ST_DL_DETECTED = 2'b1;
    localparam ST_DL_REPORT = 2'b10;

    reg [1:0] CS_fsm;
    reg [1:0] NS_fsm;
    reg [PROC_NUM - 1:0] dl_detect_reg;
    reg [PROC_NUM - 1:0] dl_done_reg;
    reg [PROC_NUM - 1:0] origin_reg;
    reg [PROC_NUM - 1:0] dl_in_vec_reg;
    integer i;

    // FSM State machine
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            CS_fsm <= ST_IDLE;
        end
        else begin
            CS_fsm <= NS_fsm;
        end
    end
    always @ (CS_fsm or dl_in_vec or dl_detect_reg or dl_done_reg or dl_in_vec or origin_reg) begin
        NS_fsm = CS_fsm;
        case (CS_fsm)
            ST_IDLE : begin
                if (|dl_in_vec) begin
                    NS_fsm = ST_DL_DETECTED;
                end
            end
            ST_DL_DETECTED: begin
                // has unreported deadlock cycle
                if (dl_detect_reg != dl_done_reg) begin
                    NS_fsm = ST_DL_REPORT;
                end
            end
            ST_DL_REPORT: begin
                if (|(dl_in_vec & origin_reg)) begin
                    NS_fsm = ST_DL_DETECTED;
                end
            end
        endcase
    end

    // dl_detect_reg record the procs that first detect deadlock
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            dl_detect_reg <= 'b0;
        end
        else begin
            if (CS_fsm == ST_IDLE) begin
                dl_detect_reg <= dl_in_vec;
            end
        end
    end

    // dl_detect_out keeps in high after deadlock detected
    assign dl_detect_out = |dl_detect_reg;

    // dl_done_reg record the cycles has been reported
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            dl_done_reg <= 'b0;
        end
        else begin
            if ((CS_fsm == ST_DL_REPORT) && (|(dl_in_vec & dl_detect_reg) == 'b1)) begin
                dl_done_reg <= dl_done_reg | dl_in_vec;
            end
        end
    end

    // clear token once a cycle is done
    assign token_clear = (CS_fsm == ST_DL_REPORT) ? ((|(dl_in_vec & origin_reg)) ? 'b1 : 'b0) : 'b0;

    // origin_reg record the current cycle start id
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            origin_reg <= 'b0;
        end
        else begin
            if (CS_fsm == ST_DL_DETECTED) begin
                origin_reg <= origin;
            end
        end
    end
   
    // origin will be valid for only one cycle
    always @ (CS_fsm or dl_detect_reg or dl_done_reg) begin
        origin = 'b0;
        if (CS_fsm == ST_DL_DETECTED) begin
            for (i = 0; i < PROC_NUM; i = i + 1) begin
                if (dl_detect_reg[i] & ~dl_done_reg[i] & ~(|origin)) begin
                    origin = 'b1 << i;
                end
            end
        end
    end
    
    // dl_in_vec_reg record the current cycle dl_in_vec
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            dl_in_vec_reg <= 'b0;
        end
        else begin
            if (CS_fsm == ST_DL_DETECTED) begin
                dl_in_vec_reg <= origin;
            end
            else if (CS_fsm == ST_DL_REPORT) begin
                dl_in_vec_reg <= dl_in_vec;
            end
        end
    end
    
    // get the first valid proc index in dl vector
    function integer proc_index(input [PROC_NUM - 1:0] dl_vec);
        begin
            proc_index = 0;
            for (i = 0; i < PROC_NUM; i = i + 1) begin
                if (dl_vec[i]) begin
                    proc_index = i;
                end
            end
        end
    endfunction

    // get the proc path based on dl vector
    function [304:0] proc_path(input [PROC_NUM - 1:0] dl_vec);
        integer index;
        begin
            index = proc_index(dl_vec);
            case (index)
                0 : begin
                    proc_path = "MUSIC_top.inputdatamover_U0";
                end
                1 : begin
                    proc_path = "MUSIC_top.AutoCorrelation_U0";
                end
                2 : begin
                    proc_path = "MUSIC_top.qr_givens_U0";
                end
                3 : begin
                    proc_path = "MUSIC_top.MSG_U0";
                end
                default : begin
                    proc_path = "unknown";
                end
            endcase
        end
    endfunction

    // print the headlines of deadlock detection
    task print_dl_head;
        begin
            $display("\n//////////////////////////////////////////////////////////////////////////////");
            $display("// ERROR!!! DEADLOCK DETECTED at %0t ns! SIMULATION WILL BE STOPPED! //", $time);
            $display("//////////////////////////////////////////////////////////////////////////////");
        end
    endtask

    // print the start of a cycle
    task print_cycle_start(input reg [304:0] proc_path, input integer cycle_id);
        begin
            $display("/////////////////////////");
            $display("// Dependence cycle %0d:", cycle_id);
            $display("// (1): Process: %0s", proc_path);
        end
    endtask

    // print the end of deadlock detection
    task print_dl_end(input integer num);
        begin
            $display("////////////////////////////////////////////////////////////////////////");
            $display("// Totally %0d cycles detected!", num);
            $display("////////////////////////////////////////////////////////////////////////");
        end
    endtask

    // print one proc component in the cycle
    task print_cycle_proc_comp(input reg [304:0] proc_path, input integer cycle_comp_id);
        begin
            $display("// (%0d): Process: %0s", cycle_comp_id, proc_path);
        end
    endtask

    // print one channel component in the cycle
    task print_cycle_chan_comp(input [PROC_NUM - 1:0] dl_vec1, input [PROC_NUM - 1:0] dl_vec2);
        reg [280:0] chan_path;
        integer index1;
        integer index2;
        begin
            index1 = proc_index(dl_vec1);
            index2 = proc_index(dl_vec2);
            case (index1)
                0 : begin
                    case(index2)
                    1: begin
                        if (~AESL_inst_MUSIC_top.inMAT_re_U.i_full_n & AESL_inst_MUSIC_top.inputdatamover_U0.ap_done & deadlock_detector.ap_done_reg_0 & ~AESL_inst_MUSIC_top.inMAT_re_U.t_read) begin
                            chan_path = "MUSIC_top.inMAT_re_U";
                            if (~AESL_inst_MUSIC_top.inMAT_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.inMAT_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.inMAT_im_U.i_full_n & AESL_inst_MUSIC_top.inputdatamover_U0.ap_done & deadlock_detector.ap_done_reg_0 & ~AESL_inst_MUSIC_top.inMAT_im_U.t_read) begin
                            chan_path = "MUSIC_top.inMAT_im_U";
                            if (~AESL_inst_MUSIC_top.inMAT_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.inMAT_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                    end
                    endcase
                end
                1 : begin
                    case(index2)
                    0: begin
                        if (~AESL_inst_MUSIC_top.inMAT_re_U.t_empty_n & (AESL_inst_MUSIC_top.AutoCorrelation_U0.ap_ready | AESL_inst_MUSIC_top.AutoCorrelation_U0.ap_idle) & ~AESL_inst_MUSIC_top.inMAT_re_U.i_write) begin
                            chan_path = "MUSIC_top.inMAT_re_U";
                            if (~AESL_inst_MUSIC_top.inMAT_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.inMAT_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.inMAT_im_U.t_empty_n & (AESL_inst_MUSIC_top.AutoCorrelation_U0.ap_ready | AESL_inst_MUSIC_top.AutoCorrelation_U0.ap_idle) & ~AESL_inst_MUSIC_top.inMAT_im_U.i_write) begin
                            chan_path = "MUSIC_top.inMAT_im_U";
                            if (~AESL_inst_MUSIC_top.inMAT_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.inMAT_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                    end
                    2: begin
                        if (~AESL_inst_MUSIC_top.matrix1_re_U.i_full_n & AESL_inst_MUSIC_top.AutoCorrelation_U0.ap_done & deadlock_detector.ap_done_reg_1 & ~AESL_inst_MUSIC_top.matrix1_re_U.t_read) begin
                            chan_path = "MUSIC_top.matrix1_re_U";
                            if (~AESL_inst_MUSIC_top.matrix1_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.matrix1_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.matrix1_im_U.i_full_n & AESL_inst_MUSIC_top.AutoCorrelation_U0.ap_done & deadlock_detector.ap_done_reg_1 & ~AESL_inst_MUSIC_top.matrix1_im_U.t_read) begin
                            chan_path = "MUSIC_top.matrix1_im_U";
                            if (~AESL_inst_MUSIC_top.matrix1_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.matrix1_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                    end
                    endcase
                end
                2 : begin
                    case(index2)
                    1: begin
                        if (~AESL_inst_MUSIC_top.matrix1_re_U.t_empty_n & (AESL_inst_MUSIC_top.qr_givens_U0.ap_ready | AESL_inst_MUSIC_top.qr_givens_U0.ap_idle) & ~AESL_inst_MUSIC_top.matrix1_re_U.i_write) begin
                            chan_path = "MUSIC_top.matrix1_re_U";
                            if (~AESL_inst_MUSIC_top.matrix1_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.matrix1_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.matrix1_im_U.t_empty_n & (AESL_inst_MUSIC_top.qr_givens_U0.ap_ready | AESL_inst_MUSIC_top.qr_givens_U0.ap_idle) & ~AESL_inst_MUSIC_top.matrix1_im_U.i_write) begin
                            chan_path = "MUSIC_top.matrix1_im_U";
                            if (~AESL_inst_MUSIC_top.matrix1_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.matrix1_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                    end
                    3: begin
                        if (~AESL_inst_MUSIC_top.noiseSS_0_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_0_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_0_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_0_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_0_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_1_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_1_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_1_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_1_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_1_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_2_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_2_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_2_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_2_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_2_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_3_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_3_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_3_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_3_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_3_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_4_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_4_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_4_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_4_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_4_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_5_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_5_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_5_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_5_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_5_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_6_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_6_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_6_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_6_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_6_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_7_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_7_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_7_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_7_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_7_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_8_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_8_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_8_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_8_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_8_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_9_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_9_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_9_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_9_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_9_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_10_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_10_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_10_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_10_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_10_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_11_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_11_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_11_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_11_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_11_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_12_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_12_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_12_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_12_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_12_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_13_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_13_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_13_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_13_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_13_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_14_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_14_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_14_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_14_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_14_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_15_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_15_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_15_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_15_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_15_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_16_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_16_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_16_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_16_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_16_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_17_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_17_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_17_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_17_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_17_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_18_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_18_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_18_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_18_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_18_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_19_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_19_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_19_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_19_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_19_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_20_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_20_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_20_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_20_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_20_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_21_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_21_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_21_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_21_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_21_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_22_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_22_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_22_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_22_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_22_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_23_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_23_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_23_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_23_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_23_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_24_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_24_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_24_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_24_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_24_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_25_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_25_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_25_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_25_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_25_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_26_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_26_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_26_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_26_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_26_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_27_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_27_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_27_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_27_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_27_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_28_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_28_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_28_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_28_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_28_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_29_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_29_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_29_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_29_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_29_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_30_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_30_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_30_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_30_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_30_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_31_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_31_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_31_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_31_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_31_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_32_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_32_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_32_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_32_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_32_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_33_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_33_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_33_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_33_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_33_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_34_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_34_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_34_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_34_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_34_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_35_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_35_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_35_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_35_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_35_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_36_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_36_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_36_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_36_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_36_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_37_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_37_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_37_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_37_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_37_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_38_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_38_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_38_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_38_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_38_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_39_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_39_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_39_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_39_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_39_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_40_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_40_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_40_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_40_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_40_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_41_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_41_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_41_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_41_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_41_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_42_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_42_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_42_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_42_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_42_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_43_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_43_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_43_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_43_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_43_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_44_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_44_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_44_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_44_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_44_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_45_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_45_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_45_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_45_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_45_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_46_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_46_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_46_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_46_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_46_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_47_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_47_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_47_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_47_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_47_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_48_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_48_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_48_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_48_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_48_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_49_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_49_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_49_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_49_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_49_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_50_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_50_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_50_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_50_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_50_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_51_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_51_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_51_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_51_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_51_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_52_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_52_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_52_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_52_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_52_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_53_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_53_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_53_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_53_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_53_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_54_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_54_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_54_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_54_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_54_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_55_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_55_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_55_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_55_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_55_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_56_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_56_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_56_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_56_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_56_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_57_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_57_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_57_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_57_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_57_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_58_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_58_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_58_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_58_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_58_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_59_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_59_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_59_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_59_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_59_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_60_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_60_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_60_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_60_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_60_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_61_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_61_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_61_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_61_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_61_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_62_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_62_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_62_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_62_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_62_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_63_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_63_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_63_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_63_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_63_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_64_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_64_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_64_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_64_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_64_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_65_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_65_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_65_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_65_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_65_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_66_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_66_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_66_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_66_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_66_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_67_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_67_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_67_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_67_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_67_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_68_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_68_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_68_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_68_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_68_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_69_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_69_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_69_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_69_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_69_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_70_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_70_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_70_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_70_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_70_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_71_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_71_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_71_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_71_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_71_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_72_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_72_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_72_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_72_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_72_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_73_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_73_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_73_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_73_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_73_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_74_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_74_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_74_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_74_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_74_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_75_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_75_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_75_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_75_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_75_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_76_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_76_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_76_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_76_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_76_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_77_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_77_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_77_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_77_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_77_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_78_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_78_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_78_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_78_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_78_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_79_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_79_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_79_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_79_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_79_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_80_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_80_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_80_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_80_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_80_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_81_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_81_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_81_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_81_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_81_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_82_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_82_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_82_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_82_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_82_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_83_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_83_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_83_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_83_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_83_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_84_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_84_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_84_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_84_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_84_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_85_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_85_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_85_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_85_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_85_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_86_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_86_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_86_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_86_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_86_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_87_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_87_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_87_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_87_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_87_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_88_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_88_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_88_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_88_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_88_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_89_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_89_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_89_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_89_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_89_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_90_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_90_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_90_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_90_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_90_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_91_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_91_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_91_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_91_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_91_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_92_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_92_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_92_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_92_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_92_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_93_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_93_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_93_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_93_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_93_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_94_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_94_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_94_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_94_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_94_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_95_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_95_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_95_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_95_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_95_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_96_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_96_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_96_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_96_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_96_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_97_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_97_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_97_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_97_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_97_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_98_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_98_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_98_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_98_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_98_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_99_re_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_99_re_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_99_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_99_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_99_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_0_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_0_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_0_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_0_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_0_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_1_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_1_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_1_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_1_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_1_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_2_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_2_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_2_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_2_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_2_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_3_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_3_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_3_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_3_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_3_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_4_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_4_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_4_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_4_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_4_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_5_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_5_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_5_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_5_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_5_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_6_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_6_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_6_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_6_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_6_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_7_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_7_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_7_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_7_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_7_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_8_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_8_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_8_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_8_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_8_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_9_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_9_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_9_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_9_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_9_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_10_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_10_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_10_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_10_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_10_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_11_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_11_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_11_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_11_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_11_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_12_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_12_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_12_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_12_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_12_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_13_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_13_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_13_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_13_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_13_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_14_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_14_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_14_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_14_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_14_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_15_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_15_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_15_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_15_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_15_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_16_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_16_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_16_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_16_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_16_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_17_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_17_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_17_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_17_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_17_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_18_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_18_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_18_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_18_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_18_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_19_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_19_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_19_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_19_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_19_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_20_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_20_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_20_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_20_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_20_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_21_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_21_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_21_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_21_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_21_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_22_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_22_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_22_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_22_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_22_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_23_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_23_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_23_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_23_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_23_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_24_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_24_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_24_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_24_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_24_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_25_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_25_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_25_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_25_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_25_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_26_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_26_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_26_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_26_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_26_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_27_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_27_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_27_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_27_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_27_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_28_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_28_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_28_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_28_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_28_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_29_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_29_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_29_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_29_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_29_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_30_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_30_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_30_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_30_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_30_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_31_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_31_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_31_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_31_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_31_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_32_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_32_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_32_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_32_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_32_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_33_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_33_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_33_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_33_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_33_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_34_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_34_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_34_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_34_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_34_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_35_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_35_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_35_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_35_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_35_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_36_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_36_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_36_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_36_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_36_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_37_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_37_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_37_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_37_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_37_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_38_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_38_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_38_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_38_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_38_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_39_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_39_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_39_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_39_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_39_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_40_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_40_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_40_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_40_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_40_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_41_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_41_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_41_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_41_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_41_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_42_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_42_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_42_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_42_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_42_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_43_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_43_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_43_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_43_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_43_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_44_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_44_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_44_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_44_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_44_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_45_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_45_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_45_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_45_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_45_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_46_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_46_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_46_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_46_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_46_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_47_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_47_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_47_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_47_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_47_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_48_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_48_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_48_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_48_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_48_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_49_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_49_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_49_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_49_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_49_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_50_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_50_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_50_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_50_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_50_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_51_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_51_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_51_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_51_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_51_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_52_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_52_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_52_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_52_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_52_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_53_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_53_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_53_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_53_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_53_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_54_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_54_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_54_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_54_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_54_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_55_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_55_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_55_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_55_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_55_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_56_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_56_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_56_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_56_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_56_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_57_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_57_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_57_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_57_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_57_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_58_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_58_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_58_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_58_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_58_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_59_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_59_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_59_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_59_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_59_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_60_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_60_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_60_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_60_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_60_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_61_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_61_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_61_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_61_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_61_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_62_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_62_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_62_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_62_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_62_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_63_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_63_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_63_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_63_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_63_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_64_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_64_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_64_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_64_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_64_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_65_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_65_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_65_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_65_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_65_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_66_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_66_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_66_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_66_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_66_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_67_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_67_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_67_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_67_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_67_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_68_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_68_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_68_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_68_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_68_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_69_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_69_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_69_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_69_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_69_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_70_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_70_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_70_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_70_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_70_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_71_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_71_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_71_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_71_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_71_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_72_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_72_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_72_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_72_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_72_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_73_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_73_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_73_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_73_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_73_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_74_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_74_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_74_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_74_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_74_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_75_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_75_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_75_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_75_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_75_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_76_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_76_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_76_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_76_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_76_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_77_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_77_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_77_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_77_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_77_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_78_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_78_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_78_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_78_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_78_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_79_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_79_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_79_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_79_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_79_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_80_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_80_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_80_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_80_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_80_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_81_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_81_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_81_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_81_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_81_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_82_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_82_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_82_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_82_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_82_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_83_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_83_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_83_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_83_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_83_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_84_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_84_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_84_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_84_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_84_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_85_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_85_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_85_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_85_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_85_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_86_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_86_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_86_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_86_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_86_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_87_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_87_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_87_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_87_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_87_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_88_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_88_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_88_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_88_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_88_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_89_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_89_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_89_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_89_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_89_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_90_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_90_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_90_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_90_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_90_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_91_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_91_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_91_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_91_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_91_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_92_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_92_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_92_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_92_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_92_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_93_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_93_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_93_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_93_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_93_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_94_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_94_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_94_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_94_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_94_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_95_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_95_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_95_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_95_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_95_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_96_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_96_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_96_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_96_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_96_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_97_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_97_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_97_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_97_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_97_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_98_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_98_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_98_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_98_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_98_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_99_im_U.i_full_n & AESL_inst_MUSIC_top.qr_givens_U0.ap_done & deadlock_detector.ap_done_reg_2 & ~AESL_inst_MUSIC_top.noiseSS_99_im_U.t_read) begin
                            chan_path = "MUSIC_top.noiseSS_99_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_99_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_99_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                    end
                    endcase
                end
                3 : begin
                    case(index2)
                    2: begin
                        if (~AESL_inst_MUSIC_top.noiseSS_0_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_0_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_0_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_0_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_0_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_1_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_1_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_1_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_1_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_1_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_2_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_2_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_2_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_2_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_2_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_3_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_3_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_3_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_3_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_3_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_4_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_4_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_4_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_4_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_4_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_5_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_5_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_5_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_5_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_5_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_6_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_6_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_6_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_6_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_6_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_7_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_7_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_7_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_7_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_7_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_8_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_8_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_8_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_8_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_8_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_9_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_9_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_9_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_9_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_9_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_10_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_10_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_10_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_10_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_10_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_11_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_11_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_11_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_11_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_11_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_12_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_12_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_12_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_12_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_12_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_13_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_13_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_13_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_13_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_13_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_14_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_14_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_14_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_14_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_14_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_15_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_15_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_15_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_15_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_15_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_16_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_16_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_16_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_16_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_16_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_17_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_17_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_17_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_17_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_17_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_18_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_18_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_18_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_18_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_18_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_19_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_19_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_19_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_19_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_19_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_20_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_20_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_20_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_20_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_20_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_21_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_21_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_21_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_21_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_21_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_22_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_22_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_22_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_22_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_22_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_23_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_23_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_23_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_23_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_23_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_24_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_24_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_24_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_24_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_24_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_25_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_25_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_25_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_25_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_25_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_26_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_26_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_26_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_26_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_26_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_27_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_27_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_27_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_27_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_27_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_28_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_28_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_28_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_28_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_28_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_29_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_29_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_29_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_29_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_29_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_30_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_30_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_30_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_30_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_30_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_31_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_31_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_31_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_31_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_31_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_32_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_32_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_32_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_32_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_32_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_33_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_33_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_33_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_33_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_33_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_34_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_34_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_34_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_34_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_34_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_35_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_35_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_35_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_35_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_35_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_36_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_36_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_36_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_36_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_36_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_37_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_37_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_37_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_37_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_37_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_38_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_38_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_38_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_38_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_38_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_39_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_39_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_39_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_39_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_39_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_40_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_40_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_40_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_40_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_40_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_41_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_41_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_41_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_41_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_41_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_42_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_42_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_42_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_42_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_42_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_43_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_43_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_43_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_43_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_43_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_44_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_44_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_44_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_44_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_44_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_45_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_45_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_45_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_45_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_45_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_46_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_46_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_46_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_46_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_46_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_47_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_47_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_47_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_47_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_47_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_48_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_48_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_48_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_48_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_48_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_49_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_49_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_49_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_49_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_49_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_50_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_50_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_50_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_50_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_50_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_51_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_51_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_51_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_51_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_51_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_52_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_52_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_52_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_52_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_52_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_53_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_53_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_53_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_53_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_53_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_54_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_54_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_54_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_54_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_54_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_55_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_55_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_55_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_55_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_55_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_56_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_56_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_56_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_56_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_56_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_57_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_57_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_57_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_57_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_57_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_58_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_58_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_58_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_58_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_58_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_59_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_59_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_59_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_59_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_59_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_60_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_60_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_60_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_60_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_60_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_61_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_61_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_61_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_61_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_61_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_62_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_62_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_62_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_62_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_62_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_63_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_63_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_63_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_63_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_63_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_64_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_64_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_64_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_64_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_64_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_65_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_65_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_65_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_65_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_65_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_66_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_66_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_66_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_66_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_66_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_67_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_67_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_67_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_67_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_67_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_68_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_68_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_68_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_68_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_68_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_69_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_69_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_69_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_69_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_69_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_70_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_70_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_70_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_70_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_70_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_71_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_71_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_71_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_71_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_71_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_72_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_72_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_72_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_72_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_72_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_73_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_73_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_73_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_73_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_73_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_74_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_74_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_74_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_74_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_74_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_75_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_75_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_75_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_75_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_75_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_76_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_76_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_76_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_76_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_76_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_77_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_77_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_77_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_77_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_77_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_78_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_78_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_78_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_78_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_78_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_79_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_79_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_79_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_79_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_79_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_80_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_80_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_80_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_80_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_80_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_81_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_81_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_81_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_81_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_81_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_82_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_82_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_82_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_82_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_82_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_83_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_83_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_83_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_83_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_83_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_84_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_84_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_84_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_84_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_84_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_85_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_85_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_85_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_85_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_85_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_86_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_86_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_86_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_86_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_86_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_87_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_87_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_87_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_87_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_87_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_88_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_88_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_88_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_88_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_88_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_89_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_89_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_89_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_89_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_89_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_90_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_90_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_90_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_90_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_90_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_91_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_91_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_91_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_91_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_91_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_92_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_92_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_92_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_92_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_92_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_93_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_93_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_93_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_93_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_93_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_94_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_94_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_94_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_94_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_94_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_95_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_95_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_95_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_95_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_95_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_96_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_96_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_96_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_96_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_96_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_97_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_97_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_97_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_97_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_97_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_98_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_98_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_98_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_98_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_98_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_99_re_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_99_re_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_99_re_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_99_re_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_99_re_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_0_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_0_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_0_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_0_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_0_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_1_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_1_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_1_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_1_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_1_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_2_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_2_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_2_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_2_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_2_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_3_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_3_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_3_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_3_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_3_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_4_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_4_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_4_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_4_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_4_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_5_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_5_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_5_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_5_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_5_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_6_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_6_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_6_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_6_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_6_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_7_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_7_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_7_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_7_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_7_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_8_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_8_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_8_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_8_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_8_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_9_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_9_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_9_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_9_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_9_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_10_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_10_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_10_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_10_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_10_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_11_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_11_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_11_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_11_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_11_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_12_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_12_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_12_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_12_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_12_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_13_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_13_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_13_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_13_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_13_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_14_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_14_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_14_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_14_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_14_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_15_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_15_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_15_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_15_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_15_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_16_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_16_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_16_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_16_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_16_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_17_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_17_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_17_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_17_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_17_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_18_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_18_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_18_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_18_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_18_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_19_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_19_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_19_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_19_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_19_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_20_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_20_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_20_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_20_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_20_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_21_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_21_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_21_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_21_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_21_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_22_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_22_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_22_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_22_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_22_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_23_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_23_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_23_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_23_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_23_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_24_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_24_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_24_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_24_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_24_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_25_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_25_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_25_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_25_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_25_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_26_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_26_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_26_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_26_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_26_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_27_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_27_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_27_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_27_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_27_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_28_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_28_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_28_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_28_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_28_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_29_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_29_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_29_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_29_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_29_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_30_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_30_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_30_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_30_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_30_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_31_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_31_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_31_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_31_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_31_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_32_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_32_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_32_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_32_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_32_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_33_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_33_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_33_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_33_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_33_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_34_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_34_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_34_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_34_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_34_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_35_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_35_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_35_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_35_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_35_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_36_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_36_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_36_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_36_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_36_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_37_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_37_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_37_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_37_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_37_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_38_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_38_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_38_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_38_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_38_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_39_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_39_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_39_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_39_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_39_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_40_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_40_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_40_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_40_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_40_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_41_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_41_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_41_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_41_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_41_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_42_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_42_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_42_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_42_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_42_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_43_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_43_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_43_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_43_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_43_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_44_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_44_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_44_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_44_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_44_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_45_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_45_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_45_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_45_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_45_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_46_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_46_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_46_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_46_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_46_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_47_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_47_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_47_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_47_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_47_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_48_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_48_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_48_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_48_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_48_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_49_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_49_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_49_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_49_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_49_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_50_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_50_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_50_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_50_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_50_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_51_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_51_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_51_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_51_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_51_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_52_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_52_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_52_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_52_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_52_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_53_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_53_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_53_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_53_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_53_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_54_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_54_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_54_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_54_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_54_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_55_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_55_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_55_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_55_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_55_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_56_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_56_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_56_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_56_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_56_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_57_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_57_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_57_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_57_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_57_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_58_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_58_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_58_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_58_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_58_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_59_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_59_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_59_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_59_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_59_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_60_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_60_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_60_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_60_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_60_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_61_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_61_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_61_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_61_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_61_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_62_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_62_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_62_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_62_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_62_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_63_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_63_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_63_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_63_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_63_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_64_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_64_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_64_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_64_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_64_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_65_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_65_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_65_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_65_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_65_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_66_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_66_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_66_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_66_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_66_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_67_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_67_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_67_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_67_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_67_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_68_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_68_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_68_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_68_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_68_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_69_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_69_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_69_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_69_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_69_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_70_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_70_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_70_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_70_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_70_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_71_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_71_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_71_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_71_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_71_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_72_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_72_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_72_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_72_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_72_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_73_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_73_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_73_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_73_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_73_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_74_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_74_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_74_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_74_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_74_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_75_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_75_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_75_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_75_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_75_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_76_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_76_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_76_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_76_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_76_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_77_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_77_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_77_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_77_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_77_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_78_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_78_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_78_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_78_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_78_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_79_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_79_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_79_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_79_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_79_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_80_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_80_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_80_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_80_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_80_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_81_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_81_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_81_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_81_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_81_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_82_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_82_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_82_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_82_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_82_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_83_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_83_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_83_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_83_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_83_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_84_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_84_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_84_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_84_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_84_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_85_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_85_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_85_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_85_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_85_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_86_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_86_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_86_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_86_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_86_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_87_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_87_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_87_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_87_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_87_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_88_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_88_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_88_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_88_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_88_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_89_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_89_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_89_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_89_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_89_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_90_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_90_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_90_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_90_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_90_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_91_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_91_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_91_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_91_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_91_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_92_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_92_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_92_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_92_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_92_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_93_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_93_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_93_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_93_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_93_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_94_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_94_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_94_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_94_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_94_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_95_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_95_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_95_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_95_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_95_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_96_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_96_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_96_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_96_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_96_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_97_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_97_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_97_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_97_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_97_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_98_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_98_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_98_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_98_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_98_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                        if (~AESL_inst_MUSIC_top.noiseSS_99_im_U.t_empty_n & (AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_ready | AESL_inst_MUSIC_top.MSG_U0.grp_matmul2_fu_1721.ap_idle) & ~AESL_inst_MUSIC_top.noiseSS_99_im_U.i_write) begin
                            chan_path = "MUSIC_top.noiseSS_99_im_U";
                            if (~AESL_inst_MUSIC_top.noiseSS_99_im_U.t_empty_n) begin
                                $display("//      Channel: %0s, EMPTY", chan_path);
                            end
                            else if (~AESL_inst_MUSIC_top.noiseSS_99_im_U.i_full_n) begin
                                $display("//      Channel: %0s, FULL", chan_path);
                            end
                            else begin
                                $display("//      Channel: %0s", chan_path);
                            end
                        end
                    end
                    endcase
                end
            endcase
        end
    endtask

    // report
    initial begin : report_deadlock
        integer cycle_id;
        integer cycle_comp_id;
        wait (reset == 1);
        cycle_id = 1;
        while (1) begin
            @ (negedge clock);
            case (CS_fsm)
                ST_DL_DETECTED: begin
                    cycle_comp_id = 2;
                    if (dl_detect_reg != dl_done_reg) begin
                        if (dl_done_reg == 'b0) begin
                            print_dl_head;
                        end
                        print_cycle_start(proc_path(origin), cycle_id);
                        cycle_id = cycle_id + 1;
                    end
                    else begin
                        print_dl_end(cycle_id - 1);
                        $finish;
                    end
                end
                ST_DL_REPORT: begin
                    if ((|(dl_in_vec)) & ~(|(dl_in_vec & origin_reg))) begin
                        print_cycle_chan_comp(dl_in_vec_reg, dl_in_vec);
                        print_cycle_proc_comp(proc_path(dl_in_vec), cycle_comp_id);
                        cycle_comp_id = cycle_comp_id + 1;
                    end
                    else begin
                        print_cycle_chan_comp(dl_in_vec_reg, dl_in_vec);
                    end
                end
            endcase
        end
    end
 
endmodule
