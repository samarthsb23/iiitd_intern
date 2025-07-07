#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("val_r_TDATA", 8, hls_in, 0, "axis", "in_data", 1),
	Port_Property("val_r_TVALID", 1, hls_in, 0, "axis", "in_vld", 1),
	Port_Property("val_r_TREADY", 1, hls_out, 0, "axis", "in_acc", 1),
	Port_Property("in_vec_TDATA", 32, hls_in, 1, "axis", "in_data", 1),
	Port_Property("in_vec_TVALID", 1, hls_in, 2, "axis", "in_vld", 1),
	Port_Property("in_vec_TREADY", 1, hls_out, 2, "axis", "in_acc", 1),
	Port_Property("in_vec_TLAST", 1, hls_in, 2, "axis", "in_data", 1),
	Port_Property("out_vec_TDATA", 32, hls_out, 3, "axis", "out_data", 1),
	Port_Property("out_vec_TVALID", 1, hls_out, 4, "axis", "out_vld", 1),
	Port_Property("out_vec_TREADY", 1, hls_in, 4, "axis", "out_acc", 1),
	Port_Property("out_vec_TLAST", 1, hls_out, 4, "axis", "out_data", 1),
};
const char* HLS_Design_Meta::dut_name = "find";
