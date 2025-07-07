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
#ifndef _KERNEL_SVD_HPP_
#define _KERNEL_SVD_HPP_

#include "hls_stream.h"
#include <ap_axi_sdata.h>

#include "dut_type.hpp"

typedef hls::axis<MATRIX_IN_T, 0, 0, 0> axis_float_t;

extern "C" void kernel_svd_new(hls::stream<axis_float_t>& matrixAStream,
                            hls::stream<axis_float_t>& matrixSStream,
                            hls::stream<axis_float_t>& matrixUStream,
                            hls::stream<axis_float_t>& matrixVStream);

#endif
