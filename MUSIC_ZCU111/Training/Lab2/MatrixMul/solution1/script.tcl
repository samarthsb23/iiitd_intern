############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project MatrixMul
set_top matrixmul_5
add_files MatrixMul/matrix_mul.h
add_files MatrixMul/matrix_mul.cpp
add_files -tb MatrixMul/matrix_mul_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020-clg484-1}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog -version 1.1.0
set_clock_uncertainty 1.25
#source "./MatrixMul/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -rtl verilog -format ip_catalog -version "1.1.0"
