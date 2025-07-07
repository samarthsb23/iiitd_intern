#include <stdio.h>
#include <hls_stream.h>
#include <ap_int.h>

#define MATSIZE 8
#define solution3

#ifdef solution1
typedef float Mat_Dtype;
#endif

#ifdef solution2

typedef int Mat_Dtype;

#endif

#ifdef solution3

typedef int Mat_Dtype;

#endif

#ifdef solution4

#include <hls_half.h>
typedef int Mat_Dtype;
typedef half Mat_DtypeOp;

#endif

#ifdef solution5

#include <ap_fixed.h>
typedef int Mat_Dtype;
typedef ap_fixed<22,12> Mat_DtypeOp;

#endif

struct axis_data{
	Mat_Dtype data;
	ap_uint<1> last;
};

void matrixmul_1(hls::stream<axis_data> &in_A, hls::stream<axis_data> &out_C);
void matrixmul_2(hls::stream<axis_data> &in_A, hls::stream<axis_data> &out_C);
void matrixmul_3(hls::stream<axis_data> &in_A, hls::stream<axis_data> &out_C);
void matrixmul_4(hls::stream<axis_data> &in_A, hls::stream<axis_data> &out_C);
void matrixmul_5(hls::stream<axis_data> &in_A, hls::stream<axis_data> &out_C);
