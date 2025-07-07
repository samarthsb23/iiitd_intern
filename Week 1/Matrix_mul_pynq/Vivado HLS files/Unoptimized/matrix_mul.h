#include <stdio.h>
#include <hls_stream.h>
#include <ap_int.h>

#define MATSIZE 32

typedef float Mat_Dtype;

struct axis_data{
	Mat_Dtype data;
	ap_uint<1> last;
};


void matrixmul_unopt_32(hls::stream<axis_data> &in_A, hls::stream<axis_data> &out_C);
