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

#include "kernel_svd.hpp"
#include "xf_solver_L1.hpp"
#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <ap_axi_sdata.h>

const int M = 50;
const int A_ROWS = M;
const int A_COLS = M;

typedef hls::axis<MATRIX_IN_T, 0, 0, 0> axis_float_t;

struct my_svd_config : xf::solver::svdTraits<ROWS, COLS, MATRIX_IN_T, MATRIX_OUT_T> {
    // static const int NUM_SWEEPS = 10;
    static const int ARCH = 1;
};

extern "C" void kernel_svd_new(hls::stream<axis_float_t>& in_A,
                            hls::stream<axis_float_t>& out_S,
                            hls::stream<axis_float_t>& out_U,
                            hls::stream<axis_float_t>& out_V) {

    #pragma HLS INTERFACE ap_ctrl_none port=return
    #pragma HLS INTERFACE axis register both port=in_A
    #pragma HLS INTERFACE axis register both port=out_S
    #pragma HLS INTERFACE axis register both port=out_U
    #pragma HLS INTERFACE axis register both port=out_V

    hls::stream<float> A_stream;
    hls::stream<float> S_stream;
    hls::stream<float> U_stream;
    hls::stream<float> V_stream;

    #pragma HLS stream variable=A_stream depth = N*N
    #pragma HLS stream variable=S_stream depth = N*N
    #pragma HLS stream variable=U_stream depth = N*N
    #pragma HLS stream variable=V_stream depth = N*N


    for (int i = 0; i < A_ROWS * A_COLS; i++) {
        axis_float_t in_elem = in_A.read();
        in_elem.keep = -1;
        in_elem.last = (i == A_ROWS * A_COLS - 1) ? 1 : 0;
        A_stream.write(in_elem.data);
    }


    xf::solver::svd<M, M, MATRIX_IN_T, MATRIX_OUT_T, my_svd_config>(A_stream, S_stream, U_stream,
                                                                          V_stream);

    for (int i = 0; i < A_ROWS * A_COLS; i++) {
        float s_val = S_stream.read();
        axis_float_t out_elem;
        out_elem.data = s_val;
        out_elem.keep = -1;
        out_elem.last = (i == A_ROWS * A_COLS - 1) ? 1 : 0;
        out_S.write(out_elem);
    }


    for (int i = 0; i < A_ROWS * A_COLS; i++) {
        float u_val = U_stream.read();
        axis_float_t out_elem;
        out_elem.data = u_val;
        out_elem.keep = -1;
        out_elem.last = (i == A_ROWS * A_COLS - 1) ? 1 : 0;
        out_U.write(out_elem);
    }

    for (int i = 0; i < A_ROWS * A_COLS; i++) {
        float v_val = V_stream.read();
        axis_float_t out_elem;
        out_elem.data = v_val;
        out_elem.keep = -1;
        out_elem.last = (i == A_ROWS * A_COLS - 1) ? 1 : 0;
        out_V.write(out_elem);
    }

}
