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
    id 1 \
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
    id 2 \
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
    id 3 \
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
    id 4 \
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
    id 5 \
    name empty_295 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_295 \
    op interface \
    ports { empty_295_i { I 32 vector } empty_295_o { O 32 vector } empty_295_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name empty_296 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_296 \
    op interface \
    ports { empty_296 { O 4 vector } empty_296_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name empty_297 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_297 \
    op interface \
    ports { empty_297 { O 4 vector } empty_297_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
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
    id 9 \
    name input_A_31_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_31_out \
    op interface \
    ports { input_A_31_out { O 32 vector } input_A_31_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name input_A_30_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_30_out \
    op interface \
    ports { input_A_30_out { O 32 vector } input_A_30_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name input_A_29_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_29_out \
    op interface \
    ports { input_A_29_out { O 32 vector } input_A_29_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name input_A_28_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_28_out \
    op interface \
    ports { input_A_28_out { O 32 vector } input_A_28_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name input_A_27_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_27_out \
    op interface \
    ports { input_A_27_out { O 32 vector } input_A_27_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name input_A_26_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_26_out \
    op interface \
    ports { input_A_26_out { O 32 vector } input_A_26_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name input_A_25_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_25_out \
    op interface \
    ports { input_A_25_out { O 32 vector } input_A_25_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name input_A_24_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_24_out \
    op interface \
    ports { input_A_24_out { O 32 vector } input_A_24_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name input_A_23_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_23_out \
    op interface \
    ports { input_A_23_out { O 32 vector } input_A_23_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name input_A_22_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_22_out \
    op interface \
    ports { input_A_22_out { O 32 vector } input_A_22_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name input_A_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_21_out \
    op interface \
    ports { input_A_21_out { O 32 vector } input_A_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name input_A_20_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_20_out \
    op interface \
    ports { input_A_20_out { O 32 vector } input_A_20_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name input_A_19_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_19_out \
    op interface \
    ports { input_A_19_out { O 32 vector } input_A_19_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name input_A_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_18_out \
    op interface \
    ports { input_A_18_out { O 32 vector } input_A_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name input_A_17_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_17_out \
    op interface \
    ports { input_A_17_out { O 32 vector } input_A_17_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name input_A_16_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_16_out \
    op interface \
    ports { input_A_16_out { O 32 vector } input_A_16_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name input_A_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_15_out \
    op interface \
    ports { input_A_15_out { O 32 vector } input_A_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name input_A_14_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_14_out \
    op interface \
    ports { input_A_14_out { O 32 vector } input_A_14_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name input_A_13_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_13_out \
    op interface \
    ports { input_A_13_out { O 32 vector } input_A_13_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name input_A_12_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_12_out \
    op interface \
    ports { input_A_12_out { O 32 vector } input_A_12_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name input_A_11_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_11_out \
    op interface \
    ports { input_A_11_out { O 32 vector } input_A_11_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name input_A_10_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_10_out \
    op interface \
    ports { input_A_10_out { O 32 vector } input_A_10_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name input_A_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_9_out \
    op interface \
    ports { input_A_9_out { O 32 vector } input_A_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name input_A_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_8_out \
    op interface \
    ports { input_A_8_out { O 32 vector } input_A_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name input_A_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_7_out \
    op interface \
    ports { input_A_7_out { O 32 vector } input_A_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name input_A_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_6_out \
    op interface \
    ports { input_A_6_out { O 32 vector } input_A_6_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name input_A_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_5_out \
    op interface \
    ports { input_A_5_out { O 32 vector } input_A_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name input_A_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_4_out \
    op interface \
    ports { input_A_4_out { O 32 vector } input_A_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name input_A_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_3_out \
    op interface \
    ports { input_A_3_out { O 32 vector } input_A_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name input_A_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_2_out \
    op interface \
    ports { input_A_2_out { O 32 vector } input_A_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name input_A_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_1_out \
    op interface \
    ports { input_A_1_out { O 32 vector } input_A_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name input_A_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_out \
    op interface \
    ports { input_A_out { O 32 vector } input_A_out_ap_vld { O 1 bit } } \
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


