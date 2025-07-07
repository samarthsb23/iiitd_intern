# This script segment is generated automatically by AutoPilot

set id 63
set name MUSIC_top_fptrunchbi
set corename simcore_fptrunc
set op fptrunc
set stage_num 2
set max_latency -1
set registered_input 1
set Futype4reduceCEFanout 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 64
set in0_signed 0
set ce_width 1
set ce_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fptrunc] == "ap_gen_simcore_fptrunc"} {
eval "ap_gen_simcore_fptrunc { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fptrunc, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fptrunc
set corename Double2Float
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 84
set name MUSIC_top_dsqrt_6ibs
set corename simcore_dsqrt
set op dsqrt
set stage_num 21
set max_latency -1
set registered_input 1
set Futype4reduceCEFanout 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 64
set in0_signed 0
set in1_width 64
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 64
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_dsqrt] == "ap_gen_simcore_dsqrt"} {
eval "ap_gen_simcore_dsqrt { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_dsqrt, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op dsqrt
set corename DSqrt
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 87
set name MUSIC_top_mac_muljbC
set corename simcore_mac
set op mac
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 7
set in0_signed 0
set in1_width 8
set in1_signed 0
set in2_width 7
set in2_signed 0
set out_width 14
set exp i0*i1+i2
set arg_lists {i0 {7 0 +} i1 {8 0 +} m {14 0 +} i2 {7 0 +} p {14 0 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mac] == "ap_gen_simcore_mac"} {
eval "ap_gen_simcore_mac { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mac, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 91
set hasByteEnable 0
set MemName qr_givens_R_re
set CoreName ap_simcore_mem
set PortList { 2 2 }
set DataWd 64
set AddrRange 10000
set AddrWd 14
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.237
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 92
set hasByteEnable 0
set MemName qr_givens_temp1i_0
set CoreName ap_simcore_mem
set PortList { 2 3 }
set DataWd 64
set AddrRange 100
set AddrWd 7
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.237
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 93 \
    name A_re \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_re \
    op interface \
    ports { A_re_address0 { O 14 vector } A_re_ce0 { O 1 bit } A_re_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 94 \
    name A_im \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_im \
    op interface \
    ports { A_im_address0 { O 14 vector } A_im_ce0 { O 1 bit } A_im_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 95 \
    name noiseSS_0_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_0_re \
    op interface \
    ports { noiseSS_0_re_address0 { O 7 vector } noiseSS_0_re_ce0 { O 1 bit } noiseSS_0_re_we0 { O 1 bit } noiseSS_0_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_0_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 96 \
    name noiseSS_1_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_1_re \
    op interface \
    ports { noiseSS_1_re_address0 { O 7 vector } noiseSS_1_re_ce0 { O 1 bit } noiseSS_1_re_we0 { O 1 bit } noiseSS_1_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_1_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 97 \
    name noiseSS_2_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_2_re \
    op interface \
    ports { noiseSS_2_re_address0 { O 7 vector } noiseSS_2_re_ce0 { O 1 bit } noiseSS_2_re_we0 { O 1 bit } noiseSS_2_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_2_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 98 \
    name noiseSS_3_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_3_re \
    op interface \
    ports { noiseSS_3_re_address0 { O 7 vector } noiseSS_3_re_ce0 { O 1 bit } noiseSS_3_re_we0 { O 1 bit } noiseSS_3_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_3_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 99 \
    name noiseSS_4_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_4_re \
    op interface \
    ports { noiseSS_4_re_address0 { O 7 vector } noiseSS_4_re_ce0 { O 1 bit } noiseSS_4_re_we0 { O 1 bit } noiseSS_4_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_4_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 100 \
    name noiseSS_5_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_5_re \
    op interface \
    ports { noiseSS_5_re_address0 { O 7 vector } noiseSS_5_re_ce0 { O 1 bit } noiseSS_5_re_we0 { O 1 bit } noiseSS_5_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_5_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 101 \
    name noiseSS_6_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_6_re \
    op interface \
    ports { noiseSS_6_re_address0 { O 7 vector } noiseSS_6_re_ce0 { O 1 bit } noiseSS_6_re_we0 { O 1 bit } noiseSS_6_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_6_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 102 \
    name noiseSS_7_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_7_re \
    op interface \
    ports { noiseSS_7_re_address0 { O 7 vector } noiseSS_7_re_ce0 { O 1 bit } noiseSS_7_re_we0 { O 1 bit } noiseSS_7_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_7_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 103 \
    name noiseSS_8_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_8_re \
    op interface \
    ports { noiseSS_8_re_address0 { O 7 vector } noiseSS_8_re_ce0 { O 1 bit } noiseSS_8_re_we0 { O 1 bit } noiseSS_8_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_8_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 104 \
    name noiseSS_9_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_9_re \
    op interface \
    ports { noiseSS_9_re_address0 { O 7 vector } noiseSS_9_re_ce0 { O 1 bit } noiseSS_9_re_we0 { O 1 bit } noiseSS_9_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_9_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 105 \
    name noiseSS_10_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_10_re \
    op interface \
    ports { noiseSS_10_re_address0 { O 7 vector } noiseSS_10_re_ce0 { O 1 bit } noiseSS_10_re_we0 { O 1 bit } noiseSS_10_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_10_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 106 \
    name noiseSS_11_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_11_re \
    op interface \
    ports { noiseSS_11_re_address0 { O 7 vector } noiseSS_11_re_ce0 { O 1 bit } noiseSS_11_re_we0 { O 1 bit } noiseSS_11_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_11_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 107 \
    name noiseSS_12_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_12_re \
    op interface \
    ports { noiseSS_12_re_address0 { O 7 vector } noiseSS_12_re_ce0 { O 1 bit } noiseSS_12_re_we0 { O 1 bit } noiseSS_12_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_12_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 108 \
    name noiseSS_13_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_13_re \
    op interface \
    ports { noiseSS_13_re_address0 { O 7 vector } noiseSS_13_re_ce0 { O 1 bit } noiseSS_13_re_we0 { O 1 bit } noiseSS_13_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_13_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 109 \
    name noiseSS_14_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_14_re \
    op interface \
    ports { noiseSS_14_re_address0 { O 7 vector } noiseSS_14_re_ce0 { O 1 bit } noiseSS_14_re_we0 { O 1 bit } noiseSS_14_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_14_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 110 \
    name noiseSS_15_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_15_re \
    op interface \
    ports { noiseSS_15_re_address0 { O 7 vector } noiseSS_15_re_ce0 { O 1 bit } noiseSS_15_re_we0 { O 1 bit } noiseSS_15_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_15_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 111 \
    name noiseSS_16_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_16_re \
    op interface \
    ports { noiseSS_16_re_address0 { O 7 vector } noiseSS_16_re_ce0 { O 1 bit } noiseSS_16_re_we0 { O 1 bit } noiseSS_16_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_16_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 112 \
    name noiseSS_17_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_17_re \
    op interface \
    ports { noiseSS_17_re_address0 { O 7 vector } noiseSS_17_re_ce0 { O 1 bit } noiseSS_17_re_we0 { O 1 bit } noiseSS_17_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_17_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 113 \
    name noiseSS_18_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_18_re \
    op interface \
    ports { noiseSS_18_re_address0 { O 7 vector } noiseSS_18_re_ce0 { O 1 bit } noiseSS_18_re_we0 { O 1 bit } noiseSS_18_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_18_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 114 \
    name noiseSS_19_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_19_re \
    op interface \
    ports { noiseSS_19_re_address0 { O 7 vector } noiseSS_19_re_ce0 { O 1 bit } noiseSS_19_re_we0 { O 1 bit } noiseSS_19_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_19_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 115 \
    name noiseSS_20_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_20_re \
    op interface \
    ports { noiseSS_20_re_address0 { O 7 vector } noiseSS_20_re_ce0 { O 1 bit } noiseSS_20_re_we0 { O 1 bit } noiseSS_20_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_20_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 116 \
    name noiseSS_21_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_21_re \
    op interface \
    ports { noiseSS_21_re_address0 { O 7 vector } noiseSS_21_re_ce0 { O 1 bit } noiseSS_21_re_we0 { O 1 bit } noiseSS_21_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_21_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 117 \
    name noiseSS_22_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_22_re \
    op interface \
    ports { noiseSS_22_re_address0 { O 7 vector } noiseSS_22_re_ce0 { O 1 bit } noiseSS_22_re_we0 { O 1 bit } noiseSS_22_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_22_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 118 \
    name noiseSS_23_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_23_re \
    op interface \
    ports { noiseSS_23_re_address0 { O 7 vector } noiseSS_23_re_ce0 { O 1 bit } noiseSS_23_re_we0 { O 1 bit } noiseSS_23_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_23_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 119 \
    name noiseSS_24_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_24_re \
    op interface \
    ports { noiseSS_24_re_address0 { O 7 vector } noiseSS_24_re_ce0 { O 1 bit } noiseSS_24_re_we0 { O 1 bit } noiseSS_24_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_24_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 120 \
    name noiseSS_25_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_25_re \
    op interface \
    ports { noiseSS_25_re_address0 { O 7 vector } noiseSS_25_re_ce0 { O 1 bit } noiseSS_25_re_we0 { O 1 bit } noiseSS_25_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_25_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 121 \
    name noiseSS_26_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_26_re \
    op interface \
    ports { noiseSS_26_re_address0 { O 7 vector } noiseSS_26_re_ce0 { O 1 bit } noiseSS_26_re_we0 { O 1 bit } noiseSS_26_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_26_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 122 \
    name noiseSS_27_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_27_re \
    op interface \
    ports { noiseSS_27_re_address0 { O 7 vector } noiseSS_27_re_ce0 { O 1 bit } noiseSS_27_re_we0 { O 1 bit } noiseSS_27_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_27_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 123 \
    name noiseSS_28_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_28_re \
    op interface \
    ports { noiseSS_28_re_address0 { O 7 vector } noiseSS_28_re_ce0 { O 1 bit } noiseSS_28_re_we0 { O 1 bit } noiseSS_28_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_28_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 124 \
    name noiseSS_29_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_29_re \
    op interface \
    ports { noiseSS_29_re_address0 { O 7 vector } noiseSS_29_re_ce0 { O 1 bit } noiseSS_29_re_we0 { O 1 bit } noiseSS_29_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_29_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 125 \
    name noiseSS_30_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_30_re \
    op interface \
    ports { noiseSS_30_re_address0 { O 7 vector } noiseSS_30_re_ce0 { O 1 bit } noiseSS_30_re_we0 { O 1 bit } noiseSS_30_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_30_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 126 \
    name noiseSS_31_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_31_re \
    op interface \
    ports { noiseSS_31_re_address0 { O 7 vector } noiseSS_31_re_ce0 { O 1 bit } noiseSS_31_re_we0 { O 1 bit } noiseSS_31_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_31_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 127 \
    name noiseSS_32_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_32_re \
    op interface \
    ports { noiseSS_32_re_address0 { O 7 vector } noiseSS_32_re_ce0 { O 1 bit } noiseSS_32_re_we0 { O 1 bit } noiseSS_32_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_32_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 128 \
    name noiseSS_33_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_33_re \
    op interface \
    ports { noiseSS_33_re_address0 { O 7 vector } noiseSS_33_re_ce0 { O 1 bit } noiseSS_33_re_we0 { O 1 bit } noiseSS_33_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_33_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 129 \
    name noiseSS_34_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_34_re \
    op interface \
    ports { noiseSS_34_re_address0 { O 7 vector } noiseSS_34_re_ce0 { O 1 bit } noiseSS_34_re_we0 { O 1 bit } noiseSS_34_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_34_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 130 \
    name noiseSS_35_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_35_re \
    op interface \
    ports { noiseSS_35_re_address0 { O 7 vector } noiseSS_35_re_ce0 { O 1 bit } noiseSS_35_re_we0 { O 1 bit } noiseSS_35_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_35_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 131 \
    name noiseSS_36_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_36_re \
    op interface \
    ports { noiseSS_36_re_address0 { O 7 vector } noiseSS_36_re_ce0 { O 1 bit } noiseSS_36_re_we0 { O 1 bit } noiseSS_36_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_36_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 132 \
    name noiseSS_37_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_37_re \
    op interface \
    ports { noiseSS_37_re_address0 { O 7 vector } noiseSS_37_re_ce0 { O 1 bit } noiseSS_37_re_we0 { O 1 bit } noiseSS_37_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_37_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 133 \
    name noiseSS_38_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_38_re \
    op interface \
    ports { noiseSS_38_re_address0 { O 7 vector } noiseSS_38_re_ce0 { O 1 bit } noiseSS_38_re_we0 { O 1 bit } noiseSS_38_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_38_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 134 \
    name noiseSS_39_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_39_re \
    op interface \
    ports { noiseSS_39_re_address0 { O 7 vector } noiseSS_39_re_ce0 { O 1 bit } noiseSS_39_re_we0 { O 1 bit } noiseSS_39_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_39_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 135 \
    name noiseSS_40_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_40_re \
    op interface \
    ports { noiseSS_40_re_address0 { O 7 vector } noiseSS_40_re_ce0 { O 1 bit } noiseSS_40_re_we0 { O 1 bit } noiseSS_40_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_40_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 136 \
    name noiseSS_41_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_41_re \
    op interface \
    ports { noiseSS_41_re_address0 { O 7 vector } noiseSS_41_re_ce0 { O 1 bit } noiseSS_41_re_we0 { O 1 bit } noiseSS_41_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_41_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 137 \
    name noiseSS_42_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_42_re \
    op interface \
    ports { noiseSS_42_re_address0 { O 7 vector } noiseSS_42_re_ce0 { O 1 bit } noiseSS_42_re_we0 { O 1 bit } noiseSS_42_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_42_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 138 \
    name noiseSS_43_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_43_re \
    op interface \
    ports { noiseSS_43_re_address0 { O 7 vector } noiseSS_43_re_ce0 { O 1 bit } noiseSS_43_re_we0 { O 1 bit } noiseSS_43_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_43_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 139 \
    name noiseSS_44_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_44_re \
    op interface \
    ports { noiseSS_44_re_address0 { O 7 vector } noiseSS_44_re_ce0 { O 1 bit } noiseSS_44_re_we0 { O 1 bit } noiseSS_44_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_44_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 140 \
    name noiseSS_45_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_45_re \
    op interface \
    ports { noiseSS_45_re_address0 { O 7 vector } noiseSS_45_re_ce0 { O 1 bit } noiseSS_45_re_we0 { O 1 bit } noiseSS_45_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_45_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 141 \
    name noiseSS_46_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_46_re \
    op interface \
    ports { noiseSS_46_re_address0 { O 7 vector } noiseSS_46_re_ce0 { O 1 bit } noiseSS_46_re_we0 { O 1 bit } noiseSS_46_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_46_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 142 \
    name noiseSS_47_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_47_re \
    op interface \
    ports { noiseSS_47_re_address0 { O 7 vector } noiseSS_47_re_ce0 { O 1 bit } noiseSS_47_re_we0 { O 1 bit } noiseSS_47_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_47_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 143 \
    name noiseSS_48_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_48_re \
    op interface \
    ports { noiseSS_48_re_address0 { O 7 vector } noiseSS_48_re_ce0 { O 1 bit } noiseSS_48_re_we0 { O 1 bit } noiseSS_48_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_48_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 144 \
    name noiseSS_49_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_49_re \
    op interface \
    ports { noiseSS_49_re_address0 { O 7 vector } noiseSS_49_re_ce0 { O 1 bit } noiseSS_49_re_we0 { O 1 bit } noiseSS_49_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_49_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 145 \
    name noiseSS_50_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_50_re \
    op interface \
    ports { noiseSS_50_re_address0 { O 7 vector } noiseSS_50_re_ce0 { O 1 bit } noiseSS_50_re_we0 { O 1 bit } noiseSS_50_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_50_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 146 \
    name noiseSS_51_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_51_re \
    op interface \
    ports { noiseSS_51_re_address0 { O 7 vector } noiseSS_51_re_ce0 { O 1 bit } noiseSS_51_re_we0 { O 1 bit } noiseSS_51_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_51_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 147 \
    name noiseSS_52_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_52_re \
    op interface \
    ports { noiseSS_52_re_address0 { O 7 vector } noiseSS_52_re_ce0 { O 1 bit } noiseSS_52_re_we0 { O 1 bit } noiseSS_52_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_52_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 148 \
    name noiseSS_53_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_53_re \
    op interface \
    ports { noiseSS_53_re_address0 { O 7 vector } noiseSS_53_re_ce0 { O 1 bit } noiseSS_53_re_we0 { O 1 bit } noiseSS_53_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_53_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 149 \
    name noiseSS_54_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_54_re \
    op interface \
    ports { noiseSS_54_re_address0 { O 7 vector } noiseSS_54_re_ce0 { O 1 bit } noiseSS_54_re_we0 { O 1 bit } noiseSS_54_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_54_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 150 \
    name noiseSS_55_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_55_re \
    op interface \
    ports { noiseSS_55_re_address0 { O 7 vector } noiseSS_55_re_ce0 { O 1 bit } noiseSS_55_re_we0 { O 1 bit } noiseSS_55_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_55_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 151 \
    name noiseSS_56_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_56_re \
    op interface \
    ports { noiseSS_56_re_address0 { O 7 vector } noiseSS_56_re_ce0 { O 1 bit } noiseSS_56_re_we0 { O 1 bit } noiseSS_56_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_56_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 152 \
    name noiseSS_57_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_57_re \
    op interface \
    ports { noiseSS_57_re_address0 { O 7 vector } noiseSS_57_re_ce0 { O 1 bit } noiseSS_57_re_we0 { O 1 bit } noiseSS_57_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_57_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 153 \
    name noiseSS_58_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_58_re \
    op interface \
    ports { noiseSS_58_re_address0 { O 7 vector } noiseSS_58_re_ce0 { O 1 bit } noiseSS_58_re_we0 { O 1 bit } noiseSS_58_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_58_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 154 \
    name noiseSS_59_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_59_re \
    op interface \
    ports { noiseSS_59_re_address0 { O 7 vector } noiseSS_59_re_ce0 { O 1 bit } noiseSS_59_re_we0 { O 1 bit } noiseSS_59_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_59_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 155 \
    name noiseSS_60_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_60_re \
    op interface \
    ports { noiseSS_60_re_address0 { O 7 vector } noiseSS_60_re_ce0 { O 1 bit } noiseSS_60_re_we0 { O 1 bit } noiseSS_60_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_60_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 156 \
    name noiseSS_61_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_61_re \
    op interface \
    ports { noiseSS_61_re_address0 { O 7 vector } noiseSS_61_re_ce0 { O 1 bit } noiseSS_61_re_we0 { O 1 bit } noiseSS_61_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_61_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 157 \
    name noiseSS_62_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_62_re \
    op interface \
    ports { noiseSS_62_re_address0 { O 7 vector } noiseSS_62_re_ce0 { O 1 bit } noiseSS_62_re_we0 { O 1 bit } noiseSS_62_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_62_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 158 \
    name noiseSS_63_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_63_re \
    op interface \
    ports { noiseSS_63_re_address0 { O 7 vector } noiseSS_63_re_ce0 { O 1 bit } noiseSS_63_re_we0 { O 1 bit } noiseSS_63_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_63_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 159 \
    name noiseSS_64_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_64_re \
    op interface \
    ports { noiseSS_64_re_address0 { O 7 vector } noiseSS_64_re_ce0 { O 1 bit } noiseSS_64_re_we0 { O 1 bit } noiseSS_64_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_64_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 160 \
    name noiseSS_65_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_65_re \
    op interface \
    ports { noiseSS_65_re_address0 { O 7 vector } noiseSS_65_re_ce0 { O 1 bit } noiseSS_65_re_we0 { O 1 bit } noiseSS_65_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_65_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 161 \
    name noiseSS_66_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_66_re \
    op interface \
    ports { noiseSS_66_re_address0 { O 7 vector } noiseSS_66_re_ce0 { O 1 bit } noiseSS_66_re_we0 { O 1 bit } noiseSS_66_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_66_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 162 \
    name noiseSS_67_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_67_re \
    op interface \
    ports { noiseSS_67_re_address0 { O 7 vector } noiseSS_67_re_ce0 { O 1 bit } noiseSS_67_re_we0 { O 1 bit } noiseSS_67_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_67_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 163 \
    name noiseSS_68_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_68_re \
    op interface \
    ports { noiseSS_68_re_address0 { O 7 vector } noiseSS_68_re_ce0 { O 1 bit } noiseSS_68_re_we0 { O 1 bit } noiseSS_68_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_68_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 164 \
    name noiseSS_69_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_69_re \
    op interface \
    ports { noiseSS_69_re_address0 { O 7 vector } noiseSS_69_re_ce0 { O 1 bit } noiseSS_69_re_we0 { O 1 bit } noiseSS_69_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_69_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 165 \
    name noiseSS_70_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_70_re \
    op interface \
    ports { noiseSS_70_re_address0 { O 7 vector } noiseSS_70_re_ce0 { O 1 bit } noiseSS_70_re_we0 { O 1 bit } noiseSS_70_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_70_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 166 \
    name noiseSS_71_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_71_re \
    op interface \
    ports { noiseSS_71_re_address0 { O 7 vector } noiseSS_71_re_ce0 { O 1 bit } noiseSS_71_re_we0 { O 1 bit } noiseSS_71_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_71_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 167 \
    name noiseSS_72_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_72_re \
    op interface \
    ports { noiseSS_72_re_address0 { O 7 vector } noiseSS_72_re_ce0 { O 1 bit } noiseSS_72_re_we0 { O 1 bit } noiseSS_72_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_72_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 168 \
    name noiseSS_73_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_73_re \
    op interface \
    ports { noiseSS_73_re_address0 { O 7 vector } noiseSS_73_re_ce0 { O 1 bit } noiseSS_73_re_we0 { O 1 bit } noiseSS_73_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_73_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 169 \
    name noiseSS_74_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_74_re \
    op interface \
    ports { noiseSS_74_re_address0 { O 7 vector } noiseSS_74_re_ce0 { O 1 bit } noiseSS_74_re_we0 { O 1 bit } noiseSS_74_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_74_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 170 \
    name noiseSS_75_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_75_re \
    op interface \
    ports { noiseSS_75_re_address0 { O 7 vector } noiseSS_75_re_ce0 { O 1 bit } noiseSS_75_re_we0 { O 1 bit } noiseSS_75_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_75_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 171 \
    name noiseSS_76_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_76_re \
    op interface \
    ports { noiseSS_76_re_address0 { O 7 vector } noiseSS_76_re_ce0 { O 1 bit } noiseSS_76_re_we0 { O 1 bit } noiseSS_76_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_76_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 172 \
    name noiseSS_77_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_77_re \
    op interface \
    ports { noiseSS_77_re_address0 { O 7 vector } noiseSS_77_re_ce0 { O 1 bit } noiseSS_77_re_we0 { O 1 bit } noiseSS_77_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_77_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 173 \
    name noiseSS_78_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_78_re \
    op interface \
    ports { noiseSS_78_re_address0 { O 7 vector } noiseSS_78_re_ce0 { O 1 bit } noiseSS_78_re_we0 { O 1 bit } noiseSS_78_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_78_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 174 \
    name noiseSS_79_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_79_re \
    op interface \
    ports { noiseSS_79_re_address0 { O 7 vector } noiseSS_79_re_ce0 { O 1 bit } noiseSS_79_re_we0 { O 1 bit } noiseSS_79_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_79_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 175 \
    name noiseSS_80_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_80_re \
    op interface \
    ports { noiseSS_80_re_address0 { O 7 vector } noiseSS_80_re_ce0 { O 1 bit } noiseSS_80_re_we0 { O 1 bit } noiseSS_80_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_80_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 176 \
    name noiseSS_81_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_81_re \
    op interface \
    ports { noiseSS_81_re_address0 { O 7 vector } noiseSS_81_re_ce0 { O 1 bit } noiseSS_81_re_we0 { O 1 bit } noiseSS_81_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_81_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 177 \
    name noiseSS_82_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_82_re \
    op interface \
    ports { noiseSS_82_re_address0 { O 7 vector } noiseSS_82_re_ce0 { O 1 bit } noiseSS_82_re_we0 { O 1 bit } noiseSS_82_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_82_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 178 \
    name noiseSS_83_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_83_re \
    op interface \
    ports { noiseSS_83_re_address0 { O 7 vector } noiseSS_83_re_ce0 { O 1 bit } noiseSS_83_re_we0 { O 1 bit } noiseSS_83_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_83_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 179 \
    name noiseSS_84_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_84_re \
    op interface \
    ports { noiseSS_84_re_address0 { O 7 vector } noiseSS_84_re_ce0 { O 1 bit } noiseSS_84_re_we0 { O 1 bit } noiseSS_84_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_84_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 180 \
    name noiseSS_85_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_85_re \
    op interface \
    ports { noiseSS_85_re_address0 { O 7 vector } noiseSS_85_re_ce0 { O 1 bit } noiseSS_85_re_we0 { O 1 bit } noiseSS_85_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_85_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 181 \
    name noiseSS_86_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_86_re \
    op interface \
    ports { noiseSS_86_re_address0 { O 7 vector } noiseSS_86_re_ce0 { O 1 bit } noiseSS_86_re_we0 { O 1 bit } noiseSS_86_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_86_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 182 \
    name noiseSS_87_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_87_re \
    op interface \
    ports { noiseSS_87_re_address0 { O 7 vector } noiseSS_87_re_ce0 { O 1 bit } noiseSS_87_re_we0 { O 1 bit } noiseSS_87_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_87_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 183 \
    name noiseSS_88_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_88_re \
    op interface \
    ports { noiseSS_88_re_address0 { O 7 vector } noiseSS_88_re_ce0 { O 1 bit } noiseSS_88_re_we0 { O 1 bit } noiseSS_88_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_88_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 184 \
    name noiseSS_89_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_89_re \
    op interface \
    ports { noiseSS_89_re_address0 { O 7 vector } noiseSS_89_re_ce0 { O 1 bit } noiseSS_89_re_we0 { O 1 bit } noiseSS_89_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_89_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 185 \
    name noiseSS_90_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_90_re \
    op interface \
    ports { noiseSS_90_re_address0 { O 7 vector } noiseSS_90_re_ce0 { O 1 bit } noiseSS_90_re_we0 { O 1 bit } noiseSS_90_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_90_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 186 \
    name noiseSS_91_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_91_re \
    op interface \
    ports { noiseSS_91_re_address0 { O 7 vector } noiseSS_91_re_ce0 { O 1 bit } noiseSS_91_re_we0 { O 1 bit } noiseSS_91_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_91_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 187 \
    name noiseSS_92_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_92_re \
    op interface \
    ports { noiseSS_92_re_address0 { O 7 vector } noiseSS_92_re_ce0 { O 1 bit } noiseSS_92_re_we0 { O 1 bit } noiseSS_92_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_92_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 188 \
    name noiseSS_93_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_93_re \
    op interface \
    ports { noiseSS_93_re_address0 { O 7 vector } noiseSS_93_re_ce0 { O 1 bit } noiseSS_93_re_we0 { O 1 bit } noiseSS_93_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_93_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 189 \
    name noiseSS_94_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_94_re \
    op interface \
    ports { noiseSS_94_re_address0 { O 7 vector } noiseSS_94_re_ce0 { O 1 bit } noiseSS_94_re_we0 { O 1 bit } noiseSS_94_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_94_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 190 \
    name noiseSS_95_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_95_re \
    op interface \
    ports { noiseSS_95_re_address0 { O 7 vector } noiseSS_95_re_ce0 { O 1 bit } noiseSS_95_re_we0 { O 1 bit } noiseSS_95_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_95_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 191 \
    name noiseSS_96_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_96_re \
    op interface \
    ports { noiseSS_96_re_address0 { O 7 vector } noiseSS_96_re_ce0 { O 1 bit } noiseSS_96_re_we0 { O 1 bit } noiseSS_96_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_96_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 192 \
    name noiseSS_97_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_97_re \
    op interface \
    ports { noiseSS_97_re_address0 { O 7 vector } noiseSS_97_re_ce0 { O 1 bit } noiseSS_97_re_we0 { O 1 bit } noiseSS_97_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_97_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 193 \
    name noiseSS_98_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_98_re \
    op interface \
    ports { noiseSS_98_re_address0 { O 7 vector } noiseSS_98_re_ce0 { O 1 bit } noiseSS_98_re_we0 { O 1 bit } noiseSS_98_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_98_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 194 \
    name noiseSS_99_re \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_99_re \
    op interface \
    ports { noiseSS_99_re_address0 { O 7 vector } noiseSS_99_re_ce0 { O 1 bit } noiseSS_99_re_we0 { O 1 bit } noiseSS_99_re_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_99_re'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 195 \
    name noiseSS_0_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_0_im \
    op interface \
    ports { noiseSS_0_im_address0 { O 7 vector } noiseSS_0_im_ce0 { O 1 bit } noiseSS_0_im_we0 { O 1 bit } noiseSS_0_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_0_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 196 \
    name noiseSS_1_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_1_im \
    op interface \
    ports { noiseSS_1_im_address0 { O 7 vector } noiseSS_1_im_ce0 { O 1 bit } noiseSS_1_im_we0 { O 1 bit } noiseSS_1_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_1_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 197 \
    name noiseSS_2_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_2_im \
    op interface \
    ports { noiseSS_2_im_address0 { O 7 vector } noiseSS_2_im_ce0 { O 1 bit } noiseSS_2_im_we0 { O 1 bit } noiseSS_2_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_2_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 198 \
    name noiseSS_3_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_3_im \
    op interface \
    ports { noiseSS_3_im_address0 { O 7 vector } noiseSS_3_im_ce0 { O 1 bit } noiseSS_3_im_we0 { O 1 bit } noiseSS_3_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_3_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 199 \
    name noiseSS_4_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_4_im \
    op interface \
    ports { noiseSS_4_im_address0 { O 7 vector } noiseSS_4_im_ce0 { O 1 bit } noiseSS_4_im_we0 { O 1 bit } noiseSS_4_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_4_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 200 \
    name noiseSS_5_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_5_im \
    op interface \
    ports { noiseSS_5_im_address0 { O 7 vector } noiseSS_5_im_ce0 { O 1 bit } noiseSS_5_im_we0 { O 1 bit } noiseSS_5_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_5_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 201 \
    name noiseSS_6_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_6_im \
    op interface \
    ports { noiseSS_6_im_address0 { O 7 vector } noiseSS_6_im_ce0 { O 1 bit } noiseSS_6_im_we0 { O 1 bit } noiseSS_6_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_6_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 202 \
    name noiseSS_7_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_7_im \
    op interface \
    ports { noiseSS_7_im_address0 { O 7 vector } noiseSS_7_im_ce0 { O 1 bit } noiseSS_7_im_we0 { O 1 bit } noiseSS_7_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_7_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 203 \
    name noiseSS_8_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_8_im \
    op interface \
    ports { noiseSS_8_im_address0 { O 7 vector } noiseSS_8_im_ce0 { O 1 bit } noiseSS_8_im_we0 { O 1 bit } noiseSS_8_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_8_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 204 \
    name noiseSS_9_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_9_im \
    op interface \
    ports { noiseSS_9_im_address0 { O 7 vector } noiseSS_9_im_ce0 { O 1 bit } noiseSS_9_im_we0 { O 1 bit } noiseSS_9_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_9_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 205 \
    name noiseSS_10_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_10_im \
    op interface \
    ports { noiseSS_10_im_address0 { O 7 vector } noiseSS_10_im_ce0 { O 1 bit } noiseSS_10_im_we0 { O 1 bit } noiseSS_10_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_10_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 206 \
    name noiseSS_11_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_11_im \
    op interface \
    ports { noiseSS_11_im_address0 { O 7 vector } noiseSS_11_im_ce0 { O 1 bit } noiseSS_11_im_we0 { O 1 bit } noiseSS_11_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_11_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 207 \
    name noiseSS_12_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_12_im \
    op interface \
    ports { noiseSS_12_im_address0 { O 7 vector } noiseSS_12_im_ce0 { O 1 bit } noiseSS_12_im_we0 { O 1 bit } noiseSS_12_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_12_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 208 \
    name noiseSS_13_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_13_im \
    op interface \
    ports { noiseSS_13_im_address0 { O 7 vector } noiseSS_13_im_ce0 { O 1 bit } noiseSS_13_im_we0 { O 1 bit } noiseSS_13_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_13_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 209 \
    name noiseSS_14_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_14_im \
    op interface \
    ports { noiseSS_14_im_address0 { O 7 vector } noiseSS_14_im_ce0 { O 1 bit } noiseSS_14_im_we0 { O 1 bit } noiseSS_14_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_14_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 210 \
    name noiseSS_15_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_15_im \
    op interface \
    ports { noiseSS_15_im_address0 { O 7 vector } noiseSS_15_im_ce0 { O 1 bit } noiseSS_15_im_we0 { O 1 bit } noiseSS_15_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_15_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 211 \
    name noiseSS_16_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_16_im \
    op interface \
    ports { noiseSS_16_im_address0 { O 7 vector } noiseSS_16_im_ce0 { O 1 bit } noiseSS_16_im_we0 { O 1 bit } noiseSS_16_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_16_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 212 \
    name noiseSS_17_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_17_im \
    op interface \
    ports { noiseSS_17_im_address0 { O 7 vector } noiseSS_17_im_ce0 { O 1 bit } noiseSS_17_im_we0 { O 1 bit } noiseSS_17_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_17_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 213 \
    name noiseSS_18_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_18_im \
    op interface \
    ports { noiseSS_18_im_address0 { O 7 vector } noiseSS_18_im_ce0 { O 1 bit } noiseSS_18_im_we0 { O 1 bit } noiseSS_18_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_18_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 214 \
    name noiseSS_19_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_19_im \
    op interface \
    ports { noiseSS_19_im_address0 { O 7 vector } noiseSS_19_im_ce0 { O 1 bit } noiseSS_19_im_we0 { O 1 bit } noiseSS_19_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_19_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 215 \
    name noiseSS_20_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_20_im \
    op interface \
    ports { noiseSS_20_im_address0 { O 7 vector } noiseSS_20_im_ce0 { O 1 bit } noiseSS_20_im_we0 { O 1 bit } noiseSS_20_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_20_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 216 \
    name noiseSS_21_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_21_im \
    op interface \
    ports { noiseSS_21_im_address0 { O 7 vector } noiseSS_21_im_ce0 { O 1 bit } noiseSS_21_im_we0 { O 1 bit } noiseSS_21_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_21_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 217 \
    name noiseSS_22_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_22_im \
    op interface \
    ports { noiseSS_22_im_address0 { O 7 vector } noiseSS_22_im_ce0 { O 1 bit } noiseSS_22_im_we0 { O 1 bit } noiseSS_22_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_22_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 218 \
    name noiseSS_23_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_23_im \
    op interface \
    ports { noiseSS_23_im_address0 { O 7 vector } noiseSS_23_im_ce0 { O 1 bit } noiseSS_23_im_we0 { O 1 bit } noiseSS_23_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_23_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 219 \
    name noiseSS_24_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_24_im \
    op interface \
    ports { noiseSS_24_im_address0 { O 7 vector } noiseSS_24_im_ce0 { O 1 bit } noiseSS_24_im_we0 { O 1 bit } noiseSS_24_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_24_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 220 \
    name noiseSS_25_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_25_im \
    op interface \
    ports { noiseSS_25_im_address0 { O 7 vector } noiseSS_25_im_ce0 { O 1 bit } noiseSS_25_im_we0 { O 1 bit } noiseSS_25_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_25_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 221 \
    name noiseSS_26_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_26_im \
    op interface \
    ports { noiseSS_26_im_address0 { O 7 vector } noiseSS_26_im_ce0 { O 1 bit } noiseSS_26_im_we0 { O 1 bit } noiseSS_26_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_26_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 222 \
    name noiseSS_27_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_27_im \
    op interface \
    ports { noiseSS_27_im_address0 { O 7 vector } noiseSS_27_im_ce0 { O 1 bit } noiseSS_27_im_we0 { O 1 bit } noiseSS_27_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_27_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 223 \
    name noiseSS_28_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_28_im \
    op interface \
    ports { noiseSS_28_im_address0 { O 7 vector } noiseSS_28_im_ce0 { O 1 bit } noiseSS_28_im_we0 { O 1 bit } noiseSS_28_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_28_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 224 \
    name noiseSS_29_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_29_im \
    op interface \
    ports { noiseSS_29_im_address0 { O 7 vector } noiseSS_29_im_ce0 { O 1 bit } noiseSS_29_im_we0 { O 1 bit } noiseSS_29_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_29_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 225 \
    name noiseSS_30_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_30_im \
    op interface \
    ports { noiseSS_30_im_address0 { O 7 vector } noiseSS_30_im_ce0 { O 1 bit } noiseSS_30_im_we0 { O 1 bit } noiseSS_30_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_30_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 226 \
    name noiseSS_31_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_31_im \
    op interface \
    ports { noiseSS_31_im_address0 { O 7 vector } noiseSS_31_im_ce0 { O 1 bit } noiseSS_31_im_we0 { O 1 bit } noiseSS_31_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_31_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 227 \
    name noiseSS_32_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_32_im \
    op interface \
    ports { noiseSS_32_im_address0 { O 7 vector } noiseSS_32_im_ce0 { O 1 bit } noiseSS_32_im_we0 { O 1 bit } noiseSS_32_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_32_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 228 \
    name noiseSS_33_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_33_im \
    op interface \
    ports { noiseSS_33_im_address0 { O 7 vector } noiseSS_33_im_ce0 { O 1 bit } noiseSS_33_im_we0 { O 1 bit } noiseSS_33_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_33_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 229 \
    name noiseSS_34_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_34_im \
    op interface \
    ports { noiseSS_34_im_address0 { O 7 vector } noiseSS_34_im_ce0 { O 1 bit } noiseSS_34_im_we0 { O 1 bit } noiseSS_34_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_34_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 230 \
    name noiseSS_35_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_35_im \
    op interface \
    ports { noiseSS_35_im_address0 { O 7 vector } noiseSS_35_im_ce0 { O 1 bit } noiseSS_35_im_we0 { O 1 bit } noiseSS_35_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_35_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 231 \
    name noiseSS_36_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_36_im \
    op interface \
    ports { noiseSS_36_im_address0 { O 7 vector } noiseSS_36_im_ce0 { O 1 bit } noiseSS_36_im_we0 { O 1 bit } noiseSS_36_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_36_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 232 \
    name noiseSS_37_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_37_im \
    op interface \
    ports { noiseSS_37_im_address0 { O 7 vector } noiseSS_37_im_ce0 { O 1 bit } noiseSS_37_im_we0 { O 1 bit } noiseSS_37_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_37_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 233 \
    name noiseSS_38_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_38_im \
    op interface \
    ports { noiseSS_38_im_address0 { O 7 vector } noiseSS_38_im_ce0 { O 1 bit } noiseSS_38_im_we0 { O 1 bit } noiseSS_38_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_38_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 234 \
    name noiseSS_39_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_39_im \
    op interface \
    ports { noiseSS_39_im_address0 { O 7 vector } noiseSS_39_im_ce0 { O 1 bit } noiseSS_39_im_we0 { O 1 bit } noiseSS_39_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_39_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 235 \
    name noiseSS_40_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_40_im \
    op interface \
    ports { noiseSS_40_im_address0 { O 7 vector } noiseSS_40_im_ce0 { O 1 bit } noiseSS_40_im_we0 { O 1 bit } noiseSS_40_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_40_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 236 \
    name noiseSS_41_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_41_im \
    op interface \
    ports { noiseSS_41_im_address0 { O 7 vector } noiseSS_41_im_ce0 { O 1 bit } noiseSS_41_im_we0 { O 1 bit } noiseSS_41_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_41_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 237 \
    name noiseSS_42_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_42_im \
    op interface \
    ports { noiseSS_42_im_address0 { O 7 vector } noiseSS_42_im_ce0 { O 1 bit } noiseSS_42_im_we0 { O 1 bit } noiseSS_42_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_42_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 238 \
    name noiseSS_43_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_43_im \
    op interface \
    ports { noiseSS_43_im_address0 { O 7 vector } noiseSS_43_im_ce0 { O 1 bit } noiseSS_43_im_we0 { O 1 bit } noiseSS_43_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_43_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 239 \
    name noiseSS_44_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_44_im \
    op interface \
    ports { noiseSS_44_im_address0 { O 7 vector } noiseSS_44_im_ce0 { O 1 bit } noiseSS_44_im_we0 { O 1 bit } noiseSS_44_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_44_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 240 \
    name noiseSS_45_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_45_im \
    op interface \
    ports { noiseSS_45_im_address0 { O 7 vector } noiseSS_45_im_ce0 { O 1 bit } noiseSS_45_im_we0 { O 1 bit } noiseSS_45_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_45_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 241 \
    name noiseSS_46_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_46_im \
    op interface \
    ports { noiseSS_46_im_address0 { O 7 vector } noiseSS_46_im_ce0 { O 1 bit } noiseSS_46_im_we0 { O 1 bit } noiseSS_46_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_46_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 242 \
    name noiseSS_47_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_47_im \
    op interface \
    ports { noiseSS_47_im_address0 { O 7 vector } noiseSS_47_im_ce0 { O 1 bit } noiseSS_47_im_we0 { O 1 bit } noiseSS_47_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_47_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 243 \
    name noiseSS_48_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_48_im \
    op interface \
    ports { noiseSS_48_im_address0 { O 7 vector } noiseSS_48_im_ce0 { O 1 bit } noiseSS_48_im_we0 { O 1 bit } noiseSS_48_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_48_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 244 \
    name noiseSS_49_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_49_im \
    op interface \
    ports { noiseSS_49_im_address0 { O 7 vector } noiseSS_49_im_ce0 { O 1 bit } noiseSS_49_im_we0 { O 1 bit } noiseSS_49_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_49_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 245 \
    name noiseSS_50_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_50_im \
    op interface \
    ports { noiseSS_50_im_address0 { O 7 vector } noiseSS_50_im_ce0 { O 1 bit } noiseSS_50_im_we0 { O 1 bit } noiseSS_50_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_50_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 246 \
    name noiseSS_51_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_51_im \
    op interface \
    ports { noiseSS_51_im_address0 { O 7 vector } noiseSS_51_im_ce0 { O 1 bit } noiseSS_51_im_we0 { O 1 bit } noiseSS_51_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_51_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 247 \
    name noiseSS_52_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_52_im \
    op interface \
    ports { noiseSS_52_im_address0 { O 7 vector } noiseSS_52_im_ce0 { O 1 bit } noiseSS_52_im_we0 { O 1 bit } noiseSS_52_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_52_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 248 \
    name noiseSS_53_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_53_im \
    op interface \
    ports { noiseSS_53_im_address0 { O 7 vector } noiseSS_53_im_ce0 { O 1 bit } noiseSS_53_im_we0 { O 1 bit } noiseSS_53_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_53_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 249 \
    name noiseSS_54_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_54_im \
    op interface \
    ports { noiseSS_54_im_address0 { O 7 vector } noiseSS_54_im_ce0 { O 1 bit } noiseSS_54_im_we0 { O 1 bit } noiseSS_54_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_54_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 250 \
    name noiseSS_55_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_55_im \
    op interface \
    ports { noiseSS_55_im_address0 { O 7 vector } noiseSS_55_im_ce0 { O 1 bit } noiseSS_55_im_we0 { O 1 bit } noiseSS_55_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_55_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 251 \
    name noiseSS_56_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_56_im \
    op interface \
    ports { noiseSS_56_im_address0 { O 7 vector } noiseSS_56_im_ce0 { O 1 bit } noiseSS_56_im_we0 { O 1 bit } noiseSS_56_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_56_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 252 \
    name noiseSS_57_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_57_im \
    op interface \
    ports { noiseSS_57_im_address0 { O 7 vector } noiseSS_57_im_ce0 { O 1 bit } noiseSS_57_im_we0 { O 1 bit } noiseSS_57_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_57_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 253 \
    name noiseSS_58_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_58_im \
    op interface \
    ports { noiseSS_58_im_address0 { O 7 vector } noiseSS_58_im_ce0 { O 1 bit } noiseSS_58_im_we0 { O 1 bit } noiseSS_58_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_58_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 254 \
    name noiseSS_59_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_59_im \
    op interface \
    ports { noiseSS_59_im_address0 { O 7 vector } noiseSS_59_im_ce0 { O 1 bit } noiseSS_59_im_we0 { O 1 bit } noiseSS_59_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_59_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 255 \
    name noiseSS_60_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_60_im \
    op interface \
    ports { noiseSS_60_im_address0 { O 7 vector } noiseSS_60_im_ce0 { O 1 bit } noiseSS_60_im_we0 { O 1 bit } noiseSS_60_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_60_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 256 \
    name noiseSS_61_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_61_im \
    op interface \
    ports { noiseSS_61_im_address0 { O 7 vector } noiseSS_61_im_ce0 { O 1 bit } noiseSS_61_im_we0 { O 1 bit } noiseSS_61_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_61_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 257 \
    name noiseSS_62_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_62_im \
    op interface \
    ports { noiseSS_62_im_address0 { O 7 vector } noiseSS_62_im_ce0 { O 1 bit } noiseSS_62_im_we0 { O 1 bit } noiseSS_62_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_62_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 258 \
    name noiseSS_63_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_63_im \
    op interface \
    ports { noiseSS_63_im_address0 { O 7 vector } noiseSS_63_im_ce0 { O 1 bit } noiseSS_63_im_we0 { O 1 bit } noiseSS_63_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_63_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 259 \
    name noiseSS_64_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_64_im \
    op interface \
    ports { noiseSS_64_im_address0 { O 7 vector } noiseSS_64_im_ce0 { O 1 bit } noiseSS_64_im_we0 { O 1 bit } noiseSS_64_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_64_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 260 \
    name noiseSS_65_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_65_im \
    op interface \
    ports { noiseSS_65_im_address0 { O 7 vector } noiseSS_65_im_ce0 { O 1 bit } noiseSS_65_im_we0 { O 1 bit } noiseSS_65_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_65_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 261 \
    name noiseSS_66_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_66_im \
    op interface \
    ports { noiseSS_66_im_address0 { O 7 vector } noiseSS_66_im_ce0 { O 1 bit } noiseSS_66_im_we0 { O 1 bit } noiseSS_66_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_66_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 262 \
    name noiseSS_67_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_67_im \
    op interface \
    ports { noiseSS_67_im_address0 { O 7 vector } noiseSS_67_im_ce0 { O 1 bit } noiseSS_67_im_we0 { O 1 bit } noiseSS_67_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_67_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 263 \
    name noiseSS_68_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_68_im \
    op interface \
    ports { noiseSS_68_im_address0 { O 7 vector } noiseSS_68_im_ce0 { O 1 bit } noiseSS_68_im_we0 { O 1 bit } noiseSS_68_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_68_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 264 \
    name noiseSS_69_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_69_im \
    op interface \
    ports { noiseSS_69_im_address0 { O 7 vector } noiseSS_69_im_ce0 { O 1 bit } noiseSS_69_im_we0 { O 1 bit } noiseSS_69_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_69_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 265 \
    name noiseSS_70_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_70_im \
    op interface \
    ports { noiseSS_70_im_address0 { O 7 vector } noiseSS_70_im_ce0 { O 1 bit } noiseSS_70_im_we0 { O 1 bit } noiseSS_70_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_70_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 266 \
    name noiseSS_71_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_71_im \
    op interface \
    ports { noiseSS_71_im_address0 { O 7 vector } noiseSS_71_im_ce0 { O 1 bit } noiseSS_71_im_we0 { O 1 bit } noiseSS_71_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_71_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 267 \
    name noiseSS_72_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_72_im \
    op interface \
    ports { noiseSS_72_im_address0 { O 7 vector } noiseSS_72_im_ce0 { O 1 bit } noiseSS_72_im_we0 { O 1 bit } noiseSS_72_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_72_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 268 \
    name noiseSS_73_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_73_im \
    op interface \
    ports { noiseSS_73_im_address0 { O 7 vector } noiseSS_73_im_ce0 { O 1 bit } noiseSS_73_im_we0 { O 1 bit } noiseSS_73_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_73_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 269 \
    name noiseSS_74_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_74_im \
    op interface \
    ports { noiseSS_74_im_address0 { O 7 vector } noiseSS_74_im_ce0 { O 1 bit } noiseSS_74_im_we0 { O 1 bit } noiseSS_74_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_74_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 270 \
    name noiseSS_75_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_75_im \
    op interface \
    ports { noiseSS_75_im_address0 { O 7 vector } noiseSS_75_im_ce0 { O 1 bit } noiseSS_75_im_we0 { O 1 bit } noiseSS_75_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_75_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 271 \
    name noiseSS_76_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_76_im \
    op interface \
    ports { noiseSS_76_im_address0 { O 7 vector } noiseSS_76_im_ce0 { O 1 bit } noiseSS_76_im_we0 { O 1 bit } noiseSS_76_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_76_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 272 \
    name noiseSS_77_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_77_im \
    op interface \
    ports { noiseSS_77_im_address0 { O 7 vector } noiseSS_77_im_ce0 { O 1 bit } noiseSS_77_im_we0 { O 1 bit } noiseSS_77_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_77_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 273 \
    name noiseSS_78_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_78_im \
    op interface \
    ports { noiseSS_78_im_address0 { O 7 vector } noiseSS_78_im_ce0 { O 1 bit } noiseSS_78_im_we0 { O 1 bit } noiseSS_78_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_78_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 274 \
    name noiseSS_79_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_79_im \
    op interface \
    ports { noiseSS_79_im_address0 { O 7 vector } noiseSS_79_im_ce0 { O 1 bit } noiseSS_79_im_we0 { O 1 bit } noiseSS_79_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_79_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 275 \
    name noiseSS_80_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_80_im \
    op interface \
    ports { noiseSS_80_im_address0 { O 7 vector } noiseSS_80_im_ce0 { O 1 bit } noiseSS_80_im_we0 { O 1 bit } noiseSS_80_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_80_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 276 \
    name noiseSS_81_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_81_im \
    op interface \
    ports { noiseSS_81_im_address0 { O 7 vector } noiseSS_81_im_ce0 { O 1 bit } noiseSS_81_im_we0 { O 1 bit } noiseSS_81_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_81_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 277 \
    name noiseSS_82_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_82_im \
    op interface \
    ports { noiseSS_82_im_address0 { O 7 vector } noiseSS_82_im_ce0 { O 1 bit } noiseSS_82_im_we0 { O 1 bit } noiseSS_82_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_82_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 278 \
    name noiseSS_83_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_83_im \
    op interface \
    ports { noiseSS_83_im_address0 { O 7 vector } noiseSS_83_im_ce0 { O 1 bit } noiseSS_83_im_we0 { O 1 bit } noiseSS_83_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_83_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 279 \
    name noiseSS_84_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_84_im \
    op interface \
    ports { noiseSS_84_im_address0 { O 7 vector } noiseSS_84_im_ce0 { O 1 bit } noiseSS_84_im_we0 { O 1 bit } noiseSS_84_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_84_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 280 \
    name noiseSS_85_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_85_im \
    op interface \
    ports { noiseSS_85_im_address0 { O 7 vector } noiseSS_85_im_ce0 { O 1 bit } noiseSS_85_im_we0 { O 1 bit } noiseSS_85_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_85_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 281 \
    name noiseSS_86_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_86_im \
    op interface \
    ports { noiseSS_86_im_address0 { O 7 vector } noiseSS_86_im_ce0 { O 1 bit } noiseSS_86_im_we0 { O 1 bit } noiseSS_86_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_86_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 282 \
    name noiseSS_87_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_87_im \
    op interface \
    ports { noiseSS_87_im_address0 { O 7 vector } noiseSS_87_im_ce0 { O 1 bit } noiseSS_87_im_we0 { O 1 bit } noiseSS_87_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_87_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 283 \
    name noiseSS_88_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_88_im \
    op interface \
    ports { noiseSS_88_im_address0 { O 7 vector } noiseSS_88_im_ce0 { O 1 bit } noiseSS_88_im_we0 { O 1 bit } noiseSS_88_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_88_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 284 \
    name noiseSS_89_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_89_im \
    op interface \
    ports { noiseSS_89_im_address0 { O 7 vector } noiseSS_89_im_ce0 { O 1 bit } noiseSS_89_im_we0 { O 1 bit } noiseSS_89_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_89_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 285 \
    name noiseSS_90_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_90_im \
    op interface \
    ports { noiseSS_90_im_address0 { O 7 vector } noiseSS_90_im_ce0 { O 1 bit } noiseSS_90_im_we0 { O 1 bit } noiseSS_90_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_90_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 286 \
    name noiseSS_91_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_91_im \
    op interface \
    ports { noiseSS_91_im_address0 { O 7 vector } noiseSS_91_im_ce0 { O 1 bit } noiseSS_91_im_we0 { O 1 bit } noiseSS_91_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_91_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 287 \
    name noiseSS_92_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_92_im \
    op interface \
    ports { noiseSS_92_im_address0 { O 7 vector } noiseSS_92_im_ce0 { O 1 bit } noiseSS_92_im_we0 { O 1 bit } noiseSS_92_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_92_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 288 \
    name noiseSS_93_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_93_im \
    op interface \
    ports { noiseSS_93_im_address0 { O 7 vector } noiseSS_93_im_ce0 { O 1 bit } noiseSS_93_im_we0 { O 1 bit } noiseSS_93_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_93_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 289 \
    name noiseSS_94_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_94_im \
    op interface \
    ports { noiseSS_94_im_address0 { O 7 vector } noiseSS_94_im_ce0 { O 1 bit } noiseSS_94_im_we0 { O 1 bit } noiseSS_94_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_94_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 290 \
    name noiseSS_95_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_95_im \
    op interface \
    ports { noiseSS_95_im_address0 { O 7 vector } noiseSS_95_im_ce0 { O 1 bit } noiseSS_95_im_we0 { O 1 bit } noiseSS_95_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_95_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 291 \
    name noiseSS_96_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_96_im \
    op interface \
    ports { noiseSS_96_im_address0 { O 7 vector } noiseSS_96_im_ce0 { O 1 bit } noiseSS_96_im_we0 { O 1 bit } noiseSS_96_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_96_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 292 \
    name noiseSS_97_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_97_im \
    op interface \
    ports { noiseSS_97_im_address0 { O 7 vector } noiseSS_97_im_ce0 { O 1 bit } noiseSS_97_im_we0 { O 1 bit } noiseSS_97_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_97_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 293 \
    name noiseSS_98_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_98_im \
    op interface \
    ports { noiseSS_98_im_address0 { O 7 vector } noiseSS_98_im_ce0 { O 1 bit } noiseSS_98_im_we0 { O 1 bit } noiseSS_98_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_98_im'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 294 \
    name noiseSS_99_im \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename noiseSS_99_im \
    op interface \
    ports { noiseSS_99_im_address0 { O 7 vector } noiseSS_99_im_ce0 { O 1 bit } noiseSS_99_im_we0 { O 1 bit } noiseSS_99_im_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'noiseSS_99_im'"
}
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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


