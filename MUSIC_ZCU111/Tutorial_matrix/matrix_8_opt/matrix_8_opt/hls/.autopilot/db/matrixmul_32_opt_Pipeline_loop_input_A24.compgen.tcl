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
    id 161 \
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
    id 162 \
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
    id 163 \
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
    id 164 \
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
    id 165 \
    name empty_217 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_217 \
    op interface \
    ports { empty_217_i { I 32 vector } empty_217_o { O 32 vector } empty_217_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name empty_218 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_218 \
    op interface \
    ports { empty_218 { O 4 vector } empty_218_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name empty_219 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_219 \
    op interface \
    ports { empty_219 { O 4 vector } empty_219_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
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
    id 169 \
    name input_A_291_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_291_out \
    op interface \
    ports { input_A_291_out { O 32 vector } input_A_291_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name input_A_290_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_290_out \
    op interface \
    ports { input_A_290_out { O 32 vector } input_A_290_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name input_A_289_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_289_out \
    op interface \
    ports { input_A_289_out { O 32 vector } input_A_289_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name input_A_288_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_288_out \
    op interface \
    ports { input_A_288_out { O 32 vector } input_A_288_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
    name input_A_287_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_287_out \
    op interface \
    ports { input_A_287_out { O 32 vector } input_A_287_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name input_A_286_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_286_out \
    op interface \
    ports { input_A_286_out { O 32 vector } input_A_286_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name input_A_285_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_285_out \
    op interface \
    ports { input_A_285_out { O 32 vector } input_A_285_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 176 \
    name input_A_284_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_284_out \
    op interface \
    ports { input_A_284_out { O 32 vector } input_A_284_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name input_A_283_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_283_out \
    op interface \
    ports { input_A_283_out { O 32 vector } input_A_283_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name input_A_282_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_282_out \
    op interface \
    ports { input_A_282_out { O 32 vector } input_A_282_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name input_A_281_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_281_out \
    op interface \
    ports { input_A_281_out { O 32 vector } input_A_281_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name input_A_280_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_280_out \
    op interface \
    ports { input_A_280_out { O 32 vector } input_A_280_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name input_A_279_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_279_out \
    op interface \
    ports { input_A_279_out { O 32 vector } input_A_279_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name input_A_278_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_278_out \
    op interface \
    ports { input_A_278_out { O 32 vector } input_A_278_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name input_A_277_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_277_out \
    op interface \
    ports { input_A_277_out { O 32 vector } input_A_277_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name input_A_276_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_276_out \
    op interface \
    ports { input_A_276_out { O 32 vector } input_A_276_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name input_A_275_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_275_out \
    op interface \
    ports { input_A_275_out { O 32 vector } input_A_275_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name input_A_274_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_274_out \
    op interface \
    ports { input_A_274_out { O 32 vector } input_A_274_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name input_A_273_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_273_out \
    op interface \
    ports { input_A_273_out { O 32 vector } input_A_273_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name input_A_272_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_272_out \
    op interface \
    ports { input_A_272_out { O 32 vector } input_A_272_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name input_A_271_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_271_out \
    op interface \
    ports { input_A_271_out { O 32 vector } input_A_271_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 190 \
    name input_A_270_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_270_out \
    op interface \
    ports { input_A_270_out { O 32 vector } input_A_270_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 191 \
    name input_A_269_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_269_out \
    op interface \
    ports { input_A_269_out { O 32 vector } input_A_269_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 192 \
    name input_A_268_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_268_out \
    op interface \
    ports { input_A_268_out { O 32 vector } input_A_268_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name input_A_267_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_267_out \
    op interface \
    ports { input_A_267_out { O 32 vector } input_A_267_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name input_A_266_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_266_out \
    op interface \
    ports { input_A_266_out { O 32 vector } input_A_266_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 195 \
    name input_A_265_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_265_out \
    op interface \
    ports { input_A_265_out { O 32 vector } input_A_265_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 196 \
    name input_A_264_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_264_out \
    op interface \
    ports { input_A_264_out { O 32 vector } input_A_264_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 197 \
    name input_A_263_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_263_out \
    op interface \
    ports { input_A_263_out { O 32 vector } input_A_263_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 198 \
    name input_A_262_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_262_out \
    op interface \
    ports { input_A_262_out { O 32 vector } input_A_262_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 199 \
    name input_A_261_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_261_out \
    op interface \
    ports { input_A_261_out { O 32 vector } input_A_261_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
    name input_A_260_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_260_out \
    op interface \
    ports { input_A_260_out { O 32 vector } input_A_260_out_ap_vld { O 1 bit } } \
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


