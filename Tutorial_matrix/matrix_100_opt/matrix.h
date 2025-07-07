#include <stdio.h>
#include <hls_stream.h>
#include <ap_int.h>
#include <cstdint>
#include <ap_axi_sdata.h>
#include <math.h>
#include <stdlib.h>
#include <time.h>

#define MATSIZE 32

typedef float Mat_Dtype;

typedef hls::axis<Mat_Dtype, 0, 0, 0> axis_float_t; //<data_type, user bits, id bits, destination bits>
typedef hls::stream<axis_float_t> axis_data; //creates a FIFO stream of AXI-compliant elements

void matrixmul_100_opt(axis_data &in_A, axis_data &out_C);