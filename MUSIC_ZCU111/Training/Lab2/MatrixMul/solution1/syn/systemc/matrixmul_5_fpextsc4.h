// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __matrixmul_5_fpextsc4__HH__
#define __matrixmul_5_fpextsc4__HH__
#include "ACMP_fpext.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int dout_WIDTH>
SC_MODULE(matrixmul_5_fpextsc4) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_fpext<ID, 2, din0_WIDTH, dout_WIDTH> ACMP_fpext_U;

    SC_CTOR(matrixmul_5_fpextsc4):  ACMP_fpext_U ("ACMP_fpext_U") {
        ACMP_fpext_U.clk(clk);
        ACMP_fpext_U.reset(reset);
        ACMP_fpext_U.ce(ce);
        ACMP_fpext_U.din0(din0);
        ACMP_fpext_U.dout(dout);

    }

};

#endif //
