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
    id 1161 \
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
    id 1162 \
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
    id 1163 \
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
    id 1164 \
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
    id 1165 \
    name empty_229 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_229 \
    op interface \
    ports { empty_229_i { I 32 vector } empty_229_o { O 32 vector } empty_229_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1166 \
    name empty_230 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_230 \
    op interface \
    ports { empty_230 { O 4 vector } empty_230_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1167 \
    name empty_231 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_231 \
    op interface \
    ports { empty_231 { O 4 vector } empty_231_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1168 \
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
    id 1169 \
    name input_A_444_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_444_out \
    op interface \
    ports { input_A_444_out { O 32 vector } input_A_444_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1170 \
    name input_A_443_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_443_out \
    op interface \
    ports { input_A_443_out { O 32 vector } input_A_443_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1171 \
    name input_A_442_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_442_out \
    op interface \
    ports { input_A_442_out { O 32 vector } input_A_442_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1172 \
    name input_A_441_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_441_out \
    op interface \
    ports { input_A_441_out { O 32 vector } input_A_441_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1173 \
    name input_A_440_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_440_out \
    op interface \
    ports { input_A_440_out { O 32 vector } input_A_440_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1174 \
    name input_A_439_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_439_out \
    op interface \
    ports { input_A_439_out { O 32 vector } input_A_439_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1175 \
    name input_A_438_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_438_out \
    op interface \
    ports { input_A_438_out { O 32 vector } input_A_438_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1176 \
    name input_A_437_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_437_out \
    op interface \
    ports { input_A_437_out { O 32 vector } input_A_437_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1177 \
    name input_A_436_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_436_out \
    op interface \
    ports { input_A_436_out { O 32 vector } input_A_436_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1178 \
    name input_A_435_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_435_out \
    op interface \
    ports { input_A_435_out { O 32 vector } input_A_435_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1179 \
    name input_A_434_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_434_out \
    op interface \
    ports { input_A_434_out { O 32 vector } input_A_434_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1180 \
    name input_A_433_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_433_out \
    op interface \
    ports { input_A_433_out { O 32 vector } input_A_433_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1181 \
    name input_A_432_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_432_out \
    op interface \
    ports { input_A_432_out { O 32 vector } input_A_432_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1182 \
    name input_A_431_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_431_out \
    op interface \
    ports { input_A_431_out { O 32 vector } input_A_431_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1183 \
    name input_A_430_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_430_out \
    op interface \
    ports { input_A_430_out { O 32 vector } input_A_430_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1184 \
    name input_A_429_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_429_out \
    op interface \
    ports { input_A_429_out { O 32 vector } input_A_429_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1185 \
    name input_A_428_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_428_out \
    op interface \
    ports { input_A_428_out { O 32 vector } input_A_428_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1186 \
    name input_A_427_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_427_out \
    op interface \
    ports { input_A_427_out { O 32 vector } input_A_427_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1187 \
    name input_A_426_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_426_out \
    op interface \
    ports { input_A_426_out { O 32 vector } input_A_426_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1188 \
    name input_A_425_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_425_out \
    op interface \
    ports { input_A_425_out { O 32 vector } input_A_425_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1189 \
    name input_A_424_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_424_out \
    op interface \
    ports { input_A_424_out { O 32 vector } input_A_424_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1190 \
    name input_A_423_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_423_out \
    op interface \
    ports { input_A_423_out { O 32 vector } input_A_423_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1191 \
    name input_A_422_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_422_out \
    op interface \
    ports { input_A_422_out { O 32 vector } input_A_422_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1192 \
    name input_A_421_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_421_out \
    op interface \
    ports { input_A_421_out { O 32 vector } input_A_421_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1193 \
    name input_A_420_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_420_out \
    op interface \
    ports { input_A_420_out { O 32 vector } input_A_420_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1194 \
    name input_A_419_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_419_out \
    op interface \
    ports { input_A_419_out { O 32 vector } input_A_419_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1195 \
    name input_A_418_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_418_out \
    op interface \
    ports { input_A_418_out { O 32 vector } input_A_418_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1196 \
    name input_A_417_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_417_out \
    op interface \
    ports { input_A_417_out { O 32 vector } input_A_417_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1197 \
    name input_A_416_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_416_out \
    op interface \
    ports { input_A_416_out { O 32 vector } input_A_416_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1198 \
    name input_A_415_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_415_out \
    op interface \
    ports { input_A_415_out { O 32 vector } input_A_415_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1199 \
    name input_A_414_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_414_out \
    op interface \
    ports { input_A_414_out { O 32 vector } input_A_414_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1200 \
    name input_A_413_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_413_out \
    op interface \
    ports { input_A_413_out { O 32 vector } input_A_413_out_ap_vld { O 1 bit } } \
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


