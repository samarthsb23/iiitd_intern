#include <stdio.h>
#include <hls_stream.h>
#include <ap_int.h>

#define MATSIZE 128

typedef float Mat_Dtype;

struct axis_data{
	Mat_Dtype data;
	ap_uint<1> last;
};


void matrixmul_opt_128(hls::stream<axis_data> &in_A, hls::stream<axis_data> &out_C);
