create_project prj -part xczu28dr-ffvg1517-2-e -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "C:/Users/Samarth/Desktop/IIIT_Intern/Tutorial_matrix/matrix_8_unopt/matrix_8_unopt/hls/syn/verilog/matrixmul_100_unopt_fadd_32ns_32ns_32_4_full_dsp_1_ip.tcl"
source "C:/Users/Samarth/Desktop/IIIT_Intern/Tutorial_matrix/matrix_8_unopt/matrix_8_unopt/hls/syn/verilog/matrixmul_100_unopt_fmul_32ns_32ns_32_3_max_dsp_1_ip.tcl"
