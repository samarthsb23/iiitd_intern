//#include <gmp.h>
#define __gmp_const const
#include <ap_fixed.h>
#include <ap_int.h>
#include <iostream>
//#include "hls/linear_algebra/utils/x_hls_complex.h"
//#include "hls_linear_algebra.h"
#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <hls_stream.h>
#define _USE_MATH_DEFINES // for C++
#include <cmath>
#include <math.h>
#include "hls_math.h"


// Parameters
const int X = 200;
const int N = 100;
const int K = 2;
const int subarr = X + 1 - N;

typedef float DATA_1;
typedef hls::x_complex<DATA_1> MATRIX_IN_T;
typedef hls::axis<MATRIX_IN_T, 0, 0,0> axis_data_in;
typedef hls::stream<axis_data_in> axis_in_stream;
typedef hls::axis<DATA_1, 0, 0,0> axis_data_out;
typedef hls::stream<axis_data_out> axis_out_stream;


void inputdatamover(axis_in_stream  &in,
		MATRIX_IN_T out_strm[X]);

void AutoCorrelation(MATRIX_IN_T rec_sig[X],
		MATRIX_IN_T matrix1[N][N]);

void complex_sqrt(MATRIX_IN_T temp,
		MATRIX_IN_T *b_sqrt);

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

void EVD(MATRIX_IN_T A[N][N],
		MATRIX_IN_T S[N][K]);

void omega_est(MATRIX_IN_T S[N][K],
		DATA_1 est_omg[K]);

void outputmover(DATA_1 omega_est[K],
		axis_out_stream &out);

void ESPRIT_top(axis_in_stream &in, axis_out_stream &out);
