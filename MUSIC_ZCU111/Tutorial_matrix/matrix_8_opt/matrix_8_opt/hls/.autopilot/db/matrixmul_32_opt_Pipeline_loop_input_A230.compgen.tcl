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
    id 1201 \
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
    id 1202 \
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
    id 1203 \
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
    id 1204 \
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
    id 1205 \
    name empty_223 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_223 \
    op interface \
    ports { empty_223_i { I 32 vector } empty_223_o { O 32 vector } empty_223_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1206 \
    name empty_224 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_224 \
    op interface \
    ports { empty_224 { O 4 vector } empty_224_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1207 \
    name empty_225 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_225 \
    op interface \
    ports { empty_225 { O 4 vector } empty_225_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1208 \
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
    id 1209 \
    name input_A_509_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_509_out \
    op interface \
    ports { input_A_509_out { O 32 vector } input_A_509_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1210 \
    name input_A_508_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_508_out \
    op interface \
    ports { input_A_508_out { O 32 vector } input_A_508_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1211 \
    name input_A_507_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_507_out \
    op interface \
    ports { input_A_507_out { O 32 vector } input_A_507_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1212 \
    name input_A_506_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_506_out \
    op interface \
    ports { input_A_506_out { O 32 vector } input_A_506_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1213 \
    name input_A_505_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_505_out \
    op interface \
    ports { input_A_505_out { O 32 vector } input_A_505_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1214 \
    name input_A_504_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_504_out \
    op interface \
    ports { input_A_504_out { O 32 vector } input_A_504_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1215 \
    name input_A_503_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_503_out \
    op interface \
    ports { input_A_503_out { O 32 vector } input_A_503_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1216 \
    name input_A_502_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_502_out \
    op interface \
    ports { input_A_502_out { O 32 vector } input_A_502_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1217 \
    name input_A_501_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_501_out \
    op interface \
    ports { input_A_501_out { O 32 vector } input_A_501_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1218 \
    name input_A_500_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_500_out \
    op interface \
    ports { input_A_500_out { O 32 vector } input_A_500_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1219 \
    name input_A_499_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_499_out \
    op interface \
    ports { input_A_499_out { O 32 vector } input_A_499_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1220 \
    name input_A_498_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_498_out \
    op interface \
    ports { input_A_498_out { O 32 vector } input_A_498_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1221 \
    name input_A_497_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_497_out \
    op interface \
    ports { input_A_497_out { O 32 vector } input_A_497_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1222 \
    name input_A_496_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_496_out \
    op interface \
    ports { input_A_496_out { O 32 vector } input_A_496_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1223 \
    name input_A_495_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_495_out \
    op interface \
    ports { input_A_495_out { O 32 vector } input_A_495_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1224 \
    name input_A_494_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_494_out \
    op interface \
    ports { input_A_494_out { O 32 vector } input_A_494_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1225 \
    name input_A_493_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_493_out \
    op interface \
    ports { input_A_493_out { O 32 vector } input_A_493_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1226 \
    name input_A_492_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_492_out \
    op interface \
    ports { input_A_492_out { O 32 vector } input_A_492_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1227 \
    name input_A_491_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_491_out \
    op interface \
    ports { input_A_491_out { O 32 vector } input_A_491_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1228 \
    name input_A_490_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_490_out \
    op interface \
    ports { input_A_490_out { O 32 vector } input_A_490_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1229 \
    name input_A_489_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_489_out \
    op interface \
    ports { input_A_489_out { O 32 vector } input_A_489_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1230 \
    name input_A_488_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_488_out \
    op interface \
    ports { input_A_488_out { O 32 vector } input_A_488_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1231 \
    name input_A_487_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_487_out \
    op interface \
    ports { input_A_487_out { O 32 vector } input_A_487_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1232 \
    name input_A_486_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_486_out \
    op interface \
    ports { input_A_486_out { O 32 vector } input_A_486_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1233 \
    name input_A_485_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_485_out \
    op interface \
    ports { input_A_485_out { O 32 vector } input_A_485_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1234 \
    name input_A_484_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_484_out \
    op interface \
    ports { input_A_484_out { O 32 vector } input_A_484_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1235 \
    name input_A_483_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_483_out \
    op interface \
    ports { input_A_483_out { O 32 vector } input_A_483_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1236 \
    name input_A_482_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_482_out \
    op interface \
    ports { input_A_482_out { O 32 vector } input_A_482_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1237 \
    name input_A_481_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_481_out \
    op interface \
    ports { input_A_481_out { O 32 vector } input_A_481_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1238 \
    name input_A_480_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_480_out \
    op interface \
    ports { input_A_480_out { O 32 vector } input_A_480_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1239 \
    name input_A_479_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_479_out \
    op interface \
    ports { input_A_479_out { O 32 vector } input_A_479_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1240 \
    name input_A_478_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_478_out \
    op interface \
    ports { input_A_478_out { O 32 vector } input_A_478_out_ap_vld { O 1 bit } } \
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


