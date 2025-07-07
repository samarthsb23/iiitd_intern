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
    id 121 \
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
    id 122 \
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
    id 123 \
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
    id 124 \
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
    id 125 \
    name empty_226 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_226 \
    op interface \
    ports { empty_226_i { I 32 vector } empty_226_o { O 32 vector } empty_226_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name empty_227 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_227 \
    op interface \
    ports { empty_227 { O 4 vector } empty_227_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name empty_228 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_228 \
    op interface \
    ports { empty_228 { O 4 vector } empty_228_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
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
    id 129 \
    name input_A_226_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_226_out \
    op interface \
    ports { input_A_226_out { O 32 vector } input_A_226_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name input_A_225_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_225_out \
    op interface \
    ports { input_A_225_out { O 32 vector } input_A_225_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name input_A_224_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_224_out \
    op interface \
    ports { input_A_224_out { O 32 vector } input_A_224_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name input_A_223_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_223_out \
    op interface \
    ports { input_A_223_out { O 32 vector } input_A_223_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name input_A_222_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_222_out \
    op interface \
    ports { input_A_222_out { O 32 vector } input_A_222_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name input_A_221_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_221_out \
    op interface \
    ports { input_A_221_out { O 32 vector } input_A_221_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name input_A_220_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_220_out \
    op interface \
    ports { input_A_220_out { O 32 vector } input_A_220_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name input_A_219_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_219_out \
    op interface \
    ports { input_A_219_out { O 32 vector } input_A_219_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name input_A_218_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_218_out \
    op interface \
    ports { input_A_218_out { O 32 vector } input_A_218_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name input_A_217_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_217_out \
    op interface \
    ports { input_A_217_out { O 32 vector } input_A_217_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name input_A_216_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_216_out \
    op interface \
    ports { input_A_216_out { O 32 vector } input_A_216_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name input_A_215_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_215_out \
    op interface \
    ports { input_A_215_out { O 32 vector } input_A_215_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name input_A_214_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_214_out \
    op interface \
    ports { input_A_214_out { O 32 vector } input_A_214_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name input_A_213_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_213_out \
    op interface \
    ports { input_A_213_out { O 32 vector } input_A_213_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name input_A_212_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_212_out \
    op interface \
    ports { input_A_212_out { O 32 vector } input_A_212_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name input_A_211_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_211_out \
    op interface \
    ports { input_A_211_out { O 32 vector } input_A_211_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name input_A_210_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_210_out \
    op interface \
    ports { input_A_210_out { O 32 vector } input_A_210_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name input_A_209_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_209_out \
    op interface \
    ports { input_A_209_out { O 32 vector } input_A_209_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 147 \
    name input_A_208_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_208_out \
    op interface \
    ports { input_A_208_out { O 32 vector } input_A_208_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name input_A_207_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_207_out \
    op interface \
    ports { input_A_207_out { O 32 vector } input_A_207_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name input_A_206_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_206_out \
    op interface \
    ports { input_A_206_out { O 32 vector } input_A_206_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name input_A_205_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_205_out \
    op interface \
    ports { input_A_205_out { O 32 vector } input_A_205_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name input_A_204_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_204_out \
    op interface \
    ports { input_A_204_out { O 32 vector } input_A_204_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name input_A_203_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_203_out \
    op interface \
    ports { input_A_203_out { O 32 vector } input_A_203_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name input_A_202_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_202_out \
    op interface \
    ports { input_A_202_out { O 32 vector } input_A_202_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name input_A_201_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_201_out \
    op interface \
    ports { input_A_201_out { O 32 vector } input_A_201_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name input_A_200_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_200_out \
    op interface \
    ports { input_A_200_out { O 32 vector } input_A_200_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name input_A_199_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_199_out \
    op interface \
    ports { input_A_199_out { O 32 vector } input_A_199_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name input_A_198_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_198_out \
    op interface \
    ports { input_A_198_out { O 32 vector } input_A_198_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name input_A_197_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_197_out \
    op interface \
    ports { input_A_197_out { O 32 vector } input_A_197_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name input_A_196_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_196_out \
    op interface \
    ports { input_A_196_out { O 32 vector } input_A_196_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name input_A_195_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_195_out \
    op interface \
    ports { input_A_195_out { O 32 vector } input_A_195_out_ap_vld { O 1 bit } } \
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


