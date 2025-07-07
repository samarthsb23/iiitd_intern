#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("in_A_TDATA", 32, hls_in, 0, "axis", "in_data", 1),
	Port_Property("in_A_TVALID", 1, hls_in, 3, "axis", "in_vld", 1),
	Port_Property("in_A_TREADY", 1, hls_out, 3, "axis", "in_acc", 1),
	Port_Property("in_A_TKEEP", 4, hls_in, 1, "axis", "in_data", 1),
	Port_Property("in_A_TSTRB", 4, hls_in, 2, "axis", "in_data", 1),
	Port_Property("in_A_TLAST", 1, hls_in, 3, "axis", "in_data", 1),
	Port_Property("out_C_TDATA", 32, hls_out, 4, "axis", "out_data", 1),
	Port_Property("out_C_TVALID", 1, hls_out, 7, "axis", "out_vld", 1),
	Port_Property("out_C_TREADY", 1, hls_in, 7, "axis", "out_acc", 1),
	Port_Property("out_C_TKEEP", 4, hls_out, 5, "axis", "out_data", 1),
	Port_Property("out_C_TSTRB", 4, hls_out, 6, "axis", "out_data", 1),
	Port_Property("out_C_TLAST", 1, hls_out, 7, "axis", "out_data", 1),
};
const char* HLS_Design_Meta::dut_name = "matrixmul_100_unopt";
