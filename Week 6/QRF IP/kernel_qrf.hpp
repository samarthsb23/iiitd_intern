/*
 * Copyright 2021 Xilinx, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#ifndef __KERNEL_QRF__
#define __KERNEL_QRF__

#include "hls_stream.h"
#include <ap_axi_sdata.h>

#include "dut_type.hpp"


const int N = 50;
const int A_ROWS = N;
const int A_COLS = N;
const bool TRANSPOSED_Q = QRF_TRANSPOSED_Q;



typedef hls::axis<MATRIX_IN_T, 0, 0, 0> axis_in_t;
typedef hls::axis<MATRIX_OUT_T, 0, 0, 0> axis_out_t;

extern "C" void kernel_qrf_3_arch1(
    hls::stream<axis_in_t>& matrixAStrm,
    hls::stream<axis_out_t>& matrixQStrm,
    hls::stream<axis_out_t>& matrixRStrm);

#endif
