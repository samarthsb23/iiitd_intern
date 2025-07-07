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
    id 41 \
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
    id 42 \
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
    id 43 \
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
    id 44 \
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
    id 45 \
    name empty_292 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_292 \
    op interface \
    ports { empty_292_i { I 32 vector } empty_292_o { O 32 vector } empty_292_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name empty_293 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_293 \
    op interface \
    ports { empty_293 { O 4 vector } empty_293_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name empty_294 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_294 \
    op interface \
    ports { empty_294 { O 4 vector } empty_294_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
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
    id 49 \
    name input_A_96_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_96_out \
    op interface \
    ports { input_A_96_out { O 32 vector } input_A_96_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name input_A_95_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_95_out \
    op interface \
    ports { input_A_95_out { O 32 vector } input_A_95_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name input_A_94_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_94_out \
    op interface \
    ports { input_A_94_out { O 32 vector } input_A_94_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name input_A_93_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_93_out \
    op interface \
    ports { input_A_93_out { O 32 vector } input_A_93_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name input_A_92_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_92_out \
    op interface \
    ports { input_A_92_out { O 32 vector } input_A_92_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name input_A_91_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_91_out \
    op interface \
    ports { input_A_91_out { O 32 vector } input_A_91_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name input_A_90_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_90_out \
    op interface \
    ports { input_A_90_out { O 32 vector } input_A_90_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name input_A_89_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_89_out \
    op interface \
    ports { input_A_89_out { O 32 vector } input_A_89_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name input_A_88_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_88_out \
    op interface \
    ports { input_A_88_out { O 32 vector } input_A_88_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name input_A_87_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_87_out \
    op interface \
    ports { input_A_87_out { O 32 vector } input_A_87_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name input_A_86_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_86_out \
    op interface \
    ports { input_A_86_out { O 32 vector } input_A_86_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name input_A_85_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_85_out \
    op interface \
    ports { input_A_85_out { O 32 vector } input_A_85_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name input_A_84_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_84_out \
    op interface \
    ports { input_A_84_out { O 32 vector } input_A_84_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name input_A_83_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_83_out \
    op interface \
    ports { input_A_83_out { O 32 vector } input_A_83_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name input_A_82_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_82_out \
    op interface \
    ports { input_A_82_out { O 32 vector } input_A_82_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name input_A_81_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_81_out \
    op interface \
    ports { input_A_81_out { O 32 vector } input_A_81_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name input_A_80_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_80_out \
    op interface \
    ports { input_A_80_out { O 32 vector } input_A_80_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name input_A_79_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_79_out \
    op interface \
    ports { input_A_79_out { O 32 vector } input_A_79_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name input_A_78_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_78_out \
    op interface \
    ports { input_A_78_out { O 32 vector } input_A_78_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name input_A_77_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_77_out \
    op interface \
    ports { input_A_77_out { O 32 vector } input_A_77_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name input_A_76_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_76_out \
    op interface \
    ports { input_A_76_out { O 32 vector } input_A_76_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name input_A_75_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_75_out \
    op interface \
    ports { input_A_75_out { O 32 vector } input_A_75_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name input_A_74_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_74_out \
    op interface \
    ports { input_A_74_out { O 32 vector } input_A_74_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name input_A_73_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_73_out \
    op interface \
    ports { input_A_73_out { O 32 vector } input_A_73_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name input_A_72_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_72_out \
    op interface \
    ports { input_A_72_out { O 32 vector } input_A_72_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name input_A_71_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_71_out \
    op interface \
    ports { input_A_71_out { O 32 vector } input_A_71_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name input_A_70_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_70_out \
    op interface \
    ports { input_A_70_out { O 32 vector } input_A_70_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name input_A_69_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_69_out \
    op interface \
    ports { input_A_69_out { O 32 vector } input_A_69_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name input_A_68_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_68_out \
    op interface \
    ports { input_A_68_out { O 32 vector } input_A_68_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name input_A_67_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_67_out \
    op interface \
    ports { input_A_67_out { O 32 vector } input_A_67_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name input_A_66_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_66_out \
    op interface \
    ports { input_A_66_out { O 32 vector } input_A_66_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name input_A_65_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_65_out \
    op interface \
    ports { input_A_65_out { O 32 vector } input_A_65_out_ap_vld { O 1 bit } } \
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


