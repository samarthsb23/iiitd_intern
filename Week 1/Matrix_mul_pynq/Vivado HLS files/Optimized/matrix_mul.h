#include <stdio.h>
#include <hls_stream.h>
#include <ap_int.h>

#define MATSIZE 100

#include <ap_fixed.h>
typedef float Mat_Dtype;
typedef ap_fixed<22,13> Mat_DtypeOp;
struct axis_data{
	Mat_Dtype data;
	ap_uint<1> last;
};

void matrixmul_64(hls::stream<axis_data> &in_A, hls::stream<axis_data> &out_C);
