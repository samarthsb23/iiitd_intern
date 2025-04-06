#include <stdio.h>
#include <hls_stream.h>
#include <ap_int.h>

#define MATSIZE 8
#define solution2

#ifdef solution1
typedef float Mat_Dtype;
#endif

#ifdef solution2

typedef float Mat_Dtype;

#endif

struct axis_data{
	Mat_Dtype data;
	ap_uint<1> last;
};

void matrixmul_1(hls::stream<axis_data> &in_A, hls::stream<axis_data> &out_C);
void matrixmul_2(hls::stream<axis_data> &in_A, hls::stream<axis_data> &out_C);
