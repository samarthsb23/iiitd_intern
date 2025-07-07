
`include "dump_file_agent.svh"
`include "csv_file_dump.svh"
`include "sample_agent.svh"
`include "loop_sample_agent.svh"
`include "sample_manager.svh"
`include "nodf_module_interface.svh"
`include "nodf_module_monitor.svh"
`include "pp_loop_interface.svh"
`include "pp_loop_monitor.svh"
`include "seq_loop_interface.svh"
`include "seq_loop_monitor.svh"
`timescale 1ns/1ps

// top module for dataflow related monitors
module dataflow_monitor(
input logic clock,
input logic reset,
input logic finish
);




    nodf_module_intf module_intf_1(clock,reset);
    assign module_intf_1.ap_start = 1'b0;
    assign module_intf_1.ap_ready = 1'b0;
    assign module_intf_1.ap_done = 1'b0;
    assign module_intf_1.ap_continue = 1'b0;
    assign module_intf_1.finish = finish;
    csv_file_dump mstatus_csv_dumper_1;
    nodf_module_monitor module_monitor_1;

    pp_loop_intf #(16) pp_loop_intf_1(clock,reset);
    assign pp_loop_intf_1.pre_loop_state0 = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_state2;
    assign pp_loop_intf_1.pre_states_valid = 1'b1;
    assign pp_loop_intf_1.post_loop_state0 = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_state5;
    assign pp_loop_intf_1.post_states_valid = 1'b1;
    assign pp_loop_intf_1.iter_start_state = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_pp0_stage0;
    assign pp_loop_intf_1.iter_start_enable = AESL_inst_matrixmul_100_unopt.ap_enable_reg_pp0_iter0;
    assign pp_loop_intf_1.iter_start_block = AESL_inst_matrixmul_100_unopt.ap_block_pp0_stage0_subdone;
    assign pp_loop_intf_1.iter_end_state = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_pp0_stage0;
    assign pp_loop_intf_1.iter_end_enable = AESL_inst_matrixmul_100_unopt.ap_enable_reg_pp0_iter1;
    assign pp_loop_intf_1.iter_end_block = AESL_inst_matrixmul_100_unopt.ap_block_pp0_stage0_subdone;
    assign pp_loop_intf_1.loop_quit_state = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_pp0_stage0;
    assign pp_loop_intf_1.quit_at_end = 1'b1;
    assign pp_loop_intf_1.cur_state = AESL_inst_matrixmul_100_unopt.ap_CS_fsm;
    assign pp_loop_intf_1.finish = finish;
    csv_file_dump pp_loop_csv_dumper_1;
    pp_loop_monitor #(16) pp_loop_monitor_1;
    pp_loop_intf #(16) pp_loop_intf_2(clock,reset);
    assign pp_loop_intf_2.pre_loop_state0 = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_state6;
    assign pp_loop_intf_2.pre_states_valid = 1'b1;
    assign pp_loop_intf_2.post_loop_state0 = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_state9;
    assign pp_loop_intf_2.post_states_valid = 1'b1;
    assign pp_loop_intf_2.iter_start_state = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_pp1_stage0;
    assign pp_loop_intf_2.iter_start_enable = AESL_inst_matrixmul_100_unopt.ap_enable_reg_pp1_iter0;
    assign pp_loop_intf_2.iter_start_block = AESL_inst_matrixmul_100_unopt.ap_block_pp1_stage0_subdone;
    assign pp_loop_intf_2.iter_end_state = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_pp1_stage0;
    assign pp_loop_intf_2.iter_end_enable = AESL_inst_matrixmul_100_unopt.ap_enable_reg_pp1_iter1;
    assign pp_loop_intf_2.iter_end_block = AESL_inst_matrixmul_100_unopt.ap_block_pp1_stage0_subdone;
    assign pp_loop_intf_2.loop_quit_state = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_pp1_stage0;
    assign pp_loop_intf_2.quit_at_end = 1'b1;
    assign pp_loop_intf_2.cur_state = AESL_inst_matrixmul_100_unopt.ap_CS_fsm;
    assign pp_loop_intf_2.finish = finish;
    csv_file_dump pp_loop_csv_dumper_2;
    pp_loop_monitor #(16) pp_loop_monitor_2;
    pp_loop_intf #(16) pp_loop_intf_3(clock,reset);
    assign pp_loop_intf_3.pre_loop_state0 = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_state11;
    assign pp_loop_intf_3.pre_states_valid = 1'b1;
    assign pp_loop_intf_3.post_loop_state0 = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_state21;
    assign pp_loop_intf_3.post_states_valid = 1'b1;
    assign pp_loop_intf_3.iter_start_state = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_pp2_stage0;
    assign pp_loop_intf_3.iter_start_enable = AESL_inst_matrixmul_100_unopt.ap_enable_reg_pp2_iter0;
    assign pp_loop_intf_3.iter_start_block = AESL_inst_matrixmul_100_unopt.ap_block_pp2_stage0_subdone;
    assign pp_loop_intf_3.iter_end_state = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_pp2_stage2;
    assign pp_loop_intf_3.iter_end_enable = AESL_inst_matrixmul_100_unopt.ap_enable_reg_pp2_iter2;
    assign pp_loop_intf_3.iter_end_block = AESL_inst_matrixmul_100_unopt.ap_block_pp2_stage2_subdone;
    assign pp_loop_intf_3.loop_quit_state = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_pp2_stage2;
    assign pp_loop_intf_3.quit_at_end = 1'b1;
    assign pp_loop_intf_3.cur_state = AESL_inst_matrixmul_100_unopt.ap_CS_fsm;
    assign pp_loop_intf_3.finish = finish;
    csv_file_dump pp_loop_csv_dumper_3;
    pp_loop_monitor #(16) pp_loop_monitor_3;
    pp_loop_intf #(16) pp_loop_intf_4(clock,reset);
    assign pp_loop_intf_4.pre_loop_state0 = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_state22;
    assign pp_loop_intf_4.pre_states_valid = 1'b1;
    assign pp_loop_intf_4.post_loop_state0 = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_state26;
    assign pp_loop_intf_4.post_states_valid = 1'b1;
    assign pp_loop_intf_4.iter_start_state = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_pp3_stage0;
    assign pp_loop_intf_4.iter_start_enable = AESL_inst_matrixmul_100_unopt.ap_enable_reg_pp3_iter0;
    assign pp_loop_intf_4.iter_start_block = AESL_inst_matrixmul_100_unopt.ap_block_pp3_stage0_subdone;
    assign pp_loop_intf_4.iter_end_state = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_pp3_stage0;
    assign pp_loop_intf_4.iter_end_enable = AESL_inst_matrixmul_100_unopt.ap_enable_reg_pp3_iter2;
    assign pp_loop_intf_4.iter_end_block = AESL_inst_matrixmul_100_unopt.ap_block_pp3_stage0_subdone;
    assign pp_loop_intf_4.loop_quit_state = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_pp3_stage0;
    assign pp_loop_intf_4.quit_at_end = 1'b1;
    assign pp_loop_intf_4.cur_state = AESL_inst_matrixmul_100_unopt.ap_CS_fsm;
    assign pp_loop_intf_4.finish = finish;
    csv_file_dump pp_loop_csv_dumper_4;
    pp_loop_monitor #(16) pp_loop_monitor_4;
    seq_loop_intf#(16) seq_loop_intf_1(clock,reset);
    assign seq_loop_intf_1.pre_loop_state0 = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_state1;
    assign seq_loop_intf_1.pre_states_valid = 1'b1;
    assign seq_loop_intf_1.post_loop_state0 = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_state6;
    assign seq_loop_intf_1.post_states_valid = 1'b1;
    assign seq_loop_intf_1.quit_loop_state0 = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_state2;
    assign seq_loop_intf_1.quit_states_valid = 1'b1;
    assign seq_loop_intf_1.cur_state = AESL_inst_matrixmul_100_unopt.ap_CS_fsm;
    assign seq_loop_intf_1.iter_start_state = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_state2;
    assign seq_loop_intf_1.iter_end_state0 = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_state5;
    assign seq_loop_intf_1.iter_end_states_valid = 1'b1;
    assign seq_loop_intf_1.one_state_loop = 1'b0;
    assign seq_loop_intf_1.one_state_block = 1'b0;
    assign seq_loop_intf_1.finish = finish;
    csv_file_dump seq_loop_csv_dumper_1;
    seq_loop_monitor #(16) seq_loop_monitor_1;
    seq_loop_intf#(16) seq_loop_intf_2(clock,reset);
    assign seq_loop_intf_2.pre_loop_state0 = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_state2;
    assign seq_loop_intf_2.pre_states_valid = 1'b1;
    assign seq_loop_intf_2.post_loop_state0 = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_state10;
    assign seq_loop_intf_2.post_states_valid = 1'b1;
    assign seq_loop_intf_2.quit_loop_state0 = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_state6;
    assign seq_loop_intf_2.quit_states_valid = 1'b1;
    assign seq_loop_intf_2.cur_state = AESL_inst_matrixmul_100_unopt.ap_CS_fsm;
    assign seq_loop_intf_2.iter_start_state = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_state6;
    assign seq_loop_intf_2.iter_end_state0 = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_state9;
    assign seq_loop_intf_2.iter_end_states_valid = 1'b1;
    assign seq_loop_intf_2.one_state_loop = 1'b0;
    assign seq_loop_intf_2.one_state_block = 1'b0;
    assign seq_loop_intf_2.finish = finish;
    csv_file_dump seq_loop_csv_dumper_2;
    seq_loop_monitor #(16) seq_loop_monitor_2;
    seq_loop_intf#(16) seq_loop_intf_3(clock,reset);
    assign seq_loop_intf_3.pre_loop_state0 = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_state10;
    assign seq_loop_intf_3.pre_states_valid = 1'b1;
    assign seq_loop_intf_3.post_loop_state0 = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_state10;
    assign seq_loop_intf_3.post_states_valid = 1'b1;
    assign seq_loop_intf_3.quit_loop_state0 = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_state11;
    assign seq_loop_intf_3.quit_states_valid = 1'b1;
    assign seq_loop_intf_3.cur_state = AESL_inst_matrixmul_100_unopt.ap_CS_fsm;
    assign seq_loop_intf_3.iter_start_state = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_state11;
    assign seq_loop_intf_3.iter_end_state0 = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_state21;
    assign seq_loop_intf_3.iter_end_states_valid = 1'b1;
    assign seq_loop_intf_3.one_state_loop = 1'b0;
    assign seq_loop_intf_3.one_state_block = 1'b0;
    assign seq_loop_intf_3.finish = finish;
    csv_file_dump seq_loop_csv_dumper_3;
    seq_loop_monitor #(16) seq_loop_monitor_3;
    seq_loop_intf#(16) seq_loop_intf_4(clock,reset);
    assign seq_loop_intf_4.pre_loop_state0 = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_state6;
    assign seq_loop_intf_4.pre_states_valid = 1'b1;
    assign seq_loop_intf_4.post_loop_state0 = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_state22;
    assign seq_loop_intf_4.post_states_valid = 1'b1;
    assign seq_loop_intf_4.quit_loop_state0 = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_state10;
    assign seq_loop_intf_4.quit_states_valid = 1'b1;
    assign seq_loop_intf_4.cur_state = AESL_inst_matrixmul_100_unopt.ap_CS_fsm;
    assign seq_loop_intf_4.iter_start_state = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_state10;
    assign seq_loop_intf_4.iter_end_state0 = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_state11;
    assign seq_loop_intf_4.iter_end_states_valid = 1'b1;
    assign seq_loop_intf_4.one_state_loop = 1'b0;
    assign seq_loop_intf_4.one_state_block = 1'b0;
    assign seq_loop_intf_4.finish = finish;
    csv_file_dump seq_loop_csv_dumper_4;
    seq_loop_monitor #(16) seq_loop_monitor_4;
    seq_loop_intf#(16) seq_loop_intf_5(clock,reset);
    assign seq_loop_intf_5.pre_loop_state0 = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_state10;
    assign seq_loop_intf_5.pre_states_valid = 1'b1;
    assign seq_loop_intf_5.post_loop_state0 = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_state1;
    assign seq_loop_intf_5.post_states_valid = 1'b1;
    assign seq_loop_intf_5.quit_loop_state0 = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_state22;
    assign seq_loop_intf_5.quit_states_valid = 1'b1;
    assign seq_loop_intf_5.cur_state = AESL_inst_matrixmul_100_unopt.ap_CS_fsm;
    assign seq_loop_intf_5.iter_start_state = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_state22;
    assign seq_loop_intf_5.iter_end_state0 = AESL_inst_matrixmul_100_unopt.ap_ST_fsm_state26;
    assign seq_loop_intf_5.iter_end_states_valid = 1'b1;
    assign seq_loop_intf_5.one_state_loop = 1'b0;
    assign seq_loop_intf_5.one_state_block = 1'b0;
    assign seq_loop_intf_5.finish = finish;
    csv_file_dump seq_loop_csv_dumper_5;
    seq_loop_monitor #(16) seq_loop_monitor_5;

    sample_manager sample_manager_inst;

initial begin
    sample_manager_inst = new;



    mstatus_csv_dumper_1 = new("./module_status1.csv");
    module_monitor_1 = new(module_intf_1,mstatus_csv_dumper_1);

    pp_loop_csv_dumper_1 = new("./pp_loop_status1.csv");
    pp_loop_monitor_1 = new(pp_loop_intf_1,pp_loop_csv_dumper_1);
    pp_loop_csv_dumper_2 = new("./pp_loop_status2.csv");
    pp_loop_monitor_2 = new(pp_loop_intf_2,pp_loop_csv_dumper_2);
    pp_loop_csv_dumper_3 = new("./pp_loop_status3.csv");
    pp_loop_monitor_3 = new(pp_loop_intf_3,pp_loop_csv_dumper_3);
    pp_loop_csv_dumper_4 = new("./pp_loop_status4.csv");
    pp_loop_monitor_4 = new(pp_loop_intf_4,pp_loop_csv_dumper_4);


    seq_loop_csv_dumper_1 = new("./seq_loop_status1.csv");
    seq_loop_monitor_1 = new(seq_loop_intf_1,seq_loop_csv_dumper_1);
    seq_loop_csv_dumper_2 = new("./seq_loop_status2.csv");
    seq_loop_monitor_2 = new(seq_loop_intf_2,seq_loop_csv_dumper_2);
    seq_loop_csv_dumper_3 = new("./seq_loop_status3.csv");
    seq_loop_monitor_3 = new(seq_loop_intf_3,seq_loop_csv_dumper_3);
    seq_loop_csv_dumper_4 = new("./seq_loop_status4.csv");
    seq_loop_monitor_4 = new(seq_loop_intf_4,seq_loop_csv_dumper_4);
    seq_loop_csv_dumper_5 = new("./seq_loop_status5.csv");
    seq_loop_monitor_5 = new(seq_loop_intf_5,seq_loop_csv_dumper_5);


    sample_manager_inst.add_one_monitor(module_monitor_1);
    sample_manager_inst.add_one_monitor(pp_loop_monitor_1);
    sample_manager_inst.add_one_monitor(pp_loop_monitor_2);
    sample_manager_inst.add_one_monitor(pp_loop_monitor_3);
    sample_manager_inst.add_one_monitor(pp_loop_monitor_4);
    sample_manager_inst.add_one_monitor(seq_loop_monitor_1);
    sample_manager_inst.add_one_monitor(seq_loop_monitor_2);
    sample_manager_inst.add_one_monitor(seq_loop_monitor_3);
    sample_manager_inst.add_one_monitor(seq_loop_monitor_4);
    sample_manager_inst.add_one_monitor(seq_loop_monitor_5);
    
    fork
        sample_manager_inst.start_monitor();
        last_transaction_done;
    join
    disable fork;

    sample_manager_inst.start_dump();
end

    task last_transaction_done();
        wait(reset == 0);
        while(1) begin
            if (finish == 1'b1) begin
                @(negedge clock);
                break;
            end
            else
                @(posedge clock);
        end
    endtask


endmodule
