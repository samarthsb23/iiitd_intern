#include "qr_givens.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void qr_givens::thread_A_im_address0() {
    A_im_address0 =  (sc_lv<14>) (zext_ln85_1_fu_4059_p1.read());
}

void qr_givens::thread_A_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        A_im_ce0 = ap_const_logic_1;
    } else {
        A_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_A_re_address0() {
    A_re_address0 =  (sc_lv<14>) (zext_ln85_1_fu_4059_p1.read());
}

void qr_givens::thread_A_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        A_re_ce0 = ap_const_logic_1;
    } else {
        A_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_Q_im_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state114.read())) {
        Q_im_address0 =  (sc_lv<14>) (zext_ln101_3_fu_4241_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        Q_im_address0 =  (sc_lv<14>) (zext_ln85_1_reg_4652.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        Q_im_address0 = grp_MalM_fu_3708_A_im_address0.read();
    } else {
        Q_im_address0 = "XXXXXXXXXXXXXX";
    }
}

void qr_givens::thread_Q_im_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state116.read())) {
        Q_im_address1 =  (sc_lv<14>) (zext_ln87_1_fu_4281_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state114.read())) {
        Q_im_address1 =  (sc_lv<14>) (sext_ln103_fu_4248_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        Q_im_address1 = grp_MalM_fu_3708_A_im_address1.read();
    } else {
        Q_im_address1 = "XXXXXXXXXXXXXX";
    }
}

void qr_givens::thread_Q_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state114.read()))) {
        Q_im_ce0 = ap_const_logic_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        Q_im_ce0 = grp_MalM_fu_3708_A_im_ce0.read();
    } else {
        Q_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_Q_im_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state116.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state114.read()))) {
        Q_im_ce1 = ap_const_logic_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        Q_im_ce1 = grp_MalM_fu_3708_A_im_ce1.read();
    } else {
        Q_im_ce1 = ap_const_logic_0;
    }
}

void qr_givens::thread_Q_im_d0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state114.read())) {
        Q_im_d0 = temp2i_1_q0.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        Q_im_d0 = ap_const_lv64_0;
    } else {
        Q_im_d0 =  (sc_lv<64>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void qr_givens::thread_Q_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state114.read()))) {
        Q_im_we0 = ap_const_logic_1;
    } else {
        Q_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_Q_im_we1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state114.read())) {
        Q_im_we1 = ap_const_logic_1;
    } else {
        Q_im_we1 = ap_const_logic_0;
    }
}

void qr_givens::thread_Q_re_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state114.read())) {
        Q_re_address0 =  (sc_lv<14>) (zext_ln101_3_fu_4241_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        Q_re_address0 =  (sc_lv<14>) (zext_ln85_1_fu_4059_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        Q_re_address0 = grp_MalM_fu_3708_A_re_address0.read();
    } else {
        Q_re_address0 = "XXXXXXXXXXXXXX";
    }
}

void qr_givens::thread_Q_re_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state116.read())) {
        Q_re_address1 =  (sc_lv<14>) (zext_ln87_1_fu_4281_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state114.read())) {
        Q_re_address1 =  (sc_lv<14>) (sext_ln103_fu_4248_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        Q_re_address1 = grp_MalM_fu_3708_A_re_address1.read();
    } else {
        Q_re_address1 = "XXXXXXXXXXXXXX";
    }
}

void qr_givens::thread_Q_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state114.read()))) {
        Q_re_ce0 = ap_const_logic_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        Q_re_ce0 = grp_MalM_fu_3708_A_re_ce0.read();
    } else {
        Q_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_Q_re_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state116.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state114.read()))) {
        Q_re_ce1 = ap_const_logic_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        Q_re_ce1 = grp_MalM_fu_3708_A_re_ce1.read();
    } else {
        Q_re_ce1 = ap_const_logic_0;
    }
}

void qr_givens::thread_Q_re_d0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state114.read())) {
        Q_re_d0 = temp2i_0_q0.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        Q_re_d0 = select_ln86_fu_4072_p3.read();
    } else {
        Q_re_d0 =  (sc_lv<64>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void qr_givens::thread_Q_re_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
          esl_seteq<1,1,1>(icmp_ln84_fu_4037_p2.read(), ap_const_lv1_0)) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state114.read()))) {
        Q_re_we0 = ap_const_logic_1;
    } else {
        Q_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_Q_re_we1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state114.read())) {
        Q_re_we1 = ap_const_logic_1;
    } else {
        Q_re_we1 = ap_const_logic_0;
    }
}

void qr_givens::thread_R_im_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state114.read())) {
        R_im_address0 =  (sc_lv<14>) (sext_ln103_fu_4248_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        R_im_address0 = R_im_addr_reg_4697.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        R_im_address0 =  (sc_lv<14>) (zext_ln85_1_reg_4652.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        R_im_address0 = grp_MalM_fu_3688_A_im_address0.read();
    } else {
        R_im_address0 = "XXXXXXXXXXXXXX";
    }
}

void qr_givens::thread_R_im_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state114.read())) {
        R_im_address1 =  (sc_lv<14>) (zext_ln101_3_fu_4241_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        R_im_address1 =  (sc_lv<14>) (sext_ln93_fu_4143_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        R_im_address1 = grp_MalM_fu_3688_A_im_address1.read();
    } else {
        R_im_address1 = "XXXXXXXXXXXXXX";
    }
}

void qr_givens::thread_R_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state114.read()))) {
        R_im_ce0 = ap_const_logic_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        R_im_ce0 = grp_MalM_fu_3688_A_im_ce0.read();
    } else {
        R_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_R_im_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state114.read()))) {
        R_im_ce1 = ap_const_logic_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        R_im_ce1 = grp_MalM_fu_3688_A_im_ce1.read();
    } else {
        R_im_ce1 = ap_const_logic_0;
    }
}

void qr_givens::thread_R_im_d0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state114.read())) {
        R_im_d0 = temp1j_1_q0.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        R_im_d0 = A_im_q0.read();
    } else {
        R_im_d0 =  (sc_lv<64>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void qr_givens::thread_R_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state114.read()))) {
        R_im_we0 = ap_const_logic_1;
    } else {
        R_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_R_im_we1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state114.read())) {
        R_im_we1 = ap_const_logic_1;
    } else {
        R_im_we1 = ap_const_logic_0;
    }
}

void qr_givens::thread_R_re_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state114.read())) {
        R_re_address0 =  (sc_lv<14>) (sext_ln103_fu_4248_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        R_re_address0 = R_re_addr_reg_4692.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        R_re_address0 =  (sc_lv<14>) (zext_ln85_1_reg_4652.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        R_re_address0 = grp_MalM_fu_3688_A_re_address0.read();
    } else {
        R_re_address0 = "XXXXXXXXXXXXXX";
    }
}

void qr_givens::thread_R_re_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state114.read())) {
        R_re_address1 =  (sc_lv<14>) (zext_ln101_3_fu_4241_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        R_re_address1 =  (sc_lv<14>) (sext_ln93_fu_4143_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        R_re_address1 = grp_MalM_fu_3688_A_re_address1.read();
    } else {
        R_re_address1 = "XXXXXXXXXXXXXX";
    }
}

void qr_givens::thread_R_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state114.read()))) {
        R_re_ce0 = ap_const_logic_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        R_re_ce0 = grp_MalM_fu_3688_A_re_ce0.read();
    } else {
        R_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_R_re_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state114.read()))) {
        R_re_ce1 = ap_const_logic_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        R_re_ce1 = grp_MalM_fu_3688_A_re_ce1.read();
    } else {
        R_re_ce1 = ap_const_logic_0;
    }
}

void qr_givens::thread_R_re_d0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state114.read())) {
        R_re_d0 = temp1j_0_q0.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        R_re_d0 = A_re_q0.read();
    } else {
        R_re_d0 =  (sc_lv<64>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void qr_givens::thread_R_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state114.read()))) {
        R_re_we0 = ap_const_logic_1;
    } else {
        R_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_R_re_we1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state114.read())) {
        R_re_we1 = ap_const_logic_1;
    } else {
        R_re_we1 = ap_const_logic_0;
    }
}

void qr_givens::thread_add_ln101_fu_4230_p2() {
    add_ln101_fu_4230_p2 = (!phi_mul2729_reg_3632.read().is_01() || !zext_ln101_2_fu_4226_p1.read().is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul2729_reg_3632.read()) + sc_biguint<14>(zext_ln101_2_fu_4226_p1.read()));
}

void qr_givens::thread_add_ln103_fu_4236_p2() {
    add_ln103_fu_4236_p2 = (!mul_ln93_reg_4714.read().is_01() || !zext_ln101_1_fu_4222_p1.read().is_01())? sc_lv<15>(): (sc_bigint<15>(mul_ln93_reg_4714.read()) + sc_biguint<15>(zext_ln101_1_fu_4222_p1.read()));
}

void qr_givens::thread_add_ln111_fu_4286_p2() {
    add_ln111_fu_4286_p2 = (!j15_0_reg_3676.read().is_01() || !ap_const_lv7_7E.is_01())? sc_lv<7>(): (sc_biguint<7>(j15_0_reg_3676.read()) + sc_biguint<7>(ap_const_lv7_7E));
}

void qr_givens::thread_add_ln83_fu_4019_p2() {
    add_ln83_fu_4019_p2 = (!phi_mul_reg_3597.read().is_01() || !ap_const_lv14_64.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_3597.read()) + sc_biguint<14>(ap_const_lv14_64));
}

void qr_givens::thread_add_ln85_fu_4053_p2() {
    add_ln85_fu_4053_p2 = (!phi_mul_reg_3597.read().is_01() || !zext_ln85_fu_4049_p1.read().is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul_reg_3597.read()) + sc_biguint<14>(zext_ln85_fu_4049_p1.read()));
}

void qr_givens::thread_add_ln89_fu_4081_p2() {
    add_ln89_fu_4081_p2 = (!phi_mul2729_reg_3632.read().is_01() || !ap_const_lv14_64.is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul2729_reg_3632.read()) + sc_biguint<14>(ap_const_lv14_64));
}

void qr_givens::thread_add_ln93_1_fu_4139_p2() {
    add_ln93_1_fu_4139_p2 = (!mul_ln93_fu_4616_p2.read().is_01() || !zext_ln93_reg_4687.read().is_01())? sc_lv<15>(): (sc_bigint<15>(mul_ln93_fu_4616_p2.read()) + sc_biguint<15>(zext_ln93_reg_4687.read()));
}

void qr_givens::thread_add_ln93_fu_4111_p2() {
    add_ln93_fu_4111_p2 = (!phi_mul2729_reg_3632.read().is_01() || !zext_ln93_1_fu_4107_p1.read().is_01())? sc_lv<14>(): (sc_biguint<14>(phi_mul2729_reg_3632.read()) + sc_biguint<14>(zext_ln93_1_fu_4107_p1.read()));
}

void qr_givens::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void qr_givens::thread_ap_CS_fsm_state11() {
    ap_CS_fsm_state11 = ap_CS_fsm.read()[10];
}

void qr_givens::thread_ap_CS_fsm_state110() {
    ap_CS_fsm_state110 = ap_CS_fsm.read()[109];
}

void qr_givens::thread_ap_CS_fsm_state111() {
    ap_CS_fsm_state111 = ap_CS_fsm.read()[110];
}

void qr_givens::thread_ap_CS_fsm_state112() {
    ap_CS_fsm_state112 = ap_CS_fsm.read()[111];
}

void qr_givens::thread_ap_CS_fsm_state113() {
    ap_CS_fsm_state113 = ap_CS_fsm.read()[112];
}

void qr_givens::thread_ap_CS_fsm_state114() {
    ap_CS_fsm_state114 = ap_CS_fsm.read()[113];
}

void qr_givens::thread_ap_CS_fsm_state115() {
    ap_CS_fsm_state115 = ap_CS_fsm.read()[114];
}

void qr_givens::thread_ap_CS_fsm_state116() {
    ap_CS_fsm_state116 = ap_CS_fsm.read()[115];
}

void qr_givens::thread_ap_CS_fsm_state117() {
    ap_CS_fsm_state117 = ap_CS_fsm.read()[116];
}

void qr_givens::thread_ap_CS_fsm_state118() {
    ap_CS_fsm_state118 = ap_CS_fsm.read()[117];
}

void qr_givens::thread_ap_CS_fsm_state119() {
    ap_CS_fsm_state119 = ap_CS_fsm.read()[118];
}

void qr_givens::thread_ap_CS_fsm_state12() {
    ap_CS_fsm_state12 = ap_CS_fsm.read()[11];
}

void qr_givens::thread_ap_CS_fsm_state16() {
    ap_CS_fsm_state16 = ap_CS_fsm.read()[15];
}

void qr_givens::thread_ap_CS_fsm_state17() {
    ap_CS_fsm_state17 = ap_CS_fsm.read()[16];
}

void qr_givens::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void qr_givens::thread_ap_CS_fsm_state21() {
    ap_CS_fsm_state21 = ap_CS_fsm.read()[20];
}

void qr_givens::thread_ap_CS_fsm_state22() {
    ap_CS_fsm_state22 = ap_CS_fsm.read()[21];
}

void qr_givens::thread_ap_CS_fsm_state26() {
    ap_CS_fsm_state26 = ap_CS_fsm.read()[25];
}

void qr_givens::thread_ap_CS_fsm_state27() {
    ap_CS_fsm_state27 = ap_CS_fsm.read()[26];
}

void qr_givens::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void qr_givens::thread_ap_CS_fsm_state31() {
    ap_CS_fsm_state31 = ap_CS_fsm.read()[30];
}

void qr_givens::thread_ap_CS_fsm_state32() {
    ap_CS_fsm_state32 = ap_CS_fsm.read()[31];
}

void qr_givens::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void qr_givens::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void qr_givens::thread_ap_CS_fsm_state52() {
    ap_CS_fsm_state52 = ap_CS_fsm.read()[51];
}

void qr_givens::thread_ap_CS_fsm_state53() {
    ap_CS_fsm_state53 = ap_CS_fsm.read()[52];
}

void qr_givens::thread_ap_CS_fsm_state57() {
    ap_CS_fsm_state57 = ap_CS_fsm.read()[56];
}

void qr_givens::thread_ap_CS_fsm_state58() {
    ap_CS_fsm_state58 = ap_CS_fsm.read()[57];
}

void qr_givens::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void qr_givens::thread_ap_CS_fsm_state7() {
    ap_CS_fsm_state7 = ap_CS_fsm.read()[6];
}

void qr_givens::thread_ap_CS_fsm_state78() {
    ap_CS_fsm_state78 = ap_CS_fsm.read()[77];
}

void qr_givens::thread_ap_CS_fsm_state79() {
    ap_CS_fsm_state79 = ap_CS_fsm.read()[78];
}

void qr_givens::thread_ap_CS_fsm_state83() {
    ap_CS_fsm_state83 = ap_CS_fsm.read()[82];
}

void qr_givens::thread_ap_CS_fsm_state84() {
    ap_CS_fsm_state84 = ap_CS_fsm.read()[83];
}

void qr_givens::thread_ap_CS_fsm_state88() {
    ap_CS_fsm_state88 = ap_CS_fsm.read()[87];
}

void qr_givens::thread_ap_CS_fsm_state89() {
    ap_CS_fsm_state89 = ap_CS_fsm.read()[88];
}

void qr_givens::thread_ap_CS_fsm_state93() {
    ap_CS_fsm_state93 = ap_CS_fsm.read()[92];
}

void qr_givens::thread_ap_CS_fsm_state94() {
    ap_CS_fsm_state94 = ap_CS_fsm.read()[93];
}

void qr_givens::thread_ap_block_state1() {
    ap_block_state1 = (esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1));
}

void qr_givens::thread_ap_block_state112_on_subcall_done() {
    ap_block_state112_on_subcall_done = (esl_seteq<1,1,1>(ap_const_logic_0, grp_MalM_fu_3688_ap_done.read()) || esl_seteq<1,1,1>(ap_const_logic_0, grp_MalM_fu_3708_ap_done.read()));
}

void qr_givens::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state115.read()) && 
         esl_seteq<1,1,1>(icmp_ln108_fu_4255_p2.read(), ap_const_lv1_1))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_done_reg.read();
    }
}

void qr_givens::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void qr_givens::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state115.read()) && 
         esl_seteq<1,1,1>(icmp_ln108_fu_4255_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void qr_givens::thread_bitcast_ln211_fu_4168_p1() {
    bitcast_ln211_fu_4168_p1 = tmp_re_4_reg_4744.read();
}

void qr_givens::thread_bitcast_ln212_fu_4183_p1() {
    bitcast_ln212_fu_4183_p1 = tmp_im_4_reg_4752.read();
}

void qr_givens::thread_bitcast_ln329_1_fu_4149_p1() {
    bitcast_ln329_1_fu_4149_p1 = reg_3947.read();
}

void qr_givens::thread_bitcast_ln329_fu_4496_p1() {
    bitcast_ln329_fu_4496_p1 = grp_fu_3832_p1.read();
}

void qr_givens::thread_conj_im_fu_4159_p1() {
    conj_im_fu_4159_p1 = xor_ln329_1_fu_4153_p2.read();
}

void qr_givens::thread_grp_MalM_fu_3688_ap_start() {
    grp_MalM_fu_3688_ap_start = grp_MalM_fu_3688_ap_start_reg.read();
}

void qr_givens::thread_grp_MalM_fu_3708_ap_start() {
    grp_MalM_fu_3708_ap_start = grp_MalM_fu_3708_ap_start_reg.read();
}

void qr_givens::thread_grp_fu_3836_opcode() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state89.read()))) {
        grp_fu_3836_opcode = ap_const_lv2_1;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state17.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state27.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state53.read()))) {
        grp_fu_3836_opcode = ap_const_lv2_0;
    } else {
        grp_fu_3836_opcode =  (sc_lv<2>) ("XX");
    }
}

void qr_givens::thread_grp_fu_3836_p0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state53.read())) {
        grp_fu_3836_p0 = reg_4012.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state17.read())) {
        grp_fu_3836_p0 = reg_3997.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state27.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state89.read()))) {
        grp_fu_3836_p0 = reg_3936.read();
    } else {
        grp_fu_3836_p0 =  (sc_lv<64>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void qr_givens::thread_grp_fu_3836_p1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state17.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state53.read()))) {
        grp_fu_3836_p1 = reg_3978.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state27.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state89.read()))) {
        grp_fu_3836_p1 = reg_3947.read();
    } else {
        grp_fu_3836_p1 =  (sc_lv<64>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void qr_givens::thread_grp_fu_3840_opcode() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state53.read())) {
        grp_fu_3840_opcode = ap_const_lv2_1;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state17.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state89.read()))) {
        grp_fu_3840_opcode = ap_const_lv2_0;
    } else {
        grp_fu_3840_opcode =  (sc_lv<2>) ("XX");
    }
}

void qr_givens::thread_grp_fu_3840_p0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state53.read())) {
        grp_fu_3840_p0 = reg_4012.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state17.read())) {
        grp_fu_3840_p0 = reg_4006.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state89.read()))) {
        grp_fu_3840_p0 = reg_3953.read();
    } else {
        grp_fu_3840_p0 =  (sc_lv<64>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void qr_givens::thread_grp_fu_3840_p1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state89.read())) {
        grp_fu_3840_p1 = reg_3959.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state53.read())) {
        grp_fu_3840_p1 = reg_3978.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state17.read())) {
        grp_fu_3840_p1 = reg_3988.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        grp_fu_3840_p1 = reg_3953.read();
    } else {
        grp_fu_3840_p1 =  (sc_lv<64>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void qr_givens::thread_grp_fu_3844_p0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state89.read())) {
        grp_fu_3844_p0 = reg_3965.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        grp_fu_3844_p0 = reg_3959.read();
    } else {
        grp_fu_3844_p0 =  (sc_lv<64>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void qr_givens::thread_grp_fu_3844_p1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state89.read())) {
        grp_fu_3844_p1 = reg_3971.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        grp_fu_3844_p1 = reg_3965.read();
    } else {
        grp_fu_3844_p1 =  (sc_lv<64>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void qr_givens::thread_grp_fu_3848_opcode() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state89.read())) {
        grp_fu_3848_opcode = ap_const_lv2_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        grp_fu_3848_opcode = ap_const_lv2_0;
    } else {
        grp_fu_3848_opcode =  (sc_lv<2>) ("XX");
    }
}

void qr_givens::thread_grp_fu_3848_p0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state89.read())) {
        grp_fu_3848_p0 = m1_4_reg_4791.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        grp_fu_3848_p0 = reg_3971.read();
    } else {
        grp_fu_3848_p0 =  (sc_lv<64>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void qr_givens::thread_grp_fu_3848_p1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state89.read())) {
        grp_fu_3848_p1 = m2_4_reg_4796.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        grp_fu_3848_p1 = reg_3971.read();
    } else {
        grp_fu_3848_p1 =  (sc_lv<64>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void qr_givens::thread_grp_fu_3856_p0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state84.read())) {
        grp_fu_3856_p0 = reg_3936.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state79.read())) {
        grp_fu_3856_p0 = reg_4012.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state22.read())) {
        grp_fu_3856_p0 = reg_3978.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        grp_fu_3856_p0 = R_re_q0.read();
    } else {
        grp_fu_3856_p0 =  (sc_lv<64>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void qr_givens::thread_grp_fu_3856_p1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state84.read())) {
        grp_fu_3856_p1 = tmp_re_2_reg_4729.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state79.read())) {
        grp_fu_3856_p1 = ap_const_lv64_3FE6A09E667F3BCC;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state22.read())) {
        grp_fu_3856_p1 = reg_3978.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        grp_fu_3856_p1 = R_re_q0.read();
    } else {
        grp_fu_3856_p1 =  (sc_lv<64>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void qr_givens::thread_grp_fu_3862_p0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state84.read())) {
        grp_fu_3862_p0 = conj_im_fu_4159_p1.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state79.read())) {
        grp_fu_3862_p0 = tmp_i1_i_reg_4765.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state22.read())) {
        grp_fu_3862_p0 = reg_3988.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        grp_fu_3862_p0 = R_im_q0.read();
    } else {
        grp_fu_3862_p0 =  (sc_lv<64>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void qr_givens::thread_grp_fu_3862_p1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state84.read())) {
        grp_fu_3862_p1 = tmp_im_2_reg_4736.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state79.read())) {
        grp_fu_3862_p1 = ap_const_lv64_3FE6A09E667F3BCC;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state22.read())) {
        grp_fu_3862_p1 = reg_3988.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        grp_fu_3862_p1 = R_im_q0.read();
    } else {
        grp_fu_3862_p1 =  (sc_lv<64>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void qr_givens::thread_grp_fu_3868_p0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state84.read())) {
        grp_fu_3868_p0 = conj_im_fu_4159_p1.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        grp_fu_3868_p0 = R_im_q0.read();
    } else {
        grp_fu_3868_p0 =  (sc_lv<64>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void qr_givens::thread_grp_fu_3868_p1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state84.read())) {
        grp_fu_3868_p1 = tmp_re_2_reg_4729.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        grp_fu_3868_p1 = R_re_q0.read();
    } else {
        grp_fu_3868_p1 =  (sc_lv<64>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void qr_givens::thread_grp_fu_3874_p0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state84.read())) {
        grp_fu_3874_p0 = reg_3936.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        grp_fu_3874_p0 = R_re_q1.read();
    } else {
        grp_fu_3874_p0 =  (sc_lv<64>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void qr_givens::thread_grp_fu_3874_p1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state84.read())) {
        grp_fu_3874_p1 = tmp_im_2_reg_4736.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        grp_fu_3874_p1 = R_re_q1.read();
    } else {
        grp_fu_3874_p1 =  (sc_lv<64>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void qr_givens::thread_grp_fu_3880_p0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state84.read())) {
        grp_fu_3880_p0 = reg_3936.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        grp_fu_3880_p0 = R_im_q1.read();
    } else {
        grp_fu_3880_p0 =  (sc_lv<64>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void qr_givens::thread_grp_fu_3880_p1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state84.read())) {
        grp_fu_3880_p1 = reg_3936.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        grp_fu_3880_p1 = R_im_q1.read();
    } else {
        grp_fu_3880_p1 =  (sc_lv<64>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void qr_givens::thread_grp_fu_3886_p0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state84.read())) {
        grp_fu_3886_p0 = reg_3947.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        grp_fu_3886_p0 = R_im_q1.read();
    } else {
        grp_fu_3886_p0 =  (sc_lv<64>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void qr_givens::thread_grp_fu_3886_p1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state84.read())) {
        grp_fu_3886_p1 = conj_im_fu_4159_p1.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        grp_fu_3886_p1 = R_re_q1.read();
    } else {
        grp_fu_3886_p1 =  (sc_lv<64>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void qr_givens::thread_grp_fu_3926_p1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state58.read())) {
        grp_fu_3926_p1 = reg_3978.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read())) {
        grp_fu_3926_p1 = temp2_reg_4760.read();
    } else {
        grp_fu_3926_p1 =  (sc_lv<64>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void qr_givens::thread_grp_fu_4623_p0() {
    grp_fu_4623_p0 =  (sc_lv<7>) (grp_fu_4623_p00.read());
}

void qr_givens::thread_grp_fu_4623_p00() {
    grp_fu_4623_p00 = esl_zext<14,7>(j15_0_reg_3676.read());
}

void qr_givens::thread_grp_fu_4623_p1() {
    grp_fu_4623_p1 =  (sc_lv<8>) (ap_const_lv14_64);
}

void qr_givens::thread_grp_fu_4623_p2() {
    grp_fu_4623_p2 =  (sc_lv<7>) (zext_ln109_reg_4906.read());
}

void qr_givens::thread_i_1_fu_4097_p2() {
    i_1_fu_4097_p2 = (!i8_0_reg_3620.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_biguint<7>(i8_0_reg_3620.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void qr_givens::thread_i_2_fu_4261_p2() {
    i_2_fu_4261_p2 = (!i14_0_reg_3664.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_biguint<7>(i14_0_reg_3664.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void qr_givens::thread_i_fu_4031_p2() {
    i_fu_4031_p2 = (!i_0_reg_3585.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_biguint<7>(i_0_reg_3585.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void qr_givens::thread_icmp_ln100_fu_4198_p2() {
    icmp_ln100_fu_4198_p2 = (!k_0_reg_3653.read().is_01() || !ap_const_lv7_64.is_01())? sc_lv<1>(): sc_lv<1>(k_0_reg_3653.read() == ap_const_lv7_64);
}

void qr_givens::thread_icmp_ln108_fu_4255_p2() {
    icmp_ln108_fu_4255_p2 = (!i14_0_reg_3664.read().is_01() || !ap_const_lv7_64.is_01())? sc_lv<1>(): sc_lv<1>(i14_0_reg_3664.read() == ap_const_lv7_64);
}

void qr_givens::thread_icmp_ln109_fu_4271_p2() {
    icmp_ln109_fu_4271_p2 = (!j15_0_reg_3676.read().is_01() || !ap_const_lv7_64.is_01())? sc_lv<1>(): sc_lv<1>(j15_0_reg_3676.read() == ap_const_lv7_64);
}

void qr_givens::thread_icmp_ln83_fu_4025_p2() {
    icmp_ln83_fu_4025_p2 = (!i_0_reg_3585.read().is_01() || !ap_const_lv7_64.is_01())? sc_lv<1>(): sc_lv<1>(i_0_reg_3585.read() == ap_const_lv7_64);
}

void qr_givens::thread_icmp_ln84_fu_4037_p2() {
    icmp_ln84_fu_4037_p2 = (!j_0_reg_3609.read().is_01() || !ap_const_lv7_64.is_01())? sc_lv<1>(): sc_lv<1>(j_0_reg_3609.read() == ap_const_lv7_64);
}

void qr_givens::thread_icmp_ln86_fu_4066_p2() {
    icmp_ln86_fu_4066_p2 = (!i_0_reg_3585.read().is_01() || !j_0_reg_3609.read().is_01())? sc_lv<1>(): sc_lv<1>(i_0_reg_3585.read() == j_0_reg_3609.read());
}

void qr_givens::thread_icmp_ln89_fu_4091_p2() {
    icmp_ln89_fu_4091_p2 = (!i8_0_reg_3620.read().is_01() || !ap_const_lv7_63.is_01())? sc_lv<1>(): sc_lv<1>(i8_0_reg_3620.read() == ap_const_lv7_63);
}

void qr_givens::thread_icmp_ln90_fu_4129_p2() {
    icmp_ln90_fu_4129_p2 = (!j9_0_in_reg_3644.read().is_01() || !ap_const_lv32_63.is_01())? sc_lv<1>(): sc_lv<1>(j9_0_in_reg_3644.read() == ap_const_lv32_63);
}

void qr_givens::thread_j_1_fu_4123_p2() {
    j_1_fu_4123_p2 = (!j9_0_in_reg_3644.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_biguint<32>(j9_0_in_reg_3644.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void qr_givens::thread_j_2_fu_4610_p2() {
    j_2_fu_4610_p2 = (!j15_0_reg_3676.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_biguint<7>(j15_0_reg_3676.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void qr_givens::thread_j_fu_4043_p2() {
    j_fu_4043_p2 = (!j_0_reg_3609.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_biguint<7>(j_0_reg_3609.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void qr_givens::thread_k_fu_4204_p2() {
    k_fu_4204_p2 = (!k_0_reg_3653.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_biguint<7>(k_0_reg_3653.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void qr_givens::thread_mul_ln93_fu_4616_p0() {
    mul_ln93_fu_4616_p0 =  (sc_lv<8>) (ap_const_lv15_64);
}

void qr_givens::thread_mul_ln93_fu_4616_p1() {
    mul_ln93_fu_4616_p1 = j_1_fu_4123_p2.read().range(15-1, 0);
}

void qr_givens::thread_noiseSS_0_im_address0() {
    noiseSS_0_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_0_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_0_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_0_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_0_im_d0() {
    noiseSS_0_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_0_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(ap_const_lv7_0, i14_0_reg_3664.read()))) {
        noiseSS_0_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_0_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_0_re_address0() {
    noiseSS_0_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_0_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_0_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_0_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_0_re_d0() {
    noiseSS_0_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_0_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(ap_const_lv7_0, i14_0_reg_3664.read()))) {
        noiseSS_0_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_0_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_10_im_address0() {
    noiseSS_10_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_10_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_10_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_10_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_10_im_d0() {
    noiseSS_10_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_10_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_A))) {
        noiseSS_10_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_10_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_10_re_address0() {
    noiseSS_10_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_10_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_10_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_10_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_10_re_d0() {
    noiseSS_10_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_10_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_A))) {
        noiseSS_10_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_10_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_11_im_address0() {
    noiseSS_11_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_11_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_11_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_11_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_11_im_d0() {
    noiseSS_11_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_11_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_B))) {
        noiseSS_11_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_11_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_11_re_address0() {
    noiseSS_11_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_11_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_11_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_11_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_11_re_d0() {
    noiseSS_11_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_11_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_B))) {
        noiseSS_11_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_11_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_12_im_address0() {
    noiseSS_12_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_12_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_12_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_12_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_12_im_d0() {
    noiseSS_12_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_12_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_C))) {
        noiseSS_12_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_12_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_12_re_address0() {
    noiseSS_12_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_12_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_12_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_12_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_12_re_d0() {
    noiseSS_12_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_12_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_C))) {
        noiseSS_12_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_12_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_13_im_address0() {
    noiseSS_13_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_13_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_13_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_13_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_13_im_d0() {
    noiseSS_13_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_13_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_D))) {
        noiseSS_13_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_13_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_13_re_address0() {
    noiseSS_13_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_13_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_13_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_13_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_13_re_d0() {
    noiseSS_13_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_13_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_D))) {
        noiseSS_13_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_13_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_14_im_address0() {
    noiseSS_14_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_14_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_14_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_14_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_14_im_d0() {
    noiseSS_14_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_14_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_E))) {
        noiseSS_14_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_14_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_14_re_address0() {
    noiseSS_14_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_14_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_14_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_14_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_14_re_d0() {
    noiseSS_14_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_14_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_E))) {
        noiseSS_14_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_14_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_15_im_address0() {
    noiseSS_15_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_15_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_15_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_15_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_15_im_d0() {
    noiseSS_15_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_15_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_F))) {
        noiseSS_15_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_15_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_15_re_address0() {
    noiseSS_15_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_15_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_15_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_15_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_15_re_d0() {
    noiseSS_15_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_15_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_F))) {
        noiseSS_15_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_15_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_16_im_address0() {
    noiseSS_16_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_16_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_16_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_16_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_16_im_d0() {
    noiseSS_16_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_16_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_10))) {
        noiseSS_16_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_16_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_16_re_address0() {
    noiseSS_16_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_16_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_16_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_16_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_16_re_d0() {
    noiseSS_16_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_16_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_10))) {
        noiseSS_16_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_16_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_17_im_address0() {
    noiseSS_17_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_17_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_17_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_17_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_17_im_d0() {
    noiseSS_17_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_17_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_11))) {
        noiseSS_17_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_17_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_17_re_address0() {
    noiseSS_17_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_17_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_17_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_17_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_17_re_d0() {
    noiseSS_17_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_17_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_11))) {
        noiseSS_17_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_17_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_18_im_address0() {
    noiseSS_18_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_18_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_18_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_18_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_18_im_d0() {
    noiseSS_18_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_18_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_12))) {
        noiseSS_18_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_18_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_18_re_address0() {
    noiseSS_18_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_18_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_18_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_18_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_18_re_d0() {
    noiseSS_18_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_18_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_12))) {
        noiseSS_18_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_18_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_19_im_address0() {
    noiseSS_19_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_19_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_19_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_19_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_19_im_d0() {
    noiseSS_19_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_19_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_13))) {
        noiseSS_19_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_19_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_19_re_address0() {
    noiseSS_19_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_19_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_19_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_19_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_19_re_d0() {
    noiseSS_19_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_19_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_13))) {
        noiseSS_19_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_19_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_1_im_address0() {
    noiseSS_1_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_1_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_1_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_1_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_1_im_d0() {
    noiseSS_1_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_1_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_1))) {
        noiseSS_1_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_1_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_1_re_address0() {
    noiseSS_1_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_1_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_1_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_1_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_1_re_d0() {
    noiseSS_1_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_1_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_1))) {
        noiseSS_1_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_1_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_20_im_address0() {
    noiseSS_20_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_20_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_20_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_20_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_20_im_d0() {
    noiseSS_20_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_20_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_14))) {
        noiseSS_20_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_20_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_20_re_address0() {
    noiseSS_20_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_20_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_20_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_20_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_20_re_d0() {
    noiseSS_20_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_20_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_14))) {
        noiseSS_20_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_20_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_21_im_address0() {
    noiseSS_21_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_21_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_21_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_21_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_21_im_d0() {
    noiseSS_21_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_21_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_15))) {
        noiseSS_21_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_21_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_21_re_address0() {
    noiseSS_21_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_21_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_21_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_21_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_21_re_d0() {
    noiseSS_21_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_21_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_15))) {
        noiseSS_21_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_21_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_22_im_address0() {
    noiseSS_22_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_22_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_22_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_22_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_22_im_d0() {
    noiseSS_22_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_22_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_16))) {
        noiseSS_22_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_22_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_22_re_address0() {
    noiseSS_22_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_22_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_22_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_22_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_22_re_d0() {
    noiseSS_22_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_22_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_16))) {
        noiseSS_22_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_22_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_23_im_address0() {
    noiseSS_23_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_23_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_23_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_23_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_23_im_d0() {
    noiseSS_23_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_23_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_17))) {
        noiseSS_23_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_23_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_23_re_address0() {
    noiseSS_23_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_23_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_23_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_23_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_23_re_d0() {
    noiseSS_23_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_23_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_17))) {
        noiseSS_23_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_23_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_24_im_address0() {
    noiseSS_24_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_24_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_24_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_24_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_24_im_d0() {
    noiseSS_24_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_24_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_18))) {
        noiseSS_24_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_24_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_24_re_address0() {
    noiseSS_24_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_24_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_24_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_24_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_24_re_d0() {
    noiseSS_24_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_24_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_18))) {
        noiseSS_24_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_24_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_25_im_address0() {
    noiseSS_25_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_25_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_25_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_25_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_25_im_d0() {
    noiseSS_25_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_25_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_19))) {
        noiseSS_25_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_25_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_25_re_address0() {
    noiseSS_25_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_25_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_25_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_25_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_25_re_d0() {
    noiseSS_25_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_25_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_19))) {
        noiseSS_25_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_25_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_26_im_address0() {
    noiseSS_26_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_26_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_26_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_26_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_26_im_d0() {
    noiseSS_26_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_26_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_1A))) {
        noiseSS_26_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_26_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_26_re_address0() {
    noiseSS_26_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_26_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_26_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_26_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_26_re_d0() {
    noiseSS_26_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_26_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_1A))) {
        noiseSS_26_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_26_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_27_im_address0() {
    noiseSS_27_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_27_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_27_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_27_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_27_im_d0() {
    noiseSS_27_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_27_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_1B))) {
        noiseSS_27_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_27_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_27_re_address0() {
    noiseSS_27_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_27_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_27_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_27_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_27_re_d0() {
    noiseSS_27_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_27_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_1B))) {
        noiseSS_27_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_27_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_28_im_address0() {
    noiseSS_28_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_28_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_28_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_28_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_28_im_d0() {
    noiseSS_28_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_28_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_1C))) {
        noiseSS_28_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_28_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_28_re_address0() {
    noiseSS_28_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_28_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_28_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_28_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_28_re_d0() {
    noiseSS_28_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_28_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_1C))) {
        noiseSS_28_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_28_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_29_im_address0() {
    noiseSS_29_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_29_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_29_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_29_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_29_im_d0() {
    noiseSS_29_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_29_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_1D))) {
        noiseSS_29_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_29_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_29_re_address0() {
    noiseSS_29_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_29_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_29_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_29_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_29_re_d0() {
    noiseSS_29_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_29_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_1D))) {
        noiseSS_29_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_29_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_2_im_address0() {
    noiseSS_2_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_2_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_2_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_2_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_2_im_d0() {
    noiseSS_2_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_2_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_2))) {
        noiseSS_2_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_2_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_2_re_address0() {
    noiseSS_2_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_2_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_2_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_2_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_2_re_d0() {
    noiseSS_2_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_2_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_2))) {
        noiseSS_2_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_2_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_30_im_address0() {
    noiseSS_30_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_30_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_30_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_30_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_30_im_d0() {
    noiseSS_30_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_30_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_1E))) {
        noiseSS_30_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_30_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_30_re_address0() {
    noiseSS_30_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_30_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_30_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_30_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_30_re_d0() {
    noiseSS_30_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_30_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_1E))) {
        noiseSS_30_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_30_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_31_im_address0() {
    noiseSS_31_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_31_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_31_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_31_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_31_im_d0() {
    noiseSS_31_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_31_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_1F))) {
        noiseSS_31_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_31_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_31_re_address0() {
    noiseSS_31_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_31_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_31_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_31_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_31_re_d0() {
    noiseSS_31_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_31_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_1F))) {
        noiseSS_31_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_31_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_32_im_address0() {
    noiseSS_32_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_32_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_32_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_32_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_32_im_d0() {
    noiseSS_32_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_32_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_20))) {
        noiseSS_32_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_32_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_32_re_address0() {
    noiseSS_32_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_32_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_32_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_32_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_32_re_d0() {
    noiseSS_32_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_32_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_20))) {
        noiseSS_32_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_32_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_33_im_address0() {
    noiseSS_33_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_33_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_33_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_33_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_33_im_d0() {
    noiseSS_33_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_33_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_21))) {
        noiseSS_33_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_33_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_33_re_address0() {
    noiseSS_33_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_33_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_33_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_33_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_33_re_d0() {
    noiseSS_33_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_33_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_21))) {
        noiseSS_33_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_33_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_34_im_address0() {
    noiseSS_34_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_34_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_34_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_34_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_34_im_d0() {
    noiseSS_34_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_34_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_22))) {
        noiseSS_34_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_34_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_34_re_address0() {
    noiseSS_34_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_34_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_34_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_34_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_34_re_d0() {
    noiseSS_34_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_34_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_22))) {
        noiseSS_34_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_34_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_35_im_address0() {
    noiseSS_35_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_35_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_35_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_35_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_35_im_d0() {
    noiseSS_35_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_35_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_23))) {
        noiseSS_35_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_35_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_35_re_address0() {
    noiseSS_35_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_35_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_35_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_35_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_35_re_d0() {
    noiseSS_35_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_35_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_23))) {
        noiseSS_35_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_35_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_36_im_address0() {
    noiseSS_36_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_36_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_36_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_36_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_36_im_d0() {
    noiseSS_36_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_36_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_24))) {
        noiseSS_36_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_36_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_36_re_address0() {
    noiseSS_36_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_36_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_36_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_36_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_36_re_d0() {
    noiseSS_36_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_36_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_24))) {
        noiseSS_36_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_36_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_37_im_address0() {
    noiseSS_37_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_37_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_37_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_37_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_37_im_d0() {
    noiseSS_37_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_37_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_25))) {
        noiseSS_37_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_37_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_37_re_address0() {
    noiseSS_37_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_37_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_37_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_37_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_37_re_d0() {
    noiseSS_37_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_37_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_25))) {
        noiseSS_37_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_37_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_38_im_address0() {
    noiseSS_38_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_38_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_38_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_38_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_38_im_d0() {
    noiseSS_38_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_38_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_26))) {
        noiseSS_38_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_38_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_38_re_address0() {
    noiseSS_38_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_38_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_38_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_38_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_38_re_d0() {
    noiseSS_38_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_38_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_26))) {
        noiseSS_38_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_38_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_39_im_address0() {
    noiseSS_39_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_39_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_39_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_39_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_39_im_d0() {
    noiseSS_39_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_39_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_27))) {
        noiseSS_39_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_39_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_39_re_address0() {
    noiseSS_39_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_39_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_39_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_39_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_39_re_d0() {
    noiseSS_39_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_39_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_27))) {
        noiseSS_39_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_39_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_3_im_address0() {
    noiseSS_3_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_3_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_3_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_3_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_3_im_d0() {
    noiseSS_3_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_3_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_3))) {
        noiseSS_3_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_3_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_3_re_address0() {
    noiseSS_3_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_3_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_3_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_3_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_3_re_d0() {
    noiseSS_3_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_3_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_3))) {
        noiseSS_3_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_3_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_40_im_address0() {
    noiseSS_40_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_40_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_40_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_40_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_40_im_d0() {
    noiseSS_40_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_40_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_28))) {
        noiseSS_40_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_40_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_40_re_address0() {
    noiseSS_40_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_40_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_40_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_40_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_40_re_d0() {
    noiseSS_40_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_40_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_28))) {
        noiseSS_40_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_40_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_41_im_address0() {
    noiseSS_41_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_41_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_41_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_41_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_41_im_d0() {
    noiseSS_41_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_41_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_29))) {
        noiseSS_41_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_41_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_41_re_address0() {
    noiseSS_41_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_41_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_41_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_41_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_41_re_d0() {
    noiseSS_41_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_41_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_29))) {
        noiseSS_41_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_41_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_42_im_address0() {
    noiseSS_42_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_42_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_42_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_42_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_42_im_d0() {
    noiseSS_42_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_42_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_2A))) {
        noiseSS_42_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_42_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_42_re_address0() {
    noiseSS_42_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_42_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_42_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_42_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_42_re_d0() {
    noiseSS_42_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_42_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_2A))) {
        noiseSS_42_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_42_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_43_im_address0() {
    noiseSS_43_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_43_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_43_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_43_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_43_im_d0() {
    noiseSS_43_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_43_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_2B))) {
        noiseSS_43_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_43_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_43_re_address0() {
    noiseSS_43_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_43_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_43_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_43_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_43_re_d0() {
    noiseSS_43_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_43_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_2B))) {
        noiseSS_43_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_43_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_44_im_address0() {
    noiseSS_44_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_44_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_44_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_44_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_44_im_d0() {
    noiseSS_44_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_44_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_2C))) {
        noiseSS_44_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_44_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_44_re_address0() {
    noiseSS_44_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_44_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_44_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_44_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_44_re_d0() {
    noiseSS_44_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_44_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_2C))) {
        noiseSS_44_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_44_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_45_im_address0() {
    noiseSS_45_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_45_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_45_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_45_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_45_im_d0() {
    noiseSS_45_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_45_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_2D))) {
        noiseSS_45_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_45_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_45_re_address0() {
    noiseSS_45_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_45_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_45_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_45_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_45_re_d0() {
    noiseSS_45_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_45_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_2D))) {
        noiseSS_45_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_45_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_46_im_address0() {
    noiseSS_46_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_46_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_46_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_46_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_46_im_d0() {
    noiseSS_46_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_46_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_2E))) {
        noiseSS_46_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_46_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_46_re_address0() {
    noiseSS_46_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_46_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_46_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_46_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_46_re_d0() {
    noiseSS_46_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_46_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_2E))) {
        noiseSS_46_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_46_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_47_im_address0() {
    noiseSS_47_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_47_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_47_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_47_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_47_im_d0() {
    noiseSS_47_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_47_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_2F))) {
        noiseSS_47_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_47_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_47_re_address0() {
    noiseSS_47_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_47_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_47_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_47_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_47_re_d0() {
    noiseSS_47_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_47_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_2F))) {
        noiseSS_47_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_47_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_48_im_address0() {
    noiseSS_48_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_48_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_48_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_48_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_48_im_d0() {
    noiseSS_48_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_48_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_30))) {
        noiseSS_48_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_48_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_48_re_address0() {
    noiseSS_48_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_48_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_48_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_48_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_48_re_d0() {
    noiseSS_48_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_48_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_30))) {
        noiseSS_48_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_48_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_49_im_address0() {
    noiseSS_49_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_49_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_49_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_49_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_49_im_d0() {
    noiseSS_49_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_49_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_31))) {
        noiseSS_49_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_49_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_49_re_address0() {
    noiseSS_49_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_49_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_49_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_49_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_49_re_d0() {
    noiseSS_49_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_49_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_31))) {
        noiseSS_49_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_49_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_4_im_address0() {
    noiseSS_4_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_4_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_4_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_4_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_4_im_d0() {
    noiseSS_4_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_4_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_4))) {
        noiseSS_4_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_4_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_4_re_address0() {
    noiseSS_4_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_4_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_4_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_4_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_4_re_d0() {
    noiseSS_4_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_4_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_4))) {
        noiseSS_4_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_4_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_50_im_address0() {
    noiseSS_50_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_50_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_50_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_50_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_50_im_d0() {
    noiseSS_50_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_50_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_32))) {
        noiseSS_50_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_50_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_50_re_address0() {
    noiseSS_50_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_50_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_50_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_50_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_50_re_d0() {
    noiseSS_50_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_50_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_32))) {
        noiseSS_50_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_50_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_51_im_address0() {
    noiseSS_51_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_51_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_51_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_51_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_51_im_d0() {
    noiseSS_51_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_51_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_33))) {
        noiseSS_51_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_51_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_51_re_address0() {
    noiseSS_51_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_51_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_51_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_51_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_51_re_d0() {
    noiseSS_51_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_51_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_33))) {
        noiseSS_51_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_51_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_52_im_address0() {
    noiseSS_52_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_52_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_52_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_52_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_52_im_d0() {
    noiseSS_52_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_52_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_34))) {
        noiseSS_52_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_52_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_52_re_address0() {
    noiseSS_52_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_52_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_52_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_52_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_52_re_d0() {
    noiseSS_52_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_52_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_34))) {
        noiseSS_52_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_52_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_53_im_address0() {
    noiseSS_53_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_53_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_53_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_53_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_53_im_d0() {
    noiseSS_53_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_53_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_35))) {
        noiseSS_53_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_53_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_53_re_address0() {
    noiseSS_53_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_53_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_53_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_53_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_53_re_d0() {
    noiseSS_53_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_53_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_35))) {
        noiseSS_53_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_53_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_54_im_address0() {
    noiseSS_54_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_54_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_54_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_54_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_54_im_d0() {
    noiseSS_54_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_54_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_36))) {
        noiseSS_54_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_54_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_54_re_address0() {
    noiseSS_54_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_54_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_54_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_54_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_54_re_d0() {
    noiseSS_54_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_54_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_36))) {
        noiseSS_54_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_54_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_55_im_address0() {
    noiseSS_55_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_55_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_55_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_55_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_55_im_d0() {
    noiseSS_55_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_55_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_37))) {
        noiseSS_55_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_55_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_55_re_address0() {
    noiseSS_55_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_55_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_55_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_55_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_55_re_d0() {
    noiseSS_55_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_55_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_37))) {
        noiseSS_55_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_55_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_56_im_address0() {
    noiseSS_56_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_56_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_56_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_56_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_56_im_d0() {
    noiseSS_56_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_56_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_38))) {
        noiseSS_56_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_56_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_56_re_address0() {
    noiseSS_56_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_56_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_56_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_56_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_56_re_d0() {
    noiseSS_56_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_56_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_38))) {
        noiseSS_56_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_56_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_57_im_address0() {
    noiseSS_57_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_57_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_57_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_57_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_57_im_d0() {
    noiseSS_57_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_57_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_39))) {
        noiseSS_57_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_57_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_57_re_address0() {
    noiseSS_57_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_57_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_57_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_57_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_57_re_d0() {
    noiseSS_57_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_57_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_39))) {
        noiseSS_57_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_57_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_58_im_address0() {
    noiseSS_58_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_58_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_58_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_58_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_58_im_d0() {
    noiseSS_58_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_58_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_3A))) {
        noiseSS_58_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_58_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_58_re_address0() {
    noiseSS_58_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_58_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_58_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_58_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_58_re_d0() {
    noiseSS_58_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_58_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_3A))) {
        noiseSS_58_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_58_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_59_im_address0() {
    noiseSS_59_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_59_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_59_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_59_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_59_im_d0() {
    noiseSS_59_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_59_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_3B))) {
        noiseSS_59_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_59_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_59_re_address0() {
    noiseSS_59_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_59_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_59_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_59_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_59_re_d0() {
    noiseSS_59_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_59_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_3B))) {
        noiseSS_59_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_59_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_5_im_address0() {
    noiseSS_5_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_5_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_5_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_5_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_5_im_d0() {
    noiseSS_5_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_5_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_5))) {
        noiseSS_5_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_5_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_5_re_address0() {
    noiseSS_5_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_5_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_5_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_5_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_5_re_d0() {
    noiseSS_5_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_5_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_5))) {
        noiseSS_5_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_5_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_60_im_address0() {
    noiseSS_60_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_60_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_60_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_60_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_60_im_d0() {
    noiseSS_60_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_60_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_3C))) {
        noiseSS_60_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_60_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_60_re_address0() {
    noiseSS_60_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_60_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_60_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_60_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_60_re_d0() {
    noiseSS_60_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_60_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_3C))) {
        noiseSS_60_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_60_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_61_im_address0() {
    noiseSS_61_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_61_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_61_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_61_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_61_im_d0() {
    noiseSS_61_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_61_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_3D))) {
        noiseSS_61_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_61_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_61_re_address0() {
    noiseSS_61_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_61_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_61_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_61_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_61_re_d0() {
    noiseSS_61_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_61_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_3D))) {
        noiseSS_61_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_61_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_62_im_address0() {
    noiseSS_62_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_62_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_62_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_62_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_62_im_d0() {
    noiseSS_62_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_62_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_3E))) {
        noiseSS_62_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_62_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_62_re_address0() {
    noiseSS_62_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_62_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_62_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_62_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_62_re_d0() {
    noiseSS_62_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_62_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_3E))) {
        noiseSS_62_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_62_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_63_im_address0() {
    noiseSS_63_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_63_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_63_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_63_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_63_im_d0() {
    noiseSS_63_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_63_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_3F))) {
        noiseSS_63_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_63_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_63_re_address0() {
    noiseSS_63_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_63_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_63_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_63_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_63_re_d0() {
    noiseSS_63_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_63_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_3F))) {
        noiseSS_63_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_63_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_64_im_address0() {
    noiseSS_64_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_64_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_64_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_64_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_64_im_d0() {
    noiseSS_64_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_64_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_40))) {
        noiseSS_64_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_64_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_64_re_address0() {
    noiseSS_64_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_64_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_64_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_64_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_64_re_d0() {
    noiseSS_64_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_64_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_40))) {
        noiseSS_64_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_64_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_65_im_address0() {
    noiseSS_65_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_65_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_65_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_65_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_65_im_d0() {
    noiseSS_65_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_65_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_41))) {
        noiseSS_65_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_65_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_65_re_address0() {
    noiseSS_65_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_65_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_65_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_65_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_65_re_d0() {
    noiseSS_65_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_65_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_41))) {
        noiseSS_65_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_65_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_66_im_address0() {
    noiseSS_66_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_66_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_66_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_66_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_66_im_d0() {
    noiseSS_66_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_66_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_42))) {
        noiseSS_66_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_66_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_66_re_address0() {
    noiseSS_66_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_66_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_66_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_66_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_66_re_d0() {
    noiseSS_66_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_66_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_42))) {
        noiseSS_66_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_66_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_67_im_address0() {
    noiseSS_67_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_67_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_67_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_67_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_67_im_d0() {
    noiseSS_67_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_67_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_43))) {
        noiseSS_67_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_67_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_67_re_address0() {
    noiseSS_67_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_67_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_67_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_67_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_67_re_d0() {
    noiseSS_67_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_67_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_43))) {
        noiseSS_67_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_67_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_68_im_address0() {
    noiseSS_68_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_68_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_68_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_68_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_68_im_d0() {
    noiseSS_68_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_68_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_44))) {
        noiseSS_68_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_68_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_68_re_address0() {
    noiseSS_68_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_68_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_68_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_68_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_68_re_d0() {
    noiseSS_68_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_68_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_44))) {
        noiseSS_68_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_68_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_69_im_address0() {
    noiseSS_69_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_69_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_69_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_69_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_69_im_d0() {
    noiseSS_69_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_69_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_45))) {
        noiseSS_69_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_69_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_69_re_address0() {
    noiseSS_69_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_69_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_69_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_69_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_69_re_d0() {
    noiseSS_69_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_69_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_45))) {
        noiseSS_69_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_69_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_6_im_address0() {
    noiseSS_6_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_6_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_6_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_6_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_6_im_d0() {
    noiseSS_6_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_6_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_6))) {
        noiseSS_6_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_6_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_6_re_address0() {
    noiseSS_6_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_6_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_6_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_6_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_6_re_d0() {
    noiseSS_6_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_6_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_6))) {
        noiseSS_6_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_6_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_70_im_address0() {
    noiseSS_70_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_70_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_70_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_70_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_70_im_d0() {
    noiseSS_70_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_70_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_46))) {
        noiseSS_70_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_70_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_70_re_address0() {
    noiseSS_70_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_70_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_70_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_70_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_70_re_d0() {
    noiseSS_70_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_70_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_46))) {
        noiseSS_70_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_70_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_71_im_address0() {
    noiseSS_71_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_71_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_71_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_71_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_71_im_d0() {
    noiseSS_71_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_71_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_47))) {
        noiseSS_71_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_71_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_71_re_address0() {
    noiseSS_71_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_71_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_71_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_71_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_71_re_d0() {
    noiseSS_71_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_71_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_47))) {
        noiseSS_71_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_71_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_72_im_address0() {
    noiseSS_72_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_72_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_72_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_72_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_72_im_d0() {
    noiseSS_72_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_72_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_48))) {
        noiseSS_72_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_72_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_72_re_address0() {
    noiseSS_72_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_72_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_72_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_72_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_72_re_d0() {
    noiseSS_72_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_72_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_48))) {
        noiseSS_72_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_72_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_73_im_address0() {
    noiseSS_73_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_73_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_73_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_73_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_73_im_d0() {
    noiseSS_73_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_73_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_49))) {
        noiseSS_73_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_73_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_73_re_address0() {
    noiseSS_73_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_73_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_73_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_73_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_73_re_d0() {
    noiseSS_73_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_73_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_49))) {
        noiseSS_73_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_73_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_74_im_address0() {
    noiseSS_74_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_74_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_74_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_74_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_74_im_d0() {
    noiseSS_74_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_74_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_4A))) {
        noiseSS_74_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_74_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_74_re_address0() {
    noiseSS_74_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_74_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_74_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_74_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_74_re_d0() {
    noiseSS_74_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_74_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_4A))) {
        noiseSS_74_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_74_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_75_im_address0() {
    noiseSS_75_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_75_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_75_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_75_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_75_im_d0() {
    noiseSS_75_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_75_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_4B))) {
        noiseSS_75_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_75_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_75_re_address0() {
    noiseSS_75_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_75_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_75_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_75_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_75_re_d0() {
    noiseSS_75_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_75_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_4B))) {
        noiseSS_75_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_75_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_76_im_address0() {
    noiseSS_76_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_76_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_76_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_76_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_76_im_d0() {
    noiseSS_76_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_76_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_4C))) {
        noiseSS_76_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_76_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_76_re_address0() {
    noiseSS_76_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_76_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_76_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_76_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_76_re_d0() {
    noiseSS_76_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_76_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_4C))) {
        noiseSS_76_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_76_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_77_im_address0() {
    noiseSS_77_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_77_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_77_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_77_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_77_im_d0() {
    noiseSS_77_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_77_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_4D))) {
        noiseSS_77_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_77_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_77_re_address0() {
    noiseSS_77_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_77_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_77_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_77_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_77_re_d0() {
    noiseSS_77_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_77_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_4D))) {
        noiseSS_77_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_77_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_78_im_address0() {
    noiseSS_78_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_78_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_78_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_78_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_78_im_d0() {
    noiseSS_78_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_78_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_4E))) {
        noiseSS_78_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_78_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_78_re_address0() {
    noiseSS_78_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_78_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_78_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_78_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_78_re_d0() {
    noiseSS_78_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_78_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_4E))) {
        noiseSS_78_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_78_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_79_im_address0() {
    noiseSS_79_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_79_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_79_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_79_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_79_im_d0() {
    noiseSS_79_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_79_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_4F))) {
        noiseSS_79_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_79_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_79_re_address0() {
    noiseSS_79_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_79_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_79_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_79_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_79_re_d0() {
    noiseSS_79_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_79_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_4F))) {
        noiseSS_79_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_79_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_7_im_address0() {
    noiseSS_7_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_7_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_7_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_7_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_7_im_d0() {
    noiseSS_7_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_7_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_7))) {
        noiseSS_7_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_7_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_7_re_address0() {
    noiseSS_7_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_7_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_7_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_7_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_7_re_d0() {
    noiseSS_7_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_7_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_7))) {
        noiseSS_7_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_7_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_80_im_address0() {
    noiseSS_80_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_80_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_80_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_80_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_80_im_d0() {
    noiseSS_80_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_80_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_50))) {
        noiseSS_80_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_80_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_80_re_address0() {
    noiseSS_80_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_80_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_80_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_80_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_80_re_d0() {
    noiseSS_80_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_80_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_50))) {
        noiseSS_80_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_80_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_81_im_address0() {
    noiseSS_81_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_81_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_81_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_81_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_81_im_d0() {
    noiseSS_81_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_81_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_51))) {
        noiseSS_81_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_81_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_81_re_address0() {
    noiseSS_81_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_81_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_81_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_81_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_81_re_d0() {
    noiseSS_81_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_81_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_51))) {
        noiseSS_81_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_81_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_82_im_address0() {
    noiseSS_82_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_82_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_82_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_82_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_82_im_d0() {
    noiseSS_82_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_82_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_52))) {
        noiseSS_82_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_82_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_82_re_address0() {
    noiseSS_82_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_82_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_82_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_82_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_82_re_d0() {
    noiseSS_82_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_82_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_52))) {
        noiseSS_82_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_82_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_83_im_address0() {
    noiseSS_83_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_83_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_83_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_83_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_83_im_d0() {
    noiseSS_83_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_83_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_53))) {
        noiseSS_83_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_83_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_83_re_address0() {
    noiseSS_83_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_83_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_83_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_83_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_83_re_d0() {
    noiseSS_83_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_83_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_53))) {
        noiseSS_83_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_83_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_84_im_address0() {
    noiseSS_84_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_84_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_84_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_84_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_84_im_d0() {
    noiseSS_84_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_84_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_54))) {
        noiseSS_84_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_84_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_84_re_address0() {
    noiseSS_84_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_84_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_84_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_84_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_84_re_d0() {
    noiseSS_84_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_84_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_54))) {
        noiseSS_84_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_84_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_85_im_address0() {
    noiseSS_85_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_85_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_85_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_85_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_85_im_d0() {
    noiseSS_85_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_85_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_55))) {
        noiseSS_85_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_85_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_85_re_address0() {
    noiseSS_85_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_85_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_85_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_85_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_85_re_d0() {
    noiseSS_85_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_85_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_55))) {
        noiseSS_85_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_85_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_86_im_address0() {
    noiseSS_86_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_86_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_86_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_86_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_86_im_d0() {
    noiseSS_86_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_86_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_56))) {
        noiseSS_86_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_86_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_86_re_address0() {
    noiseSS_86_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_86_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_86_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_86_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_86_re_d0() {
    noiseSS_86_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_86_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_56))) {
        noiseSS_86_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_86_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_87_im_address0() {
    noiseSS_87_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_87_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_87_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_87_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_87_im_d0() {
    noiseSS_87_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_87_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_57))) {
        noiseSS_87_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_87_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_87_re_address0() {
    noiseSS_87_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_87_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_87_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_87_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_87_re_d0() {
    noiseSS_87_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_87_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_57))) {
        noiseSS_87_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_87_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_88_im_address0() {
    noiseSS_88_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_88_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_88_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_88_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_88_im_d0() {
    noiseSS_88_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_88_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_58))) {
        noiseSS_88_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_88_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_88_re_address0() {
    noiseSS_88_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_88_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_88_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_88_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_88_re_d0() {
    noiseSS_88_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_88_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_58))) {
        noiseSS_88_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_88_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_89_im_address0() {
    noiseSS_89_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_89_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_89_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_89_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_89_im_d0() {
    noiseSS_89_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_89_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_59))) {
        noiseSS_89_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_89_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_89_re_address0() {
    noiseSS_89_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_89_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_89_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_89_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_89_re_d0() {
    noiseSS_89_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_89_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_59))) {
        noiseSS_89_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_89_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_8_im_address0() {
    noiseSS_8_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_8_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_8_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_8_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_8_im_d0() {
    noiseSS_8_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_8_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_8))) {
        noiseSS_8_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_8_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_8_re_address0() {
    noiseSS_8_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_8_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_8_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_8_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_8_re_d0() {
    noiseSS_8_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_8_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_8))) {
        noiseSS_8_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_8_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_90_im_address0() {
    noiseSS_90_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_90_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_90_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_90_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_90_im_d0() {
    noiseSS_90_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_90_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_5A))) {
        noiseSS_90_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_90_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_90_re_address0() {
    noiseSS_90_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_90_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_90_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_90_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_90_re_d0() {
    noiseSS_90_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_90_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_5A))) {
        noiseSS_90_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_90_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_91_im_address0() {
    noiseSS_91_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_91_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_91_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_91_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_91_im_d0() {
    noiseSS_91_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_91_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_5B))) {
        noiseSS_91_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_91_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_91_re_address0() {
    noiseSS_91_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_91_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_91_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_91_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_91_re_d0() {
    noiseSS_91_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_91_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_5B))) {
        noiseSS_91_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_91_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_92_im_address0() {
    noiseSS_92_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_92_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_92_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_92_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_92_im_d0() {
    noiseSS_92_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_92_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_5C))) {
        noiseSS_92_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_92_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_92_re_address0() {
    noiseSS_92_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_92_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_92_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_92_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_92_re_d0() {
    noiseSS_92_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_92_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_5C))) {
        noiseSS_92_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_92_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_93_im_address0() {
    noiseSS_93_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_93_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_93_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_93_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_93_im_d0() {
    noiseSS_93_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_93_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_5D))) {
        noiseSS_93_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_93_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_93_re_address0() {
    noiseSS_93_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_93_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_93_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_93_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_93_re_d0() {
    noiseSS_93_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_93_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_5D))) {
        noiseSS_93_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_93_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_94_im_address0() {
    noiseSS_94_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_94_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_94_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_94_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_94_im_d0() {
    noiseSS_94_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_94_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_5E))) {
        noiseSS_94_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_94_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_94_re_address0() {
    noiseSS_94_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_94_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_94_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_94_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_94_re_d0() {
    noiseSS_94_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_94_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_5E))) {
        noiseSS_94_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_94_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_95_im_address0() {
    noiseSS_95_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_95_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_95_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_95_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_95_im_d0() {
    noiseSS_95_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_95_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_5F))) {
        noiseSS_95_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_95_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_95_re_address0() {
    noiseSS_95_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_95_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_95_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_95_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_95_re_d0() {
    noiseSS_95_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_95_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_5F))) {
        noiseSS_95_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_95_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_96_im_address0() {
    noiseSS_96_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_96_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_96_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_96_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_96_im_d0() {
    noiseSS_96_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_96_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_60))) {
        noiseSS_96_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_96_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_96_re_address0() {
    noiseSS_96_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_96_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_96_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_96_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_96_re_d0() {
    noiseSS_96_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_96_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_60))) {
        noiseSS_96_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_96_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_97_im_address0() {
    noiseSS_97_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_97_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_97_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_97_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_97_im_d0() {
    noiseSS_97_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_97_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_61))) {
        noiseSS_97_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_97_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_97_re_address0() {
    noiseSS_97_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_97_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_97_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_97_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_97_re_d0() {
    noiseSS_97_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_97_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_61))) {
        noiseSS_97_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_97_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_98_im_address0() {
    noiseSS_98_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_98_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_98_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_98_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_98_im_d0() {
    noiseSS_98_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_98_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_62))) {
        noiseSS_98_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_98_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_98_re_address0() {
    noiseSS_98_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_98_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_98_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_98_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_98_re_d0() {
    noiseSS_98_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_98_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_62))) {
        noiseSS_98_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_98_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_99_im_address0() {
    noiseSS_99_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_99_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_99_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_99_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_99_im_d0() {
    noiseSS_99_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_99_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         ((((((((((((((((((((((((((((esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_7F) || 
                                     esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_7E)) || 
                                    esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_7D)) || 
                                   esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_7C)) || 
                                  esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_7B)) || 
                                 esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_7A)) || 
                                esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_79)) || 
                               esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_78)) || 
                              esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_77)) || 
                             esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_76)) || 
                            esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_75)) || 
                           esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_74)) || 
                          esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_73)) || 
                         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_72)) || 
                        esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_71)) || 
                       esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_70)) || 
                      esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_6F)) || 
                     esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_6E)) || 
                    esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_6D)) || 
                   esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_6C)) || 
                  esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_6B)) || 
                 esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_6A)) || 
                esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_69)) || 
               esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_68)) || 
              esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_67)) || 
             esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_66)) || 
            esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_65)) || 
           esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_64)) || 
          esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_63)))) {
        noiseSS_99_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_99_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_99_re_address0() {
    noiseSS_99_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_99_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_99_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_99_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_99_re_d0() {
    noiseSS_99_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_99_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         ((((((((((((((((((((((((((((esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_7F) || 
                                     esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_7E)) || 
                                    esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_7D)) || 
                                   esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_7C)) || 
                                  esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_7B)) || 
                                 esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_7A)) || 
                                esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_79)) || 
                               esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_78)) || 
                              esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_77)) || 
                             esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_76)) || 
                            esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_75)) || 
                           esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_74)) || 
                          esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_73)) || 
                         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_72)) || 
                        esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_71)) || 
                       esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_70)) || 
                      esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_6F)) || 
                     esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_6E)) || 
                    esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_6D)) || 
                   esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_6C)) || 
                  esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_6B)) || 
                 esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_6A)) || 
                esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_69)) || 
               esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_68)) || 
              esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_67)) || 
             esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_66)) || 
            esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_65)) || 
           esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_64)) || 
          esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_63)))) {
        noiseSS_99_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_99_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_9_im_address0() {
    noiseSS_9_im_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_9_im_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_9_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_9_im_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_9_im_d0() {
    noiseSS_9_im_d0 = tmp_im_8_fu_4506_p1.read();
}

void qr_givens::thread_noiseSS_9_im_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_9))) {
        noiseSS_9_im_we0 = ap_const_logic_1;
    } else {
        noiseSS_9_im_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_9_re_address0() {
    noiseSS_9_re_address0 =  (sc_lv<7>) (zext_ln111_fu_4292_p1.read());
}

void qr_givens::thread_noiseSS_9_re_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read())) {
        noiseSS_9_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_9_re_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_noiseSS_9_re_d0() {
    noiseSS_9_re_d0 = grp_fu_3728_p1.read();
}

void qr_givens::thread_noiseSS_9_re_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state118.read()) && 
         esl_seteq<1,7,7>(i14_0_reg_3664.read(), ap_const_lv7_9))) {
        noiseSS_9_re_we0 = ap_const_logic_1;
    } else {
        noiseSS_9_re_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_select_ln86_fu_4072_p3() {
    select_ln86_fu_4072_p3 = (!icmp_ln86_fu_4066_p2.read()[0].is_01())? sc_lv<64>(): ((icmp_ln86_fu_4066_p2.read()[0].to_bool())? ap_const_lv64_3FF0000000000000: ap_const_lv64_0);
}

void qr_givens::thread_sext_ln103_fu_4248_p1() {
    sext_ln103_fu_4248_p1 = esl_sext<64,15>(add_ln103_reg_4853.read());
}

void qr_givens::thread_sext_ln93_fu_4143_p1() {
    sext_ln93_fu_4143_p1 = esl_sext<64,15>(add_ln93_1_fu_4139_p2.read());
}

void qr_givens::thread_temp1i_0_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state113.read())) {
        temp1i_0_address0 =  (sc_lv<7>) (zext_ln101_fu_4210_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        temp1i_0_address0 = grp_MalM_fu_3688_C_re_address0.read();
    } else {
        temp1i_0_address0 =  (sc_lv<7>) ("XXXXXXX");
    }
}

void qr_givens::thread_temp1i_0_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state113.read())) {
        temp1i_0_ce0 = ap_const_logic_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        temp1i_0_ce0 = grp_MalM_fu_3688_C_re_ce0.read();
    } else {
        temp1i_0_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_temp1i_0_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        temp1i_0_we0 = grp_MalM_fu_3688_C_re_we0.read();
    } else {
        temp1i_0_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_temp1i_1_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state113.read())) {
        temp1i_1_address0 =  (sc_lv<7>) (zext_ln101_fu_4210_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        temp1i_1_address0 = grp_MalM_fu_3688_C_im_address0.read();
    } else {
        temp1i_1_address0 =  (sc_lv<7>) ("XXXXXXX");
    }
}

void qr_givens::thread_temp1i_1_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state113.read())) {
        temp1i_1_ce0 = ap_const_logic_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        temp1i_1_ce0 = grp_MalM_fu_3688_C_im_ce0.read();
    } else {
        temp1i_1_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_temp1i_1_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        temp1i_1_we0 = grp_MalM_fu_3688_C_im_we0.read();
    } else {
        temp1i_1_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_temp1j_0_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state113.read())) {
        temp1j_0_address0 =  (sc_lv<7>) (zext_ln101_fu_4210_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        temp1j_0_address0 = grp_MalM_fu_3688_D_re_address0.read();
    } else {
        temp1j_0_address0 =  (sc_lv<7>) ("XXXXXXX");
    }
}

void qr_givens::thread_temp1j_0_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state113.read())) {
        temp1j_0_ce0 = ap_const_logic_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        temp1j_0_ce0 = grp_MalM_fu_3688_D_re_ce0.read();
    } else {
        temp1j_0_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_temp1j_0_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        temp1j_0_we0 = grp_MalM_fu_3688_D_re_we0.read();
    } else {
        temp1j_0_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_temp1j_1_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state113.read())) {
        temp1j_1_address0 =  (sc_lv<7>) (zext_ln101_fu_4210_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        temp1j_1_address0 = grp_MalM_fu_3688_D_im_address0.read();
    } else {
        temp1j_1_address0 =  (sc_lv<7>) ("XXXXXXX");
    }
}

void qr_givens::thread_temp1j_1_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state113.read())) {
        temp1j_1_ce0 = ap_const_logic_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        temp1j_1_ce0 = grp_MalM_fu_3688_D_im_ce0.read();
    } else {
        temp1j_1_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_temp1j_1_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        temp1j_1_we0 = grp_MalM_fu_3688_D_im_we0.read();
    } else {
        temp1j_1_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_temp2i_0_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state113.read())) {
        temp2i_0_address0 =  (sc_lv<7>) (zext_ln101_fu_4210_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        temp2i_0_address0 = grp_MalM_fu_3708_C_re_address0.read();
    } else {
        temp2i_0_address0 =  (sc_lv<7>) ("XXXXXXX");
    }
}

void qr_givens::thread_temp2i_0_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state113.read())) {
        temp2i_0_ce0 = ap_const_logic_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        temp2i_0_ce0 = grp_MalM_fu_3708_C_re_ce0.read();
    } else {
        temp2i_0_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_temp2i_0_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        temp2i_0_we0 = grp_MalM_fu_3708_C_re_we0.read();
    } else {
        temp2i_0_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_temp2i_1_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state113.read())) {
        temp2i_1_address0 =  (sc_lv<7>) (zext_ln101_fu_4210_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        temp2i_1_address0 = grp_MalM_fu_3708_C_im_address0.read();
    } else {
        temp2i_1_address0 =  (sc_lv<7>) ("XXXXXXX");
    }
}

void qr_givens::thread_temp2i_1_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state113.read())) {
        temp2i_1_ce0 = ap_const_logic_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        temp2i_1_ce0 = grp_MalM_fu_3708_C_im_ce0.read();
    } else {
        temp2i_1_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_temp2i_1_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        temp2i_1_we0 = grp_MalM_fu_3708_C_im_we0.read();
    } else {
        temp2i_1_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_temp2j_0_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state113.read())) {
        temp2j_0_address0 =  (sc_lv<7>) (zext_ln101_fu_4210_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        temp2j_0_address0 = grp_MalM_fu_3708_D_re_address0.read();
    } else {
        temp2j_0_address0 =  (sc_lv<7>) ("XXXXXXX");
    }
}

void qr_givens::thread_temp2j_0_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state113.read())) {
        temp2j_0_ce0 = ap_const_logic_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        temp2j_0_ce0 = grp_MalM_fu_3708_D_re_ce0.read();
    } else {
        temp2j_0_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_temp2j_0_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        temp2j_0_we0 = grp_MalM_fu_3708_D_re_we0.read();
    } else {
        temp2j_0_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_temp2j_1_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state113.read())) {
        temp2j_1_address0 =  (sc_lv<7>) (zext_ln101_fu_4210_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        temp2j_1_address0 = grp_MalM_fu_3708_D_im_address0.read();
    } else {
        temp2j_1_address0 =  (sc_lv<7>) ("XXXXXXX");
    }
}

void qr_givens::thread_temp2j_1_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state113.read())) {
        temp2j_1_ce0 = ap_const_logic_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        temp2j_1_ce0 = grp_MalM_fu_3708_D_im_ce0.read();
    } else {
        temp2j_1_ce0 = ap_const_logic_0;
    }
}

void qr_givens::thread_temp2j_1_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state112.read())) {
        temp2j_1_we0 = grp_MalM_fu_3708_D_im_we0.read();
    } else {
        temp2j_1_we0 = ap_const_logic_0;
    }
}

void qr_givens::thread_tmp_im_5_fu_4192_p1() {
    tmp_im_5_fu_4192_p1 = xor_ln212_fu_4186_p2.read();
}

void qr_givens::thread_tmp_im_8_fu_4506_p1() {
    tmp_im_8_fu_4506_p1 = xor_ln329_fu_4500_p2.read();
}

void qr_givens::thread_tmp_re_5_fu_4177_p1() {
    tmp_re_5_fu_4177_p1 = xor_ln211_fu_4171_p2.read();
}

void qr_givens::thread_xor_ln211_fu_4171_p2() {
    xor_ln211_fu_4171_p2 = (bitcast_ln211_fu_4168_p1.read() ^ ap_const_lv64_8000000000000000);
}

void qr_givens::thread_xor_ln212_fu_4186_p2() {
    xor_ln212_fu_4186_p2 = (bitcast_ln212_fu_4183_p1.read() ^ ap_const_lv64_8000000000000000);
}

void qr_givens::thread_xor_ln329_1_fu_4153_p2() {
    xor_ln329_1_fu_4153_p2 = (bitcast_ln329_1_fu_4149_p1.read() ^ ap_const_lv64_8000000000000000);
}

void qr_givens::thread_xor_ln329_fu_4500_p2() {
    xor_ln329_fu_4500_p2 = (bitcast_ln329_fu_4496_p1.read() ^ ap_const_lv32_80000000);
}

void qr_givens::thread_zext_ln101_1_fu_4222_p1() {
    zext_ln101_1_fu_4222_p1 = esl_zext<15,7>(k_0_reg_3653.read());
}

void qr_givens::thread_zext_ln101_2_fu_4226_p1() {
    zext_ln101_2_fu_4226_p1 = esl_zext<14,7>(k_0_reg_3653.read());
}

void qr_givens::thread_zext_ln101_3_fu_4241_p1() {
    zext_ln101_3_fu_4241_p1 = esl_zext<64,14>(add_ln101_reg_4848.read());
}

void qr_givens::thread_zext_ln101_fu_4210_p1() {
    zext_ln101_fu_4210_p1 = esl_zext<64,7>(k_0_reg_3653.read());
}

void qr_givens::thread_zext_ln109_fu_4267_p1() {
    zext_ln109_fu_4267_p1 = esl_zext<14,7>(i14_0_reg_3664.read());
}

void qr_givens::thread_zext_ln111_fu_4292_p1() {
    zext_ln111_fu_4292_p1 = esl_zext<64,7>(add_ln111_fu_4286_p2.read());
}

void qr_givens::thread_zext_ln85_1_fu_4059_p1() {
    zext_ln85_1_fu_4059_p1 = esl_zext<64,14>(add_ln85_fu_4053_p2.read());
}

void qr_givens::thread_zext_ln85_fu_4049_p1() {
    zext_ln85_fu_4049_p1 = esl_zext<14,7>(j_0_reg_3609.read());
}

void qr_givens::thread_zext_ln87_1_fu_4281_p1() {
    zext_ln87_1_fu_4281_p1 = esl_zext<64,14>(grp_fu_4623_p3.read());
}

void qr_givens::thread_zext_ln89_fu_4087_p1() {
    zext_ln89_fu_4087_p1 = esl_zext<32,7>(i8_0_reg_3620.read());
}

void qr_givens::thread_zext_ln93_1_fu_4107_p1() {
    zext_ln93_1_fu_4107_p1 = esl_zext<14,7>(i8_0_reg_3620.read());
}

void qr_givens::thread_zext_ln93_2_fu_4117_p1() {
    zext_ln93_2_fu_4117_p1 = esl_zext<64,14>(add_ln93_fu_4111_p2.read());
}

void qr_givens::thread_zext_ln93_fu_4103_p1() {
    zext_ln93_fu_4103_p1 = esl_zext<15,7>(i8_0_reg_3620.read());
}

}

