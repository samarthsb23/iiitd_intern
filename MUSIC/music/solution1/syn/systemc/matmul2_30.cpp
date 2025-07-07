#include "matmul2.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void matmul2::thread_grp_operator_mul_fu_4771_x_complex_float_re_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4771_x_complex_float_re_read = pseudo_sig_89_re_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4771_x_complex_float_re_read = pseudo_sig_64_re_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4771_x_complex_float_re_read = pseudo_sig_39_re_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4771_x_complex_float_re_read = pseudo_sig_14_re_re.read();
    } else {
        grp_operator_mul_fu_4771_x_complex_float_re_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4779_ap_ce() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage2_11001_ignoreCallOp1347.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage3_11001_ignoreCallOp1372.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0_11001_ignoreCallOp1422.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage1_11001_ignoreCallOp1497.read(), ap_const_boolean_0)))) {
        grp_operator_mul_fu_4779_ap_ce = ap_const_logic_1;
    } else {
        grp_operator_mul_fu_4779_ap_ce = ap_const_logic_0;
    }
}

void matmul2::thread_grp_operator_mul_fu_4779_rhs_im_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4779_rhs_im_read = noiseSS_90_im_load_reg_8600.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4779_rhs_im_read = noiseSS_65_im_load_reg_8350.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4779_rhs_im_read = noiseSS_40_im_load_reg_8100.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4779_rhs_im_read = noiseSS_15_im_load_reg_7850.read();
    } else {
        grp_operator_mul_fu_4779_rhs_im_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4779_rhs_re_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4779_rhs_re_read = noiseSS_90_re_load_reg_8595.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4779_rhs_re_read = noiseSS_65_re_load_reg_8345.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4779_rhs_re_read = noiseSS_40_re_load_reg_8095.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4779_rhs_re_read = noiseSS_15_re_load_reg_7845.read();
    } else {
        grp_operator_mul_fu_4779_rhs_re_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4779_x_complex_float_im_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4779_x_complex_float_im_read = pseudo_sig_90_im_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4779_x_complex_float_im_read = pseudo_sig_65_im_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4779_x_complex_float_im_read = pseudo_sig_40_im_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4779_x_complex_float_im_read = pseudo_sig_15_im_re.read();
    } else {
        grp_operator_mul_fu_4779_x_complex_float_im_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4779_x_complex_float_re_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4779_x_complex_float_re_read = pseudo_sig_90_re_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4779_x_complex_float_re_read = pseudo_sig_65_re_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4779_x_complex_float_re_read = pseudo_sig_40_re_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4779_x_complex_float_re_read = pseudo_sig_15_re_re.read();
    } else {
        grp_operator_mul_fu_4779_x_complex_float_re_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4787_ap_ce() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage2_11001_ignoreCallOp1348.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage3_11001_ignoreCallOp1373.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0_11001_ignoreCallOp1423.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage1_11001_ignoreCallOp1498.read(), ap_const_boolean_0)))) {
        grp_operator_mul_fu_4787_ap_ce = ap_const_logic_1;
    } else {
        grp_operator_mul_fu_4787_ap_ce = ap_const_logic_0;
    }
}

void matmul2::thread_grp_operator_mul_fu_4787_rhs_im_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4787_rhs_im_read = noiseSS_91_im_load_reg_8610.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4787_rhs_im_read = noiseSS_66_im_load_reg_8360.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4787_rhs_im_read = noiseSS_41_im_load_reg_8110.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4787_rhs_im_read = noiseSS_16_im_load_reg_7860.read();
    } else {
        grp_operator_mul_fu_4787_rhs_im_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4787_rhs_re_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4787_rhs_re_read = noiseSS_91_re_load_reg_8605.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4787_rhs_re_read = noiseSS_66_re_load_reg_8355.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4787_rhs_re_read = noiseSS_41_re_load_reg_8105.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4787_rhs_re_read = noiseSS_16_re_load_reg_7855.read();
    } else {
        grp_operator_mul_fu_4787_rhs_re_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4787_x_complex_float_im_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4787_x_complex_float_im_read = pseudo_sig_91_im_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4787_x_complex_float_im_read = pseudo_sig_66_im_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4787_x_complex_float_im_read = pseudo_sig_41_im_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4787_x_complex_float_im_read = pseudo_sig_16_im_re.read();
    } else {
        grp_operator_mul_fu_4787_x_complex_float_im_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4787_x_complex_float_re_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4787_x_complex_float_re_read = pseudo_sig_91_re_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4787_x_complex_float_re_read = pseudo_sig_66_re_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4787_x_complex_float_re_read = pseudo_sig_41_re_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4787_x_complex_float_re_read = pseudo_sig_16_re_re.read();
    } else {
        grp_operator_mul_fu_4787_x_complex_float_re_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4795_ap_ce() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage2_11001_ignoreCallOp1349.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage3_11001_ignoreCallOp1374.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0_11001_ignoreCallOp1424.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage1_11001_ignoreCallOp1499.read(), ap_const_boolean_0)))) {
        grp_operator_mul_fu_4795_ap_ce = ap_const_logic_1;
    } else {
        grp_operator_mul_fu_4795_ap_ce = ap_const_logic_0;
    }
}

void matmul2::thread_grp_operator_mul_fu_4795_rhs_im_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4795_rhs_im_read = noiseSS_92_im_load_reg_8620.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4795_rhs_im_read = noiseSS_67_im_load_reg_8370.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4795_rhs_im_read = noiseSS_42_im_load_reg_8120.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4795_rhs_im_read = noiseSS_17_im_load_reg_7870.read();
    } else {
        grp_operator_mul_fu_4795_rhs_im_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4795_rhs_re_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4795_rhs_re_read = noiseSS_92_re_load_reg_8615.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4795_rhs_re_read = noiseSS_67_re_load_reg_8365.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4795_rhs_re_read = noiseSS_42_re_load_reg_8115.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4795_rhs_re_read = noiseSS_17_re_load_reg_7865.read();
    } else {
        grp_operator_mul_fu_4795_rhs_re_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4795_x_complex_float_im_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4795_x_complex_float_im_read = pseudo_sig_92_im_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4795_x_complex_float_im_read = pseudo_sig_67_im_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4795_x_complex_float_im_read = pseudo_sig_42_im_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4795_x_complex_float_im_read = pseudo_sig_17_im_re.read();
    } else {
        grp_operator_mul_fu_4795_x_complex_float_im_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4795_x_complex_float_re_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4795_x_complex_float_re_read = pseudo_sig_92_re_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4795_x_complex_float_re_read = pseudo_sig_67_re_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4795_x_complex_float_re_read = pseudo_sig_42_re_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4795_x_complex_float_re_read = pseudo_sig_17_re_re.read();
    } else {
        grp_operator_mul_fu_4795_x_complex_float_re_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4803_ap_ce() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage2_11001_ignoreCallOp1350.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage3_11001_ignoreCallOp1375.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0_11001_ignoreCallOp1425.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage1_11001_ignoreCallOp1500.read(), ap_const_boolean_0)))) {
        grp_operator_mul_fu_4803_ap_ce = ap_const_logic_1;
    } else {
        grp_operator_mul_fu_4803_ap_ce = ap_const_logic_0;
    }
}

void matmul2::thread_grp_operator_mul_fu_4803_rhs_im_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4803_rhs_im_read = noiseSS_93_im_load_reg_8630.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4803_rhs_im_read = noiseSS_68_im_load_reg_8380.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4803_rhs_im_read = noiseSS_43_im_load_reg_8130.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4803_rhs_im_read = noiseSS_18_im_load_reg_7880.read();
    } else {
        grp_operator_mul_fu_4803_rhs_im_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4803_rhs_re_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4803_rhs_re_read = noiseSS_93_re_load_reg_8625.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4803_rhs_re_read = noiseSS_68_re_load_reg_8375.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4803_rhs_re_read = noiseSS_43_re_load_reg_8125.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4803_rhs_re_read = noiseSS_18_re_load_reg_7875.read();
    } else {
        grp_operator_mul_fu_4803_rhs_re_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4803_x_complex_float_im_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4803_x_complex_float_im_read = pseudo_sig_93_im_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4803_x_complex_float_im_read = pseudo_sig_68_im_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4803_x_complex_float_im_read = pseudo_sig_43_im_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4803_x_complex_float_im_read = pseudo_sig_18_im_re.read();
    } else {
        grp_operator_mul_fu_4803_x_complex_float_im_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4803_x_complex_float_re_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4803_x_complex_float_re_read = pseudo_sig_93_re_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4803_x_complex_float_re_read = pseudo_sig_68_re_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4803_x_complex_float_re_read = pseudo_sig_43_re_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4803_x_complex_float_re_read = pseudo_sig_18_re_re.read();
    } else {
        grp_operator_mul_fu_4803_x_complex_float_re_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4811_ap_ce() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage2_11001_ignoreCallOp1351.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage3_11001_ignoreCallOp1376.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0_11001_ignoreCallOp1426.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage1_11001_ignoreCallOp1501.read(), ap_const_boolean_0)))) {
        grp_operator_mul_fu_4811_ap_ce = ap_const_logic_1;
    } else {
        grp_operator_mul_fu_4811_ap_ce = ap_const_logic_0;
    }
}

void matmul2::thread_grp_operator_mul_fu_4811_rhs_im_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4811_rhs_im_read = noiseSS_94_im_load_reg_8640.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4811_rhs_im_read = noiseSS_69_im_load_reg_8390.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4811_rhs_im_read = noiseSS_44_im_load_reg_8140.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4811_rhs_im_read = noiseSS_19_im_load_reg_7890.read();
    } else {
        grp_operator_mul_fu_4811_rhs_im_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4811_rhs_re_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4811_rhs_re_read = noiseSS_94_re_load_reg_8635.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4811_rhs_re_read = noiseSS_69_re_load_reg_8385.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4811_rhs_re_read = noiseSS_44_re_load_reg_8135.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4811_rhs_re_read = noiseSS_19_re_load_reg_7885.read();
    } else {
        grp_operator_mul_fu_4811_rhs_re_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4811_x_complex_float_im_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4811_x_complex_float_im_read = pseudo_sig_94_im_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4811_x_complex_float_im_read = pseudo_sig_69_im_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4811_x_complex_float_im_read = pseudo_sig_44_im_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4811_x_complex_float_im_read = pseudo_sig_19_im_re.read();
    } else {
        grp_operator_mul_fu_4811_x_complex_float_im_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4811_x_complex_float_re_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4811_x_complex_float_re_read = pseudo_sig_94_re_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4811_x_complex_float_re_read = pseudo_sig_69_re_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4811_x_complex_float_re_read = pseudo_sig_44_re_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4811_x_complex_float_re_read = pseudo_sig_19_re_re.read();
    } else {
        grp_operator_mul_fu_4811_x_complex_float_re_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4819_ap_ce() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage2_11001_ignoreCallOp1352.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage3_11001_ignoreCallOp1377.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0_11001_ignoreCallOp1427.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage1_11001_ignoreCallOp1502.read(), ap_const_boolean_0)))) {
        grp_operator_mul_fu_4819_ap_ce = ap_const_logic_1;
    } else {
        grp_operator_mul_fu_4819_ap_ce = ap_const_logic_0;
    }
}

void matmul2::thread_grp_operator_mul_fu_4819_rhs_im_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4819_rhs_im_read = noiseSS_95_im_load_reg_8650.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4819_rhs_im_read = noiseSS_70_im_load_reg_8400.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4819_rhs_im_read = noiseSS_45_im_load_reg_8150.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4819_rhs_im_read = noiseSS_20_im_load_reg_7900.read();
    } else {
        grp_operator_mul_fu_4819_rhs_im_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4819_rhs_re_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4819_rhs_re_read = noiseSS_95_re_load_reg_8645.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4819_rhs_re_read = noiseSS_70_re_load_reg_8395.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4819_rhs_re_read = noiseSS_45_re_load_reg_8145.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4819_rhs_re_read = noiseSS_20_re_load_reg_7895.read();
    } else {
        grp_operator_mul_fu_4819_rhs_re_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4819_x_complex_float_im_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4819_x_complex_float_im_read = pseudo_sig_95_im_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4819_x_complex_float_im_read = pseudo_sig_70_im_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4819_x_complex_float_im_read = pseudo_sig_45_im_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4819_x_complex_float_im_read = pseudo_sig_20_im_re.read();
    } else {
        grp_operator_mul_fu_4819_x_complex_float_im_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4819_x_complex_float_re_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4819_x_complex_float_re_read = pseudo_sig_95_re_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4819_x_complex_float_re_read = pseudo_sig_70_re_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4819_x_complex_float_re_read = pseudo_sig_45_re_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4819_x_complex_float_re_read = pseudo_sig_20_re_re.read();
    } else {
        grp_operator_mul_fu_4819_x_complex_float_re_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4827_ap_ce() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage2_11001_ignoreCallOp1353.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage3_11001_ignoreCallOp1378.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0_11001_ignoreCallOp1428.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage1_11001_ignoreCallOp1503.read(), ap_const_boolean_0)))) {
        grp_operator_mul_fu_4827_ap_ce = ap_const_logic_1;
    } else {
        grp_operator_mul_fu_4827_ap_ce = ap_const_logic_0;
    }
}

void matmul2::thread_grp_operator_mul_fu_4827_rhs_im_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4827_rhs_im_read = noiseSS_96_im_load_reg_8660.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4827_rhs_im_read = noiseSS_71_im_load_reg_8410.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4827_rhs_im_read = noiseSS_46_im_load_reg_8160.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4827_rhs_im_read = noiseSS_21_im_load_reg_7910.read();
    } else {
        grp_operator_mul_fu_4827_rhs_im_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4827_rhs_re_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4827_rhs_re_read = noiseSS_96_re_load_reg_8655.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4827_rhs_re_read = noiseSS_71_re_load_reg_8405.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4827_rhs_re_read = noiseSS_46_re_load_reg_8155.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4827_rhs_re_read = noiseSS_21_re_load_reg_7905.read();
    } else {
        grp_operator_mul_fu_4827_rhs_re_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4827_x_complex_float_im_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4827_x_complex_float_im_read = pseudo_sig_96_im_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4827_x_complex_float_im_read = pseudo_sig_71_im_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4827_x_complex_float_im_read = pseudo_sig_46_im_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4827_x_complex_float_im_read = pseudo_sig_21_im_re.read();
    } else {
        grp_operator_mul_fu_4827_x_complex_float_im_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4827_x_complex_float_re_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4827_x_complex_float_re_read = pseudo_sig_96_re_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4827_x_complex_float_re_read = pseudo_sig_71_re_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4827_x_complex_float_re_read = pseudo_sig_46_re_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4827_x_complex_float_re_read = pseudo_sig_21_re_re.read();
    } else {
        grp_operator_mul_fu_4827_x_complex_float_re_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4835_ap_ce() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage2_11001_ignoreCallOp1354.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage3_11001_ignoreCallOp1379.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0_11001_ignoreCallOp1429.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage1_11001_ignoreCallOp1504.read(), ap_const_boolean_0)))) {
        grp_operator_mul_fu_4835_ap_ce = ap_const_logic_1;
    } else {
        grp_operator_mul_fu_4835_ap_ce = ap_const_logic_0;
    }
}

void matmul2::thread_grp_operator_mul_fu_4835_rhs_im_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4835_rhs_im_read = noiseSS_97_im_load_reg_8670.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4835_rhs_im_read = noiseSS_72_im_load_reg_8420.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4835_rhs_im_read = noiseSS_47_im_load_reg_8170.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4835_rhs_im_read = noiseSS_22_im_load_reg_7920.read();
    } else {
        grp_operator_mul_fu_4835_rhs_im_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4835_rhs_re_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4835_rhs_re_read = noiseSS_97_re_load_reg_8665.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4835_rhs_re_read = noiseSS_72_re_load_reg_8415.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4835_rhs_re_read = noiseSS_47_re_load_reg_8165.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4835_rhs_re_read = noiseSS_22_re_load_reg_7915.read();
    } else {
        grp_operator_mul_fu_4835_rhs_re_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4835_x_complex_float_im_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4835_x_complex_float_im_read = pseudo_sig_97_im_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4835_x_complex_float_im_read = pseudo_sig_72_im_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4835_x_complex_float_im_read = pseudo_sig_47_im_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4835_x_complex_float_im_read = pseudo_sig_22_im_re.read();
    } else {
        grp_operator_mul_fu_4835_x_complex_float_im_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4835_x_complex_float_re_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4835_x_complex_float_re_read = pseudo_sig_97_re_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4835_x_complex_float_re_read = pseudo_sig_72_re_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4835_x_complex_float_re_read = pseudo_sig_47_re_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4835_x_complex_float_re_read = pseudo_sig_22_re_re.read();
    } else {
        grp_operator_mul_fu_4835_x_complex_float_re_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4843_ap_ce() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage2_11001_ignoreCallOp1355.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage3_11001_ignoreCallOp1380.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0_11001_ignoreCallOp1430.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage1_11001_ignoreCallOp1505.read(), ap_const_boolean_0)))) {
        grp_operator_mul_fu_4843_ap_ce = ap_const_logic_1;
    } else {
        grp_operator_mul_fu_4843_ap_ce = ap_const_logic_0;
    }
}

void matmul2::thread_grp_operator_mul_fu_4843_rhs_im_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4843_rhs_im_read = noiseSS_98_im_load_reg_8680.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4843_rhs_im_read = noiseSS_73_im_load_reg_8430.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4843_rhs_im_read = noiseSS_48_im_load_reg_8180.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4843_rhs_im_read = noiseSS_23_im_load_reg_7930.read();
    } else {
        grp_operator_mul_fu_4843_rhs_im_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4843_rhs_re_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4843_rhs_re_read = noiseSS_98_re_load_reg_8675.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4843_rhs_re_read = noiseSS_73_re_load_reg_8425.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4843_rhs_re_read = noiseSS_48_re_load_reg_8175.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4843_rhs_re_read = noiseSS_23_re_load_reg_7925.read();
    } else {
        grp_operator_mul_fu_4843_rhs_re_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4843_x_complex_float_im_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4843_x_complex_float_im_read = pseudo_sig_98_im_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4843_x_complex_float_im_read = pseudo_sig_73_im_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4843_x_complex_float_im_read = pseudo_sig_48_im_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4843_x_complex_float_im_read = pseudo_sig_23_im_re.read();
    } else {
        grp_operator_mul_fu_4843_x_complex_float_im_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4843_x_complex_float_re_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4843_x_complex_float_re_read = pseudo_sig_98_re_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4843_x_complex_float_re_read = pseudo_sig_73_re_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4843_x_complex_float_re_read = pseudo_sig_48_re_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4843_x_complex_float_re_read = pseudo_sig_23_re_re.read();
    } else {
        grp_operator_mul_fu_4843_x_complex_float_re_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4851_ap_ce() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage2_11001_ignoreCallOp1356.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage3_11001_ignoreCallOp1381.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0_11001_ignoreCallOp1431.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage1_11001_ignoreCallOp1506.read(), ap_const_boolean_0)))) {
        grp_operator_mul_fu_4851_ap_ce = ap_const_logic_1;
    } else {
        grp_operator_mul_fu_4851_ap_ce = ap_const_logic_0;
    }
}

void matmul2::thread_grp_operator_mul_fu_4851_rhs_im_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4851_rhs_im_read = noiseSS_99_im_load_reg_8690.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4851_rhs_im_read = noiseSS_74_im_load_reg_8440.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4851_rhs_im_read = noiseSS_49_im_load_reg_8190.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4851_rhs_im_read = noiseSS_24_im_load_reg_7940.read();
    } else {
        grp_operator_mul_fu_4851_rhs_im_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4851_rhs_re_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4851_rhs_re_read = noiseSS_99_re_load_reg_8685.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4851_rhs_re_read = noiseSS_74_re_load_reg_8435.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4851_rhs_re_read = noiseSS_49_re_load_reg_8185.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4851_rhs_re_read = noiseSS_24_re_load_reg_7935.read();
    } else {
        grp_operator_mul_fu_4851_rhs_re_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4851_x_complex_float_im_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4851_x_complex_float_im_read = pseudo_sig_99_im_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4851_x_complex_float_im_read = pseudo_sig_74_im_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4851_x_complex_float_im_read = pseudo_sig_49_im_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4851_x_complex_float_im_read = pseudo_sig_24_im_re.read();
    } else {
        grp_operator_mul_fu_4851_x_complex_float_im_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_grp_operator_mul_fu_4851_x_complex_float_re_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(icmp_ln126_reg_6686_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4851_x_complex_float_re_read = pseudo_sig_99_re_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4851_x_complex_float_re_read = pseudo_sig_74_re_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage3.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4851_x_complex_float_re_read = pseudo_sig_49_re_re.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln126_reg_6686.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        grp_operator_mul_fu_4851_x_complex_float_re_read = pseudo_sig_24_re_re.read();
    } else {
        grp_operator_mul_fu_4851_x_complex_float_re_read = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void matmul2::thread_i_fu_5476_p2() {
    i_fu_5476_p2 = (!ap_phi_mux_i_0_phi_fu_4652_p4.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_biguint<7>(ap_phi_mux_i_0_phi_fu_4652_p4.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void matmul2::thread_icmp_ln126_fu_5470_p2() {
    icmp_ln126_fu_5470_p2 = (!ap_phi_mux_i_0_phi_fu_4652_p4.read().is_01() || !ap_const_lv7_62.is_01())? sc_lv<1>(): sc_lv<1>(ap_phi_mux_i_0_phi_fu_4652_p4.read() == ap_const_lv7_62);
}

void matmul2::thread_noiseSS_0_im_address0() {
    noiseSS_0_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_0_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_0_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_0_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_0_re_address0() {
    noiseSS_0_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_0_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_0_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_0_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_10_im_address0() {
    noiseSS_10_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_10_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_10_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_10_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_10_re_address0() {
    noiseSS_10_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_10_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_10_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_10_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_11_im_address0() {
    noiseSS_11_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_11_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_11_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_11_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_11_re_address0() {
    noiseSS_11_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_11_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_11_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_11_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_12_im_address0() {
    noiseSS_12_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_12_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_12_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_12_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_12_re_address0() {
    noiseSS_12_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_12_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_12_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_12_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_13_im_address0() {
    noiseSS_13_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_13_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_13_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_13_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_13_re_address0() {
    noiseSS_13_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_13_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_13_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_13_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_14_im_address0() {
    noiseSS_14_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_14_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_14_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_14_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_14_re_address0() {
    noiseSS_14_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_14_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_14_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_14_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_15_im_address0() {
    noiseSS_15_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_15_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_15_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_15_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_15_re_address0() {
    noiseSS_15_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_15_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_15_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_15_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_16_im_address0() {
    noiseSS_16_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_16_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_16_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_16_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_16_re_address0() {
    noiseSS_16_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_16_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_16_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_16_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_17_im_address0() {
    noiseSS_17_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_17_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_17_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_17_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_17_re_address0() {
    noiseSS_17_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_17_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_17_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_17_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_18_im_address0() {
    noiseSS_18_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_18_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_18_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_18_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_18_re_address0() {
    noiseSS_18_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_18_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_18_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_18_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_19_im_address0() {
    noiseSS_19_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_19_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_19_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_19_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_19_re_address0() {
    noiseSS_19_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_19_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_19_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_19_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_1_im_address0() {
    noiseSS_1_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_1_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_1_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_1_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_1_re_address0() {
    noiseSS_1_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_1_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_1_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_1_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_20_im_address0() {
    noiseSS_20_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_20_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_20_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_20_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_20_re_address0() {
    noiseSS_20_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_20_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_20_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_20_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_21_im_address0() {
    noiseSS_21_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_21_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_21_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_21_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_21_re_address0() {
    noiseSS_21_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_21_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_21_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_21_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_22_im_address0() {
    noiseSS_22_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_22_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_22_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_22_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_22_re_address0() {
    noiseSS_22_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_22_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_22_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_22_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_23_im_address0() {
    noiseSS_23_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_23_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_23_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_23_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_23_re_address0() {
    noiseSS_23_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_23_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_23_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_23_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_24_im_address0() {
    noiseSS_24_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_24_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_24_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_24_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_24_re_address0() {
    noiseSS_24_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_24_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_24_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_24_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_25_im_address0() {
    noiseSS_25_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_25_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_25_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_25_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_25_re_address0() {
    noiseSS_25_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_25_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_25_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_25_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_26_im_address0() {
    noiseSS_26_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_26_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_26_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_26_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_26_re_address0() {
    noiseSS_26_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_26_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_26_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_26_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_27_im_address0() {
    noiseSS_27_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_27_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_27_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_27_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_27_re_address0() {
    noiseSS_27_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_27_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_27_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_27_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_28_im_address0() {
    noiseSS_28_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_28_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_28_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_28_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_28_re_address0() {
    noiseSS_28_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_28_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_28_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_28_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_29_im_address0() {
    noiseSS_29_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_29_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_29_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_29_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_29_re_address0() {
    noiseSS_29_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_29_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_29_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_29_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_2_im_address0() {
    noiseSS_2_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_2_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_2_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_2_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_2_re_address0() {
    noiseSS_2_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_2_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_2_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_2_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_30_im_address0() {
    noiseSS_30_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_30_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_30_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_30_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_30_re_address0() {
    noiseSS_30_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_30_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_30_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_30_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_31_im_address0() {
    noiseSS_31_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_31_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_31_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_31_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_31_re_address0() {
    noiseSS_31_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_31_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_31_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_31_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_32_im_address0() {
    noiseSS_32_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_32_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_32_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_32_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_32_re_address0() {
    noiseSS_32_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_32_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_32_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_32_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_33_im_address0() {
    noiseSS_33_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_33_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_33_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_33_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_33_re_address0() {
    noiseSS_33_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_33_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_33_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_33_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_34_im_address0() {
    noiseSS_34_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_34_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_34_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_34_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_34_re_address0() {
    noiseSS_34_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_34_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_34_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_34_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_35_im_address0() {
    noiseSS_35_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_35_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_35_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_35_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_35_re_address0() {
    noiseSS_35_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_35_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_35_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_35_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_36_im_address0() {
    noiseSS_36_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_36_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_36_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_36_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_36_re_address0() {
    noiseSS_36_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_36_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_36_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_36_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_37_im_address0() {
    noiseSS_37_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_37_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_37_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_37_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_37_re_address0() {
    noiseSS_37_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_37_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_37_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_37_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_38_im_address0() {
    noiseSS_38_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_38_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_38_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_38_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_38_re_address0() {
    noiseSS_38_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_38_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_38_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_38_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_39_im_address0() {
    noiseSS_39_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_39_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_39_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_39_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_39_re_address0() {
    noiseSS_39_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_39_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_39_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_39_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_3_im_address0() {
    noiseSS_3_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_3_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_3_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_3_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_3_re_address0() {
    noiseSS_3_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_3_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_3_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_3_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_40_im_address0() {
    noiseSS_40_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_40_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_40_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_40_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_40_re_address0() {
    noiseSS_40_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_40_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_40_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_40_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_41_im_address0() {
    noiseSS_41_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_41_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_41_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_41_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_41_re_address0() {
    noiseSS_41_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_41_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_41_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_41_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_42_im_address0() {
    noiseSS_42_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_42_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_42_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_42_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_42_re_address0() {
    noiseSS_42_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_42_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_42_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_42_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_43_im_address0() {
    noiseSS_43_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_43_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_43_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_43_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_43_re_address0() {
    noiseSS_43_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_43_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_43_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_43_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_44_im_address0() {
    noiseSS_44_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_44_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_44_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_44_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_44_re_address0() {
    noiseSS_44_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_44_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_44_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_44_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_45_im_address0() {
    noiseSS_45_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_45_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_45_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_45_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_45_re_address0() {
    noiseSS_45_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_45_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_45_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_45_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_46_im_address0() {
    noiseSS_46_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_46_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_46_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_46_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_46_re_address0() {
    noiseSS_46_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_46_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_46_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_46_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_47_im_address0() {
    noiseSS_47_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_47_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_47_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_47_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_47_re_address0() {
    noiseSS_47_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_47_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_47_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_47_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_48_im_address0() {
    noiseSS_48_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_48_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_48_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_48_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_48_re_address0() {
    noiseSS_48_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_48_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_48_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_48_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_49_im_address0() {
    noiseSS_49_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_49_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_49_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_49_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_49_re_address0() {
    noiseSS_49_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_49_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_49_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_49_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_4_im_address0() {
    noiseSS_4_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_4_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_4_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_4_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_4_re_address0() {
    noiseSS_4_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_4_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_4_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_4_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_50_im_address0() {
    noiseSS_50_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_50_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_50_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_50_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_50_re_address0() {
    noiseSS_50_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_50_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_50_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_50_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_51_im_address0() {
    noiseSS_51_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_51_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_51_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_51_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_51_re_address0() {
    noiseSS_51_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_51_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_51_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_51_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_52_im_address0() {
    noiseSS_52_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_52_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_52_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_52_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_52_re_address0() {
    noiseSS_52_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_52_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_52_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_52_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_53_im_address0() {
    noiseSS_53_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_53_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_53_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_53_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_53_re_address0() {
    noiseSS_53_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_53_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_53_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_53_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_54_im_address0() {
    noiseSS_54_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_54_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_54_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_54_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_54_re_address0() {
    noiseSS_54_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_54_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_54_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_54_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_55_im_address0() {
    noiseSS_55_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_55_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_55_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_55_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_55_re_address0() {
    noiseSS_55_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_55_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_55_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_55_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_56_im_address0() {
    noiseSS_56_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_56_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_56_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_56_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_56_re_address0() {
    noiseSS_56_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_56_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_56_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_56_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_57_im_address0() {
    noiseSS_57_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_57_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_57_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_57_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_57_re_address0() {
    noiseSS_57_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_57_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_57_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_57_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_58_im_address0() {
    noiseSS_58_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_58_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_58_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_58_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_58_re_address0() {
    noiseSS_58_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_58_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_58_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_58_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_59_im_address0() {
    noiseSS_59_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_59_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_59_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_59_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_59_re_address0() {
    noiseSS_59_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_59_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_59_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_59_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_5_im_address0() {
    noiseSS_5_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_5_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_5_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_5_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_5_re_address0() {
    noiseSS_5_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_5_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_5_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_5_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_60_im_address0() {
    noiseSS_60_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_60_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_60_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_60_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_60_re_address0() {
    noiseSS_60_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_60_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_60_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_60_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_61_im_address0() {
    noiseSS_61_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_61_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_61_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_61_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_61_re_address0() {
    noiseSS_61_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_61_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_61_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_61_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_62_im_address0() {
    noiseSS_62_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_62_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_62_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_62_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_62_re_address0() {
    noiseSS_62_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_62_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_62_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_62_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_63_im_address0() {
    noiseSS_63_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_63_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_63_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_63_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_63_re_address0() {
    noiseSS_63_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_63_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_63_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_63_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_64_im_address0() {
    noiseSS_64_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_64_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_64_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_64_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_64_re_address0() {
    noiseSS_64_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_64_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_64_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_64_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_65_im_address0() {
    noiseSS_65_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_65_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_65_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_65_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_65_re_address0() {
    noiseSS_65_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_65_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_65_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_65_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_66_im_address0() {
    noiseSS_66_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_66_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_66_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_66_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_66_re_address0() {
    noiseSS_66_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_66_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_66_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_66_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_67_im_address0() {
    noiseSS_67_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_67_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_67_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_67_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_67_re_address0() {
    noiseSS_67_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_67_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_67_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_67_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_68_im_address0() {
    noiseSS_68_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_68_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_68_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_68_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_68_re_address0() {
    noiseSS_68_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_68_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_68_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_68_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_69_im_address0() {
    noiseSS_69_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_69_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_69_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_69_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_69_re_address0() {
    noiseSS_69_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_69_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_69_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_69_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_6_im_address0() {
    noiseSS_6_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_6_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_6_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_6_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_6_re_address0() {
    noiseSS_6_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_6_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_6_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_6_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_70_im_address0() {
    noiseSS_70_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_70_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_70_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_70_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_70_re_address0() {
    noiseSS_70_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_70_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_70_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_70_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_71_im_address0() {
    noiseSS_71_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_71_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_71_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_71_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_71_re_address0() {
    noiseSS_71_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_71_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_71_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_71_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_72_im_address0() {
    noiseSS_72_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_72_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_72_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_72_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_72_re_address0() {
    noiseSS_72_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_72_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_72_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_72_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_73_im_address0() {
    noiseSS_73_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_73_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_73_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_73_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_73_re_address0() {
    noiseSS_73_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_73_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_73_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_73_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_74_im_address0() {
    noiseSS_74_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_74_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_74_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_74_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_74_re_address0() {
    noiseSS_74_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_74_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_74_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_74_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_75_im_address0() {
    noiseSS_75_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_75_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_75_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_75_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_75_re_address0() {
    noiseSS_75_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_75_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_75_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_75_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_76_im_address0() {
    noiseSS_76_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_76_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_76_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_76_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_76_re_address0() {
    noiseSS_76_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_76_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_76_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_76_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_77_im_address0() {
    noiseSS_77_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_77_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_77_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_77_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_77_re_address0() {
    noiseSS_77_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_77_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_77_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_77_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_78_im_address0() {
    noiseSS_78_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_78_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_78_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_78_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_78_re_address0() {
    noiseSS_78_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_78_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_78_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_78_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_79_im_address0() {
    noiseSS_79_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_79_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_79_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_79_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_79_re_address0() {
    noiseSS_79_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_79_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_79_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_79_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_7_im_address0() {
    noiseSS_7_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_7_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_7_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_7_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_7_re_address0() {
    noiseSS_7_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_7_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_7_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_7_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_80_im_address0() {
    noiseSS_80_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_80_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_80_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_80_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_80_re_address0() {
    noiseSS_80_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_80_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_80_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_80_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_81_im_address0() {
    noiseSS_81_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_81_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_81_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_81_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_81_re_address0() {
    noiseSS_81_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_81_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_81_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_81_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_82_im_address0() {
    noiseSS_82_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_82_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_82_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_82_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_82_re_address0() {
    noiseSS_82_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_82_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_82_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_82_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_83_im_address0() {
    noiseSS_83_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_83_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_83_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_83_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_83_re_address0() {
    noiseSS_83_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_83_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_83_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_83_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_84_im_address0() {
    noiseSS_84_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_84_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_84_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_84_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_84_re_address0() {
    noiseSS_84_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_84_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_84_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_84_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_85_im_address0() {
    noiseSS_85_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_85_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_85_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_85_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_85_re_address0() {
    noiseSS_85_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_85_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_85_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_85_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_86_im_address0() {
    noiseSS_86_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_86_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_86_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_86_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_86_re_address0() {
    noiseSS_86_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_86_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_86_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_86_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_87_im_address0() {
    noiseSS_87_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_87_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_87_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_87_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_87_re_address0() {
    noiseSS_87_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_87_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_87_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_87_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_88_im_address0() {
    noiseSS_88_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_88_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_88_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_88_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_88_re_address0() {
    noiseSS_88_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_88_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_88_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_88_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_89_im_address0() {
    noiseSS_89_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_89_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_89_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_89_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_89_re_address0() {
    noiseSS_89_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_89_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_89_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_89_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_8_im_address0() {
    noiseSS_8_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_8_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_8_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_8_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_8_re_address0() {
    noiseSS_8_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_8_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_8_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_8_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_90_im_address0() {
    noiseSS_90_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_90_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_90_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_90_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_90_re_address0() {
    noiseSS_90_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_90_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_90_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_90_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_91_im_address0() {
    noiseSS_91_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_91_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_91_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_91_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_91_re_address0() {
    noiseSS_91_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_91_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_91_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_91_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_92_im_address0() {
    noiseSS_92_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_92_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_92_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_92_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_92_re_address0() {
    noiseSS_92_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_92_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_92_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_92_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_93_im_address0() {
    noiseSS_93_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_93_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_93_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_93_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_93_re_address0() {
    noiseSS_93_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_93_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_93_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_93_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_94_im_address0() {
    noiseSS_94_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_94_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_94_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_94_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_94_re_address0() {
    noiseSS_94_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_94_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_94_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_94_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_95_im_address0() {
    noiseSS_95_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_95_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_95_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_95_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_95_re_address0() {
    noiseSS_95_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_95_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_95_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_95_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_96_im_address0() {
    noiseSS_96_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_96_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_96_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_96_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_96_re_address0() {
    noiseSS_96_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_96_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_96_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_96_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_97_im_address0() {
    noiseSS_97_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_97_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_97_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_97_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_97_re_address0() {
    noiseSS_97_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_97_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_97_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_97_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_98_im_address0() {
    noiseSS_98_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_98_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_98_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_98_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_98_re_address0() {
    noiseSS_98_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_98_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_98_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_98_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_99_im_address0() {
    noiseSS_99_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_99_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_99_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_99_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_99_re_address0() {
    noiseSS_99_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_99_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_99_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_99_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_9_im_address0() {
    noiseSS_9_im_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_9_im_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_9_im_ce0 = ap_const_logic_1;
    } else {
        noiseSS_9_im_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_noiseSS_9_re_address0() {
    noiseSS_9_re_address0 =  (sc_lv<7>) (zext_ln132_fu_5482_p1.read());
}

void matmul2::thread_noiseSS_9_re_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        noiseSS_9_re_ce0 = ap_const_logic_1;
    } else {
        noiseSS_9_re_ce0 = ap_const_logic_0;
    }
}

void matmul2::thread_zext_ln132_fu_5482_p1() {
    zext_ln132_fu_5482_p1 = esl_zext<64,7>(ap_phi_mux_i_0_phi_fu_4652_p4.read());
}

}

