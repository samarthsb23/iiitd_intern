// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#include "MUSIC_top_noiseSStde.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

MUSIC_top_noiseSStde::~MUSIC_top_noiseSStde() {
    if (m_trace_file) sc_close_vcd_trace_file(m_trace_file);
}

void MUSIC_top_noiseSStde::proc_i_full_n() {
    i_full_n.write(full_n.read());
}

void MUSIC_top_noiseSStde::proc_t_empty_n() {
    t_empty_n.write(empty_n.read());
}

void MUSIC_top_noiseSStde::proc_memcore_addr() {
    memcore_iaddr = (i_address0.read(), iptr.read());
    memcore_taddr = (t_address0.read(), tptr.read());
}

void MUSIC_top_noiseSStde::proc_push_buf() {
    push_buf.write(i_ce.read() & i_write.read() & full_n.read());
}

void MUSIC_top_noiseSStde::proc_pop_buf() {
    pop_buf.write(t_ce.read() & t_read.read() & empty_n.read());
}

void MUSIC_top_noiseSStde::proc_iptr() {
    if (reset.read() == SC_LOGIC_1) {
        iptr.write(0);
    } else if (push_buf.read() == SC_LOGIC_1) {
        if (iptr.read() == BufferCount -1) {
            iptr.write(0);
        } else {
            iptr.write(iptr.read()+1);
        }
    }
}

void MUSIC_top_noiseSStde::proc_tptr() {
    if (reset.read() == SC_LOGIC_1) {
        tptr.write(0);
    } else if (pop_buf.read() == SC_LOGIC_1) {
        if (tptr.read() == BufferCount -1) {
            tptr.write(0);
        } else {
            tptr.write(tptr.read()+1);
        }
    }
}

void MUSIC_top_noiseSStde::proc_count() {
    if (reset.read() == SC_LOGIC_1) {
        count.write(0);
    } else if (push_buf.read() == SC_LOGIC_1 && pop_buf.read() == SC_LOGIC_0) {
        count.write(count.read()+1);
    } else if (push_buf.read() == SC_LOGIC_0 && pop_buf.read() == SC_LOGIC_1) {
        count.write(count.read()-1);
    }
}

void MUSIC_top_noiseSStde::proc_full_n() {
    if (reset.read() == SC_LOGIC_1) {
        full_n.write(SC_LOGIC_1);
    } else if (push_buf.read() == SC_LOGIC_1 && pop_buf.read() == SC_LOGIC_0
            && count.read() == BufferCount - 2) {
        full_n.write(SC_LOGIC_0);
    } else if (push_buf.read() == SC_LOGIC_0 && pop_buf.read() == SC_LOGIC_1) {
        full_n.write(SC_LOGIC_1);
    }
}

void MUSIC_top_noiseSStde::proc_empty_n() {
    if (reset.read() == SC_LOGIC_1) {
        empty_n.write(SC_LOGIC_0);
    } else if (push_buf.read() == SC_LOGIC_1 && pop_buf.read() == SC_LOGIC_0) {
        empty_n.write(SC_LOGIC_1);
    } else if (push_buf.read() == SC_LOGIC_0 && pop_buf.read() == SC_LOGIC_1
            && count.read() == 1) {
        empty_n.write(SC_LOGIC_0);
    }
}

