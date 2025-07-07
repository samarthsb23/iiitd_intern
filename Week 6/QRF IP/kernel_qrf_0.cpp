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

#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include "dut_type.hpp"
#include "xf_solver_L1.hpp"
#include "kernel_qrf.hpp"

typedef hls::axis<MATRIX_IN_T, 0, 0, 0> axis_float_t;

void kernel_qrf_3_arch0(
    hls::stream<axis_float_t>& in_A,
    hls::stream<axis_float_t>& out_Q,
    hls::stream<axis_float_t>& out_R) {
    
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE axis register both port=in_A
#pragma HLS INTERFACE axis register both port=out_Q
#pragma HLS INTERFACE axis register both port=out_R

    hls::stream<float> A_stream;
    hls::stream<float> Q_stream;
    hls::stream<float> R_stream;

    #pragma HLS stream variable=A_stream depth = N*N
    #pragma HLS stream variable=Q_stream depth = N*N
    #pragma HLS stream variable=R_stream depth = N*N



    // Read A matrix from input AXIS and write into float stream
    for (int i = 0; i < A_ROWS * A_COLS; i++) {
        axis_float_t in_elem = in_A.read();
        in_elem.keep = -1;
        in_elem.last = (i == A_ROWS * A_COLS - 1) ? 1 : 0;
        A_stream.write(in_elem.data);
        //keep,last
    }



    xf::solver::qrf<TRANSPOSED_Q, A_ROWS, A_COLS, float, float, xf::solver::qrfTraits>(
        A_stream, Q_stream, R_stream);

    for (int i = 0; i < A_ROWS * A_COLS; i++) {
        float q_val = Q_stream.read();
        axis_float_t out_elem;
        out_elem.data = q_val;
        out_elem.keep = -1;
        out_elem.last = (i == A_ROWS * A_COLS - 1) ? 1 : 0;
        out_Q.write(out_elem);
    }


    for (int i = 0; i < A_ROWS * A_COLS; i++) {
        float r_val = R_stream.read();
        axis_float_t out_elem;
        out_elem.data = r_val;
        out_elem.keep = -1;
        out_elem.last = (i == A_ROWS * A_COLS - 1) ? 1 : 0;
        out_R.write(out_elem);
    }
}


