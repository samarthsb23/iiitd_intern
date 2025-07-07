vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_19
vlib questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_19
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lib_pkg_v1_0_4
vlib questa_lib/msim/fifo_generator_v13_2_11
vlib questa_lib/msim/lib_fifo_v1_0_20
vlib questa_lib/msim/lib_srl_fifo_v1_0_4
vlib questa_lib/msim/lib_cdc_v1_0_3
vlib questa_lib/msim/axi_datamover_v5_1_35
vlib questa_lib/msim/axi_sg_v4_1_19
vlib questa_lib/msim/axi_dma_v7_1_34
vlib questa_lib/msim/xlconstant_v1_1_9
vlib questa_lib/msim/proc_sys_reset_v5_0_16
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_register_slice_v2_1_33
vlib questa_lib/msim/xbip_utils_v3_0_14
vlib questa_lib/msim/axi_utils_v2_0_10
vlib questa_lib/msim/xbip_pipe_v3_0_10
vlib questa_lib/msim/xbip_dsp48_wrapper_v3_0_6
vlib questa_lib/msim/mult_gen_v12_0_22
vlib questa_lib/msim/floating_point_v7_1_19
vlib questa_lib/msim/gigantic_mux
vlib questa_lib/msim/xlconcat_v2_1_6

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_19 questa_lib/msim/axi_vip_v1_1_19
vmap zynq_ultra_ps_e_vip_v1_0_19 questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_19
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lib_pkg_v1_0_4 questa_lib/msim/lib_pkg_v1_0_4
vmap fifo_generator_v13_2_11 questa_lib/msim/fifo_generator_v13_2_11
vmap lib_fifo_v1_0_20 questa_lib/msim/lib_fifo_v1_0_20
vmap lib_srl_fifo_v1_0_4 questa_lib/msim/lib_srl_fifo_v1_0_4
vmap lib_cdc_v1_0_3 questa_lib/msim/lib_cdc_v1_0_3
vmap axi_datamover_v5_1_35 questa_lib/msim/axi_datamover_v5_1_35
vmap axi_sg_v4_1_19 questa_lib/msim/axi_sg_v4_1_19
vmap axi_dma_v7_1_34 questa_lib/msim/axi_dma_v7_1_34
vmap xlconstant_v1_1_9 questa_lib/msim/xlconstant_v1_1_9
vmap proc_sys_reset_v5_0_16 questa_lib/msim/proc_sys_reset_v5_0_16
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_register_slice_v2_1_33 questa_lib/msim/axi_register_slice_v2_1_33
vmap xbip_utils_v3_0_14 questa_lib/msim/xbip_utils_v3_0_14
vmap axi_utils_v2_0_10 questa_lib/msim/axi_utils_v2_0_10
vmap xbip_pipe_v3_0_10 questa_lib/msim/xbip_pipe_v3_0_10
vmap xbip_dsp48_wrapper_v3_0_6 questa_lib/msim/xbip_dsp48_wrapper_v3_0_6
vmap mult_gen_v12_0_22 questa_lib/msim/mult_gen_v12_0_22
vmap floating_point_v7_1_19 questa_lib/msim/floating_point_v7_1_19
vmap gigantic_mux questa_lib/msim/gigantic_mux
vmap xlconcat_v2_1_6 questa_lib/msim/xlconcat_v2_1_6

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/include" \
"C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/ec67/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6f8f/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f0b6/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0127/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/814a/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/1017/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/52c0/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/include" \
"C:/Xilinx_2024_ent/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx_2024_ent/Vivado/2024.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx_2024_ent/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx_2024_ent/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/ec67/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6f8f/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f0b6/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0127/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/814a/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/1017/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/52c0/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_19  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/ec67/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6f8f/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f0b6/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0127/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/814a/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/1017/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/52c0/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/8c45/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_19  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/ec67/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6f8f/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f0b6/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0127/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/814a/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/1017/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/52c0/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6f8f/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/ec67/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6f8f/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f0b6/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0127/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/814a/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/1017/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/52c0/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/matrix/ip/matrix_zynq_ultra_ps_e_0_0/sim/matrix_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vcom -work lib_pkg_v1_0_4  -93  \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_11  -incr -mfcu  "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/ec67/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6f8f/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f0b6/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0127/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/814a/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/1017/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/52c0/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6080/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_11  -93  \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6080/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_11  -incr -mfcu  "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/ec67/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6f8f/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f0b6/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0127/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/814a/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/1017/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/52c0/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6080/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_20  -93  \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e160/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_4  -93  \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_3  -93  \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_35  -93  \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/4277/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_19  -93  \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/fc5d/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_34  -93  \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/70ff/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/matrix/ip/matrix_axi_dma_0_0/sim/matrix_axi_dma_0_0.vhd" \

vlog -work xlconstant_v1_1_9  -incr -mfcu  "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/ec67/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6f8f/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f0b6/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0127/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/814a/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/1017/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/52c0/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/ec67/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6f8f/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f0b6/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0127/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/814a/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/1017/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/52c0/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_0/sim/bd_fb28_one_0.v" \

vcom -work proc_sys_reset_v5_0_16  -93  \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_1/sim/bd_fb28_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/ec67/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6f8f/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f0b6/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0127/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/814a/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/1017/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/52c0/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/ec67/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6f8f/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f0b6/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0127/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/814a/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/1017/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/52c0/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_2/sim/bd_fb28_arinsw_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_3/sim/bd_fb28_rinsw_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_4/sim/bd_fb28_awinsw_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_5/sim/bd_fb28_winsw_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_6/sim/bd_fb28_binsw_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_7/sim/bd_fb28_aroutsw_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_8/sim/bd_fb28_routsw_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_9/sim/bd_fb28_awoutsw_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_10/sim/bd_fb28_woutsw_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_11/sim/bd_fb28_boutsw_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/ec67/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6f8f/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f0b6/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0127/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/814a/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/1017/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/52c0/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0127/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/ec67/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6f8f/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f0b6/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0127/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/814a/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/1017/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/52c0/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_12/sim/bd_fb28_arni_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_13/sim/bd_fb28_rni_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_14/sim/bd_fb28_awni_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_15/sim/bd_fb28_wni_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_16/sim/bd_fb28_bni_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/ec67/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6f8f/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f0b6/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0127/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/814a/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/1017/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/52c0/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f49a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/ec67/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6f8f/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f0b6/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0127/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/814a/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/1017/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/52c0/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_17/sim/bd_fb28_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/ec67/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6f8f/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f0b6/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0127/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/814a/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/1017/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/52c0/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/ec67/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6f8f/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f0b6/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0127/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/814a/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/1017/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/52c0/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_18/sim/bd_fb28_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/ec67/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6f8f/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f0b6/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0127/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/814a/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/1017/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/52c0/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/63ed/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/ec67/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6f8f/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f0b6/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0127/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/814a/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/1017/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/52c0/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_19/sim/bd_fb28_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/ec67/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6f8f/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f0b6/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0127/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/814a/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/1017/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/52c0/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/ec67/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6f8f/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f0b6/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0127/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/814a/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/1017/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/52c0/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_20/sim/bd_fb28_s00a2s_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_21/sim/bd_fb28_sarn_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_22/sim/bd_fb28_srn_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_23/sim/bd_fb28_sawn_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_24/sim/bd_fb28_swn_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_25/sim/bd_fb28_sbn_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_26/sim/bd_fb28_s01mmu_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_27/sim/bd_fb28_s01tr_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_28/sim/bd_fb28_s01sic_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_29/sim/bd_fb28_s01a2s_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_30/sim/bd_fb28_sarn_1.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_31/sim/bd_fb28_srn_1.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_32/sim/bd_fb28_sawn_1.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_33/sim/bd_fb28_swn_1.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_34/sim/bd_fb28_sbn_1.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/ec67/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6f8f/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f0b6/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0127/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/814a/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/1017/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/52c0/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/ec67/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6f8f/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f0b6/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0127/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/814a/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/1017/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/52c0/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_35/sim/bd_fb28_m00s2a_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_36/sim/bd_fb28_m00arn_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_37/sim/bd_fb28_m00rn_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_38/sim/bd_fb28_m00awn_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_39/sim/bd_fb28_m00wn_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_40/sim/bd_fb28_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/ec67/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6f8f/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f0b6/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0127/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/814a/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/1017/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/52c0/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/37bc/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/ec67/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6f8f/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f0b6/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0127/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/814a/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/1017/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/52c0/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/ip/ip_41/sim/bd_fb28_m00e_0.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/ec67/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6f8f/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f0b6/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0127/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/814a/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/1017/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/52c0/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/matrix/ip/matrix_axi_smc_0/bd_0/sim/bd_fb28.v" \

vlog -work axi_register_slice_v2_1_33  -incr -mfcu  "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/ec67/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6f8f/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f0b6/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0127/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/814a/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/1017/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/52c0/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/3ee4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/ec67/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6f8f/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f0b6/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0127/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/814a/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/1017/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/52c0/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/matrix/ip/matrix_axi_smc_0/sim/matrix_axi_smc_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/matrix/ip/matrix_rst_ps8_0_99M_0/sim/matrix_rst_ps8_0_99M_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/ec67/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6f8f/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f0b6/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0127/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/814a/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/1017/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/52c0/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/matrix/ip/matrix_axi_smc_1_0/bd_0/ip/ip_0/sim/bd_a737_one_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/matrix/ip/matrix_axi_smc_1_0/bd_0/ip/ip_1/sim/bd_a737_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/ec67/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6f8f/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f0b6/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0127/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/814a/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/1017/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/52c0/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/matrix/ip/matrix_axi_smc_1_0/bd_0/ip/ip_2/sim/bd_a737_arsw_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_1_0/bd_0/ip/ip_3/sim/bd_a737_rsw_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_1_0/bd_0/ip/ip_4/sim/bd_a737_awsw_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_1_0/bd_0/ip/ip_5/sim/bd_a737_wsw_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_1_0/bd_0/ip/ip_6/sim/bd_a737_bsw_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_1_0/bd_0/ip/ip_7/sim/bd_a737_s00mmu_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_1_0/bd_0/ip/ip_8/sim/bd_a737_s00tr_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_1_0/bd_0/ip/ip_9/sim/bd_a737_s00sic_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_1_0/bd_0/ip/ip_10/sim/bd_a737_s00a2s_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_1_0/bd_0/ip/ip_11/sim/bd_a737_sarn_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_1_0/bd_0/ip/ip_12/sim/bd_a737_srn_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_1_0/bd_0/ip/ip_13/sim/bd_a737_s01mmu_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_1_0/bd_0/ip/ip_14/sim/bd_a737_s01tr_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_1_0/bd_0/ip/ip_15/sim/bd_a737_s01sic_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_1_0/bd_0/ip/ip_16/sim/bd_a737_s01a2s_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_1_0/bd_0/ip/ip_17/sim/bd_a737_sawn_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_1_0/bd_0/ip/ip_18/sim/bd_a737_swn_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_1_0/bd_0/ip/ip_19/sim/bd_a737_sbn_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_1_0/bd_0/ip/ip_20/sim/bd_a737_m00s2a_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_1_0/bd_0/ip/ip_21/sim/bd_a737_m00arn_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_1_0/bd_0/ip/ip_22/sim/bd_a737_m00rn_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_1_0/bd_0/ip/ip_23/sim/bd_a737_m00awn_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_1_0/bd_0/ip/ip_24/sim/bd_a737_m00wn_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_1_0/bd_0/ip/ip_25/sim/bd_a737_m00bn_0.sv" \
"../../../bd/matrix/ip/matrix_axi_smc_1_0/bd_0/ip/ip_26/sim/bd_a737_m00e_0.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/ec67/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6f8f/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f0b6/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0127/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/814a/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/1017/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/52c0/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/matrix/ip/matrix_axi_smc_1_0/bd_0/sim/bd_a737.v" \
"../../../bd/matrix/ip/matrix_axi_smc_1_0/sim/matrix_axi_smc_1_0.v" \

vcom -work xbip_utils_v3_0_14  -93  \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/b27f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_10  -93  \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/7e77/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_10  -93  \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/d531/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_6  -93  \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f596/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_22  -93  \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e765/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_19  -93  \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/bf3d/hdl/floating_point_v7_1_rfs.vhd" \

vlog -work floating_point_v7_1_19  -incr -mfcu  "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/ec67/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6f8f/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f0b6/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0127/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/814a/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/1017/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/52c0/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/bf3d/hdl/floating_point_v7_1_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/ec67/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6f8f/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f0b6/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0127/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/814a/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/1017/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/52c0/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/ip/matrixmul_8_unopt_fadd_32ns_32ns_32_4_full_dsp_1_ip.v" \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/ip/matrixmul_8_unopt_fmul_32ns_32ns_32_3_max_dsp_1_ip.v" \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog/matrixmul_8_unopt_fadd_32ns_32ns_32_4_full_dsp_1.v" \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog/matrixmul_8_unopt_flow_control_loop_pipe_sequential_init.v" \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog/matrixmul_8_unopt_fmul_32ns_32ns_32_3_max_dsp_1.v" \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog/matrixmul_8_unopt_hls_deadlock_idx0_monitor.v" \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog/matrixmul_8_unopt_matrixmul_8_unopt_Pipeline_loop3.v" \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog/matrixmul_8_unopt_matrixmul_8_unopt_Pipeline_loop_input_A2.v" \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog/matrixmul_8_unopt_matrixmul_8_unopt_Pipeline_loop_input_B2.v" \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog/matrixmul_8_unopt_matrixmul_8_unopt_Pipeline_loop_output_C2.v" \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog/matrixmul_8_unopt_regslice_both.v" \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog/matrixmul_8_unopt_sparsemux_17_3_32_1_1.v" \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog/matrixmul_8_unopt.v" \
"../../../bd/matrix/ip/matrix_matrixmul_8_unopt_0_1/sim/matrix_matrixmul_8_unopt_0_1.v" \
"../../../bd/matrix/ip/matrix_system_ila_0_0/bd_0/ip/ip_0/sim/bd_d138_ila_lib_0.v" \

vlog -work gigantic_mux  -incr -mfcu  "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/ec67/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6f8f/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f0b6/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0127/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/814a/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/1017/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/52c0/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/96a0/hdl/gigantic_mux_v1_0_cntr.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/ec67/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6f8f/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f0b6/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0127/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/814a/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/1017/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/52c0/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/matrix/ip/matrix_system_ila_0_0/bd_0/ip/ip_1/bd_d138_g_inst_0_gigantic_mux.v" \
"../../../bd/matrix/ip/matrix_system_ila_0_0/bd_0/ip/ip_1/sim/bd_d138_g_inst_0.v" \

vlog -work xlconcat_v2_1_6  -incr -mfcu  "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/ec67/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6f8f/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f0b6/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0127/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/814a/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/1017/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/52c0/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6120/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/ec67/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/6f8f/hdl" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/f0b6/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/0127/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/e6f2/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/814a/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/1017/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/52c0/hdl/verilog" "+incdir+../../../../demo_matrix.gen/sources_1/bd/matrix/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx_2024_ent/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/matrix/ip/matrix_system_ila_0_0/bd_0/ip/ip_2/sim/bd_d138_slot_0_aw_0.v" \
"../../../bd/matrix/ip/matrix_system_ila_0_0/bd_0/ip/ip_3/sim/bd_d138_slot_0_w_0.v" \
"../../../bd/matrix/ip/matrix_system_ila_0_0/bd_0/ip/ip_4/sim/bd_d138_slot_0_b_0.v" \
"../../../bd/matrix/ip/matrix_system_ila_0_0/bd_0/ip/ip_5/sim/bd_d138_slot_0_ar_0.v" \
"../../../bd/matrix/ip/matrix_system_ila_0_0/bd_0/ip/ip_6/sim/bd_d138_slot_0_r_0.v" \
"../../../bd/matrix/ip/matrix_system_ila_0_0/bd_0/ip/ip_7/sim/bd_d138_slot_1_aw_0.v" \
"../../../bd/matrix/ip/matrix_system_ila_0_0/bd_0/ip/ip_8/sim/bd_d138_slot_1_w_0.v" \
"../../../bd/matrix/ip/matrix_system_ila_0_0/bd_0/ip/ip_9/sim/bd_d138_slot_1_b_0.v" \
"../../../bd/matrix/ip/matrix_system_ila_0_0/bd_0/ip/ip_10/sim/bd_d138_slot_1_ar_0.v" \
"../../../bd/matrix/ip/matrix_system_ila_0_0/bd_0/ip/ip_11/sim/bd_d138_slot_1_r_0.v" \
"../../../bd/matrix/ip/matrix_system_ila_0_0/bd_0/ip/ip_12/sim/bd_d138_slot_3_aw_0.v" \
"../../../bd/matrix/ip/matrix_system_ila_0_0/bd_0/ip/ip_13/sim/bd_d138_slot_3_w_0.v" \
"../../../bd/matrix/ip/matrix_system_ila_0_0/bd_0/ip/ip_14/sim/bd_d138_slot_3_b_0.v" \
"../../../bd/matrix/ip/matrix_system_ila_0_0/bd_0/ip/ip_15/sim/bd_d138_slot_3_ar_0.v" \
"../../../bd/matrix/ip/matrix_system_ila_0_0/bd_0/ip/ip_16/sim/bd_d138_slot_3_r_0.v" \
"../../../bd/matrix/ip/matrix_system_ila_0_0/bd_0/sim/bd_d138.v" \
"../../../bd/matrix/ip/matrix_system_ila_0_0/sim/matrix_system_ila_0_0.v" \
"../../../bd/matrix/sim/matrix.v" \

vlog -work xil_defaultlib \
"glbl.v"

