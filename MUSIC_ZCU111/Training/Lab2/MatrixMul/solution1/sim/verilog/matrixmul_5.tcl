
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set out_C_group [add_wave_group out_C(axis) -into $coutputgroup]
add_wave /apatb_matrixmul_5_top/AESL_inst_matrixmul_5/out_C_TLAST -into $out_C_group -color #ffff00 -radix hex
add_wave /apatb_matrixmul_5_top/AESL_inst_matrixmul_5/out_C_TREADY -into $out_C_group -color #ffff00 -radix hex
add_wave /apatb_matrixmul_5_top/AESL_inst_matrixmul_5/out_C_TVALID -into $out_C_group -color #ffff00 -radix hex
add_wave /apatb_matrixmul_5_top/AESL_inst_matrixmul_5/out_C_TDATA -into $out_C_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set in_A_group [add_wave_group in_A(axis) -into $cinputgroup]
add_wave /apatb_matrixmul_5_top/AESL_inst_matrixmul_5/in_A_TLAST -into $in_A_group -color #ffff00 -radix hex
add_wave /apatb_matrixmul_5_top/AESL_inst_matrixmul_5/in_A_TREADY -into $in_A_group -color #ffff00 -radix hex
add_wave /apatb_matrixmul_5_top/AESL_inst_matrixmul_5/in_A_TVALID -into $in_A_group -color #ffff00 -radix hex
add_wave /apatb_matrixmul_5_top/AESL_inst_matrixmul_5/in_A_TDATA -into $in_A_group -radix hex
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_matrixmul_5_top/AESL_inst_matrixmul_5/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_matrixmul_5_top/AESL_inst_matrixmul_5/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_matrixmul_5_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_matrixmul_5_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_matrixmul_5_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_matrixmul_5_top/ap_c_n_tvin_trans_num_in_A_V_data -into $tb_simstatus_group -radix hex
add_wave /apatb_matrixmul_5_top/ap_c_n_tvin_trans_num_in_A_V_last_V -into $tb_simstatus_group -radix hex
add_wave /apatb_matrixmul_5_top/ap_c_n_tvout_trans_num_out_C_V_data -into $tb_simstatus_group -radix hex
add_wave /apatb_matrixmul_5_top/ap_c_n_tvout_trans_num_out_C_V_last_V -into $tb_simstatus_group -radix hex
add_wave /apatb_matrixmul_5_top/LENGTH_in_A_V_data -into $tb_portdepth_group -radix hex
add_wave /apatb_matrixmul_5_top/LENGTH_in_A_V_last_V -into $tb_portdepth_group -radix hex
add_wave /apatb_matrixmul_5_top/LENGTH_out_C_V_data -into $tb_portdepth_group -radix hex
add_wave /apatb_matrixmul_5_top/LENGTH_out_C_V_last_V -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_out_C_group [add_wave_group out_C(axis) -into $tbcoutputgroup]
add_wave /apatb_matrixmul_5_top/out_C_TLAST -into $tb_out_C_group -color #ffff00 -radix hex
add_wave /apatb_matrixmul_5_top/out_C_TREADY -into $tb_out_C_group -color #ffff00 -radix hex
add_wave /apatb_matrixmul_5_top/out_C_TVALID -into $tb_out_C_group -color #ffff00 -radix hex
add_wave /apatb_matrixmul_5_top/out_C_TDATA -into $tb_out_C_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_in_A_group [add_wave_group in_A(axis) -into $tbcinputgroup]
add_wave /apatb_matrixmul_5_top/in_A_TLAST -into $tb_in_A_group -color #ffff00 -radix hex
add_wave /apatb_matrixmul_5_top/in_A_TREADY -into $tb_in_A_group -color #ffff00 -radix hex
add_wave /apatb_matrixmul_5_top/in_A_TVALID -into $tb_in_A_group -color #ffff00 -radix hex
add_wave /apatb_matrixmul_5_top/in_A_TDATA -into $tb_in_A_group -radix hex
save_wave_config matrixmul_5.wcfg
run all
quit

