
set PATH=
call C:/Xilinx_2024_ent/Vivado/2024.2/bin/xelab xil_defaultlib.apatb_matrixmul_100_unopt_top glbl -Oenable_linking_all_libraries  -prj matrixmul_100_unopt.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm  -L floating_point_v7_0_24 -L floating_point_v7_1_19 --lib "ieee_proposed=./ieee_proposed" -s matrixmul_100_unopt 
call C:/Xilinx_2024_ent/Vivado/2024.2/bin/xsim --noieeewarnings matrixmul_100_unopt -tclbatch matrixmul_100_unopt.tcl 

