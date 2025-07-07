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
    id 1241 \
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
    id 1242 \
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
    id 1243 \
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
    id 1244 \
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
    id 1245 \
    name empty_220 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_220 \
    op interface \
    ports { empty_220_i { I 32 vector } empty_220_o { O 32 vector } empty_220_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1246 \
    name empty_221 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_221 \
    op interface \
    ports { empty_221 { O 4 vector } empty_221_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1247 \
    name empty_222 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_222 \
    op interface \
    ports { empty_222 { O 4 vector } empty_222_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1248 \
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
    id 1249 \
    name input_A_574_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_574_out \
    op interface \
    ports { input_A_574_out { O 32 vector } input_A_574_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1250 \
    name input_A_573_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_573_out \
    op interface \
    ports { input_A_573_out { O 32 vector } input_A_573_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1251 \
    name input_A_572_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_572_out \
    op interface \
    ports { input_A_572_out { O 32 vector } input_A_572_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1252 \
    name input_A_571_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_571_out \
    op interface \
    ports { input_A_571_out { O 32 vector } input_A_571_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1253 \
    name input_A_570_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_570_out \
    op interface \
    ports { input_A_570_out { O 32 vector } input_A_570_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1254 \
    name input_A_569_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_569_out \
    op interface \
    ports { input_A_569_out { O 32 vector } input_A_569_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1255 \
    name input_A_568_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_568_out \
    op interface \
    ports { input_A_568_out { O 32 vector } input_A_568_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1256 \
    name input_A_567_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_567_out \
    op interface \
    ports { input_A_567_out { O 32 vector } input_A_567_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1257 \
    name input_A_566_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_566_out \
    op interface \
    ports { input_A_566_out { O 32 vector } input_A_566_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1258 \
    name input_A_565_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_565_out \
    op interface \
    ports { input_A_565_out { O 32 vector } input_A_565_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1259 \
    name input_A_564_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_564_out \
    op interface \
    ports { input_A_564_out { O 32 vector } input_A_564_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1260 \
    name input_A_563_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_563_out \
    op interface \
    ports { input_A_563_out { O 32 vector } input_A_563_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1261 \
    name input_A_562_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_562_out \
    op interface \
    ports { input_A_562_out { O 32 vector } input_A_562_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1262 \
    name input_A_561_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_561_out \
    op interface \
    ports { input_A_561_out { O 32 vector } input_A_561_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1263 \
    name input_A_560_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_560_out \
    op interface \
    ports { input_A_560_out { O 32 vector } input_A_560_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1264 \
    name input_A_559_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_559_out \
    op interface \
    ports { input_A_559_out { O 32 vector } input_A_559_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1265 \
    name input_A_558_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_558_out \
    op interface \
    ports { input_A_558_out { O 32 vector } input_A_558_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1266 \
    name input_A_557_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_557_out \
    op interface \
    ports { input_A_557_out { O 32 vector } input_A_557_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1267 \
    name input_A_556_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_556_out \
    op interface \
    ports { input_A_556_out { O 32 vector } input_A_556_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1268 \
    name input_A_555_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_555_out \
    op interface \
    ports { input_A_555_out { O 32 vector } input_A_555_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1269 \
    name input_A_554_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_554_out \
    op interface \
    ports { input_A_554_out { O 32 vector } input_A_554_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1270 \
    name input_A_553_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_553_out \
    op interface \
    ports { input_A_553_out { O 32 vector } input_A_553_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1271 \
    name input_A_552_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_552_out \
    op interface \
    ports { input_A_552_out { O 32 vector } input_A_552_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1272 \
    name input_A_551_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_551_out \
    op interface \
    ports { input_A_551_out { O 32 vector } input_A_551_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1273 \
    name input_A_550_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_550_out \
    op interface \
    ports { input_A_550_out { O 32 vector } input_A_550_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1274 \
    name input_A_549_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_549_out \
    op interface \
    ports { input_A_549_out { O 32 vector } input_A_549_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1275 \
    name input_A_548_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_548_out \
    op interface \
    ports { input_A_548_out { O 32 vector } input_A_548_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1276 \
    name input_A_547_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_547_out \
    op interface \
    ports { input_A_547_out { O 32 vector } input_A_547_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1277 \
    name input_A_546_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_546_out \
    op interface \
    ports { input_A_546_out { O 32 vector } input_A_546_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1278 \
    name input_A_545_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_545_out \
    op interface \
    ports { input_A_545_out { O 32 vector } input_A_545_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1279 \
    name input_A_544_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_544_out \
    op interface \
    ports { input_A_544_out { O 32 vector } input_A_544_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1280 \
    name input_A_543_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_543_out \
    op interface \
    ports { input_A_543_out { O 32 vector } input_A_543_out_ap_vld { O 1 bit } } \
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


