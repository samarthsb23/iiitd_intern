#include "find_ip.h"

void find(char val, hls::stream<axis_data> &in_vec, hls::stream<axis_data> &out_vec) {

	//Remove control interface
#pragma HLS INTERFACE ap_ctrl_none port=return

	//Create AXI Stream (valid, ready, data) for the ports
#pragma HLS INTERFACE axis register both port=val
#pragma HLS INTERFACE axis register both port=out_vec
#pragma HLS INTERFACE axis register both port=in_vec

	//Local data structure for data and last signals
axis_data local_read, local_write;

	for(int i = 0; i < dim; i++) {

		//read one sample of data and last over input stream interface
		local_read = in_vec.read(); //Read the input one at a time (AXI Stream)

		//Compare the data with val input and generate output data
		if(local_read.data == val) {
			local_write.data = (ap_uint <32>)1;
		}

		else {
			local_write.data = (ap_uint <32>)0;
		}


		//Generate last signal for ouptut stream
		if (i == dim - 1) {
			local_write.last = (ap_uint <1>)1;
		}

		else {
			local_write.last = (ap_uint <1>)0;
		}

		//Generate one AXI transaction for stream output using data and last signal

		out_vec.write(local_write);
	}
}


