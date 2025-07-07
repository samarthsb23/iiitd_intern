set SynModuleInfo {
  {SRCNAME matrixmul_100_unopt MODELNAME matrixmul_100_unopt RTLNAME matrixmul_100_unopt IS_TOP 1
    SUBMODULES {
      {MODELNAME matrixmul_100_unopt_fadd_32ns_32ns_32_4_full_dsp_1 RTLNAME matrixmul_100_unopt_fadd_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME matrixmul_100_unopt_fmul_32ns_32ns_32_3_max_dsp_1 RTLNAME matrixmul_100_unopt_fmul_32ns_32ns_32_3_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME matrixmul_100_unopt_input_A_RAM_AUTO_1R1W RTLNAME matrixmul_100_unopt_input_A_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME matrixmul_100_unopt_regslice_both RTLNAME matrixmul_100_unopt_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
