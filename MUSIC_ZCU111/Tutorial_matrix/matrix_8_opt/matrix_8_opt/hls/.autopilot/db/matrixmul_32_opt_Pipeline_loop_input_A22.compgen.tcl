# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 81 \
    name in_A_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {in_A} \
    metadata {  } \
    op interface \
    ports { in_A_TVALID { I 1 bit } in_A_TDATA { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'in_A_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 82 \
    name in_A_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {in_A} \
    metadata {  } \
    op interface \
    ports { in_A_TKEEP { I 4 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'in_A_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 83 \
    name in_A_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {in_A} \
    metadata {  } \
    op interface \
    ports { in_A_TSTRB { I 4 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'in_A_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 84 \
    name in_A_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {in_A} \
    metadata {  } \
    op interface \
    ports { in_A_TREADY { O 1 bit } in_A_TLAST { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'in_A_V_last_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name empty_259 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_259 \
    op interface \
    ports { empty_259_i { I 32 vector } empty_259_o { O 32 vector } empty_259_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name empty_260 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_260 \
    op interface \
    ports { empty_260 { O 4 vector } empty_260_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name empty_261 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_261 \
    op interface \
    ports { empty_261 { O 4 vector } empty_261_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name empty \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { O 1 vector } empty_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name input_A_161_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_161_out \
    op interface \
    ports { input_A_161_out { O 32 vector } input_A_161_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name input_A_160_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_160_out \
    op interface \
    ports { input_A_160_out { O 32 vector } input_A_160_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name input_A_159_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_159_out \
    op interface \
    ports { input_A_159_out { O 32 vector } input_A_159_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name input_A_158_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_158_out \
    op interface \
    ports { input_A_158_out { O 32 vector } input_A_158_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name input_A_157_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_157_out \
    op interface \
    ports { input_A_157_out { O 32 vector } input_A_157_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name input_A_156_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_156_out \
    op interface \
    ports { input_A_156_out { O 32 vector } input_A_156_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name input_A_155_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_155_out \
    op interface \
    ports { input_A_155_out { O 32 vector } input_A_155_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name input_A_154_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_154_out \
    op interface \
    ports { input_A_154_out { O 32 vector } input_A_154_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name input_A_153_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_153_out \
    op interface \
    ports { input_A_153_out { O 32 vector } input_A_153_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name input_A_152_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_152_out \
    op interface \
    ports { input_A_152_out { O 32 vector } input_A_152_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name input_A_151_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_151_out \
    op interface \
    ports { input_A_151_out { O 32 vector } input_A_151_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name input_A_150_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_150_out \
    op interface \
    ports { input_A_150_out { O 32 vector } input_A_150_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name input_A_149_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_149_out \
    op interface \
    ports { input_A_149_out { O 32 vector } input_A_149_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name input_A_148_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_148_out \
    op interface \
    ports { input_A_148_out { O 32 vector } input_A_148_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name input_A_147_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_147_out \
    op interface \
    ports { input_A_147_out { O 32 vector } input_A_147_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name input_A_146_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_146_out \
    op interface \
    ports { input_A_146_out { O 32 vector } input_A_146_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name input_A_145_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_145_out \
    op interface \
    ports { input_A_145_out { O 32 vector } input_A_145_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name input_A_144_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_144_out \
    op interface \
    ports { input_A_144_out { O 32 vector } input_A_144_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name input_A_143_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_143_out \
    op interface \
    ports { input_A_143_out { O 32 vector } input_A_143_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name input_A_142_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_142_out \
    op interface \
    ports { input_A_142_out { O 32 vector } input_A_142_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name input_A_141_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_141_out \
    op interface \
    ports { input_A_141_out { O 32 vector } input_A_141_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name input_A_140_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_140_out \
    op interface \
    ports { input_A_140_out { O 32 vector } input_A_140_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name input_A_139_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_139_out \
    op interface \
    ports { input_A_139_out { O 32 vector } input_A_139_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name input_A_138_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_138_out \
    op interface \
    ports { input_A_138_out { O 32 vector } input_A_138_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name input_A_137_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_137_out \
    op interface \
    ports { input_A_137_out { O 32 vector } input_A_137_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name input_A_136_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_136_out \
    op interface \
    ports { input_A_136_out { O 32 vector } input_A_136_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name input_A_135_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_135_out \
    op interface \
    ports { input_A_135_out { O 32 vector } input_A_135_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name input_A_134_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_134_out \
    op interface \
    ports { input_A_134_out { O 32 vector } input_A_134_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name input_A_133_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_133_out \
    op interface \
    ports { input_A_133_out { O 32 vector } input_A_133_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name input_A_132_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_132_out \
    op interface \
    ports { input_A_132_out { O 32 vector } input_A_132_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name input_A_131_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_131_out \
    op interface \
    ports { input_A_131_out { O 32 vector } input_A_131_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name input_A_130_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_130_out \
    op interface \
    ports { input_A_130_out { O 32 vector } input_A_130_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName matrixmul_32_opt_flow_control_loop_pipe_sequential_init_U
set CompName matrixmul_32_opt_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix matrixmul_32_opt_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


