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
    id 201 \
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
    id 202 \
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
    id 203 \
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
    id 204 \
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
    id 205 \
    name empty_214 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_214 \
    op interface \
    ports { empty_214_i { I 32 vector } empty_214_o { O 32 vector } empty_214_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 206 \
    name empty_215 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_215 \
    op interface \
    ports { empty_215 { O 4 vector } empty_215_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 207 \
    name empty_216 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_216 \
    op interface \
    ports { empty_216 { O 4 vector } empty_216_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 208 \
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
    id 209 \
    name input_A_356_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_356_out \
    op interface \
    ports { input_A_356_out { O 32 vector } input_A_356_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 210 \
    name input_A_355_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_355_out \
    op interface \
    ports { input_A_355_out { O 32 vector } input_A_355_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 211 \
    name input_A_354_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_354_out \
    op interface \
    ports { input_A_354_out { O 32 vector } input_A_354_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name input_A_353_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_353_out \
    op interface \
    ports { input_A_353_out { O 32 vector } input_A_353_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 213 \
    name input_A_352_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_352_out \
    op interface \
    ports { input_A_352_out { O 32 vector } input_A_352_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 214 \
    name input_A_351_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_351_out \
    op interface \
    ports { input_A_351_out { O 32 vector } input_A_351_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 215 \
    name input_A_350_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_350_out \
    op interface \
    ports { input_A_350_out { O 32 vector } input_A_350_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 216 \
    name input_A_349_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_349_out \
    op interface \
    ports { input_A_349_out { O 32 vector } input_A_349_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 217 \
    name input_A_348_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_348_out \
    op interface \
    ports { input_A_348_out { O 32 vector } input_A_348_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 218 \
    name input_A_347_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_347_out \
    op interface \
    ports { input_A_347_out { O 32 vector } input_A_347_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 219 \
    name input_A_346_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_346_out \
    op interface \
    ports { input_A_346_out { O 32 vector } input_A_346_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 220 \
    name input_A_345_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_345_out \
    op interface \
    ports { input_A_345_out { O 32 vector } input_A_345_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 221 \
    name input_A_344_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_344_out \
    op interface \
    ports { input_A_344_out { O 32 vector } input_A_344_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 222 \
    name input_A_343_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_343_out \
    op interface \
    ports { input_A_343_out { O 32 vector } input_A_343_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 223 \
    name input_A_342_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_342_out \
    op interface \
    ports { input_A_342_out { O 32 vector } input_A_342_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 224 \
    name input_A_341_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_341_out \
    op interface \
    ports { input_A_341_out { O 32 vector } input_A_341_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 225 \
    name input_A_340_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_340_out \
    op interface \
    ports { input_A_340_out { O 32 vector } input_A_340_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 226 \
    name input_A_339_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_339_out \
    op interface \
    ports { input_A_339_out { O 32 vector } input_A_339_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 227 \
    name input_A_338_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_338_out \
    op interface \
    ports { input_A_338_out { O 32 vector } input_A_338_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 228 \
    name input_A_337_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_337_out \
    op interface \
    ports { input_A_337_out { O 32 vector } input_A_337_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 229 \
    name input_A_336_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_336_out \
    op interface \
    ports { input_A_336_out { O 32 vector } input_A_336_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 230 \
    name input_A_335_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_335_out \
    op interface \
    ports { input_A_335_out { O 32 vector } input_A_335_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 231 \
    name input_A_334_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_334_out \
    op interface \
    ports { input_A_334_out { O 32 vector } input_A_334_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 232 \
    name input_A_333_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_333_out \
    op interface \
    ports { input_A_333_out { O 32 vector } input_A_333_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 233 \
    name input_A_332_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_332_out \
    op interface \
    ports { input_A_332_out { O 32 vector } input_A_332_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 234 \
    name input_A_331_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_331_out \
    op interface \
    ports { input_A_331_out { O 32 vector } input_A_331_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 235 \
    name input_A_330_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_330_out \
    op interface \
    ports { input_A_330_out { O 32 vector } input_A_330_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 236 \
    name input_A_329_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_329_out \
    op interface \
    ports { input_A_329_out { O 32 vector } input_A_329_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 237 \
    name input_A_328_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_328_out \
    op interface \
    ports { input_A_328_out { O 32 vector } input_A_328_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 238 \
    name input_A_327_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_327_out \
    op interface \
    ports { input_A_327_out { O 32 vector } input_A_327_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 239 \
    name input_A_326_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_326_out \
    op interface \
    ports { input_A_326_out { O 32 vector } input_A_326_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 240 \
    name input_A_325_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_325_out \
    op interface \
    ports { input_A_325_out { O 32 vector } input_A_325_out_ap_vld { O 1 bit } } \
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


