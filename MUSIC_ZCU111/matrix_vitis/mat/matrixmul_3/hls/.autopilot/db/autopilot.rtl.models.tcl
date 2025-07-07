set SynModuleInfo {
  {SRCNAME matrixmul_3_Pipeline_loop_input_A1_loop_input_A2 MODELNAME matrixmul_3_Pipeline_loop_input_A1_loop_input_A2 RTLNAME matrixmul_3_matrixmul_3_Pipeline_loop_input_A1_loop_input_A2
    SUBMODULES {
      {MODELNAME matrixmul_3_flow_control_loop_pipe_sequential_init RTLNAME matrixmul_3_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME matrixmul_3_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME matrixmul_3_Pipeline_loop_input_B1_loop_input_B2 MODELNAME matrixmul_3_Pipeline_loop_input_B1_loop_input_B2 RTLNAME matrixmul_3_matrixmul_3_Pipeline_loop_input_B1_loop_input_B2}
  {SRCNAME matrixmul_3_Pipeline_loop1_loop2 MODELNAME matrixmul_3_Pipeline_loop1_loop2 RTLNAME matrixmul_3_matrixmul_3_Pipeline_loop1_loop2
    SUBMODULES {
      {MODELNAME matrixmul_3_mul_32s_32s_32_2_1 RTLNAME matrixmul_3_mul_32s_32s_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME matrixmul_3_Pipeline_loop_output_C1_loop_output_C2 MODELNAME matrixmul_3_Pipeline_loop_output_C1_loop_output_C2 RTLNAME matrixmul_3_matrixmul_3_Pipeline_loop_output_C1_loop_output_C2}
  {SRCNAME matrixmul_3 MODELNAME matrixmul_3 RTLNAME matrixmul_3 IS_TOP 1
    SUBMODULES {
      {MODELNAME matrixmul_3_input_A_RAM_AUTO_1R1W RTLNAME matrixmul_3_input_A_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME matrixmul_3_output_C_RAM_AUTO_1R1W RTLNAME matrixmul_3_output_C_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME matrixmul_3_regslice_both RTLNAME matrixmul_3_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
