//#include <gmp.h>
#define __gmp_const const

#include <ap_fixed.h>
#include <ap_int.h>
//#include "hls/linear_algebra/utils/x_hls_complex.h"

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

typedef hls::axis<MATRIX_IN_T, 0, 0, 0> axis_in_t;
typedef hls::stream<axis_in_t> axis_in_stream;


typedef hls::axis<DATA_2, 0, 0, 0> axis_out_t;
typedef hls::stream<axis_out_t> axis_out_stream;



// Function Declarations
void inputdatamover(axis_in_stream &in,
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

void MSG(MATRIX_OUT_T noiseSS[N][N-T], axis_out_stream &out);

void MUSIC_top_2_opt(axis_in_stream &in, axis_out_stream &out);

