//#include <gmp.h>
#define __gmp_const const

#include <ap_fixed.h>
#include <ap_int.h>
#include "hls/linear_algebra/utils/x_hls_complex.h"
#include "hls_linear_algebra.h"
#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <hls_stream.h>
#define _USE_MATH_DEFINES // for C++
#include <cmath>
#include <math.h>
#include "hls_math.h"

// Data Types
typedef double DATA_1;
typedef hls::x_complex<DATA_1> MATRIX_IN_T;

typedef float DATA_2;
typedef hls::x_complex<DATA_2> MATRIX_OUT_T;

// Parameters
const int X = 200;
const int N = 100;
const int L = 200;
const int T = 2;

struct axis_data_in{
	MATRIX_IN_T data;
	ap_uint<1> last;
};

struct axis_data_out{
	DATA_2 data;
	ap_uint<1> last;
};


// Function Declarations
void inputdatamover(hls::stream<axis_data_in> &in,
		MATRIX_IN_T out_strm[X]);

void AutoCorrelation(MATRIX_IN_T rec_sig[X],
		MATRIX_IN_T matrix1[N][N]) ;

void givensrotation(MATRIX_IN_T a,
		MATRIX_IN_T b,
		MATRIX_IN_T *cos_theta,
		MATRIX_IN_T *sin_theta);

void MalM(MATRIX_IN_T A[N],
		MATRIX_IN_T B[N],
		MATRIX_IN_T cos_theta,
		MATRIX_IN_T sin_theta,
		MATRIX_IN_T C[N],
		MATRIX_IN_T D[N]);

void qr_givens(MATRIX_IN_T A[N][N],
		MATRIX_OUT_T noiseSS[N][N-T]);

void matmul2(MATRIX_OUT_T pseudo_sig[N],
		MATRIX_OUT_T noiseSS[N][N-T],
		DATA_2 *spec);

void MSG(MATRIX_OUT_T noiseSS[N][N-T],
		hls::stream<axis_data_out> &out);

void MUSIC_top(hls::stream<axis_data_in> &in,
		hls::stream<axis_data_out> &out);
