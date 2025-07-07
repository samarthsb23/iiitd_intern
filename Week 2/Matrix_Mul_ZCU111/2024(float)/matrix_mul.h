#include <stdio.h>
#include <hls_stream.h>
#include <ap_int.h>
#include <cstdint>
#include "hls_stream.h"
#include <ap_axi_sdata.h>
//float
#define MATSIZE 100

#include <ap_fixed.h>
typedef float Mat_Dtype;
//typedef ap_fixed<23,11>  Mat_DtypeOp;
typedef float Mat_DtypeOp;
typedef hls::axis<Mat_Dtype, 0, 0, 0> axis_float_t; //<data_type, user bits, id bits, destination bits>
typedef hls::stream<axis_float_t> axis_data; //creates a FIFO stream of AXI-compliant elements

void matrixmul_3(axis_data &in_A, axis_data &out_C);
