# This script segment is generated automatically by AutoPilot

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
    id 3956 \
    name output_C_18 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_C_18 \
    op interface \
    ports { output_C_18_address0 { O 5 vector } output_C_18_ce0 { O 1 bit } output_C_18_we0 { O 1 bit } output_C_18_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_C_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3957 \
    name input_B \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_B \
    op interface \
    ports { input_B_address0 { O 5 vector } input_B_ce0 { O 1 bit } input_B_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_B'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3959 \
    name input_B_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_B_1 \
    op interface \
    ports { input_B_1_address0 { O 5 vector } input_B_1_ce0 { O 1 bit } input_B_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_B_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3961 \
    name input_B_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_B_2 \
    op interface \
    ports { input_B_2_address0 { O 5 vector } input_B_2_ce0 { O 1 bit } input_B_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_B_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3963 \
    name input_B_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_B_3 \
    op interface \
    ports { input_B_3_address0 { O 5 vector } input_B_3_ce0 { O 1 bit } input_B_3_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_B_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3965 \
    name input_B_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_B_4 \
    op interface \
    ports { input_B_4_address0 { O 5 vector } input_B_4_ce0 { O 1 bit } input_B_4_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_B_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3967 \
    name input_B_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_B_5 \
    op interface \
    ports { input_B_5_address0 { O 5 vector } input_B_5_ce0 { O 1 bit } input_B_5_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_B_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3969 \
    name input_B_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_B_6 \
    op interface \
    ports { input_B_6_address0 { O 5 vector } input_B_6_ce0 { O 1 bit } input_B_6_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_B_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3971 \
    name input_B_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_B_7 \
    op interface \
    ports { input_B_7_address0 { O 5 vector } input_B_7_ce0 { O 1 bit } input_B_7_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_B_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3973 \
    name input_B_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_B_8 \
    op interface \
    ports { input_B_8_address0 { O 5 vector } input_B_8_ce0 { O 1 bit } input_B_8_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_B_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3975 \
    name input_B_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_B_9 \
    op interface \
    ports { input_B_9_address0 { O 5 vector } input_B_9_ce0 { O 1 bit } input_B_9_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_B_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3977 \
    name input_B_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_B_10 \
    op interface \
    ports { input_B_10_address0 { O 5 vector } input_B_10_ce0 { O 1 bit } input_B_10_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_B_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3979 \
    name input_B_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_B_11 \
    op interface \
    ports { input_B_11_address0 { O 5 vector } input_B_11_ce0 { O 1 bit } input_B_11_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_B_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3981 \
    name input_B_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_B_12 \
    op interface \
    ports { input_B_12_address0 { O 5 vector } input_B_12_ce0 { O 1 bit } input_B_12_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_B_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3983 \
    name input_B_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_B_13 \
    op interface \
    ports { input_B_13_address0 { O 5 vector } input_B_13_ce0 { O 1 bit } input_B_13_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_B_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3985 \
    name input_B_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_B_14 \
    op interface \
    ports { input_B_14_address0 { O 5 vector } input_B_14_ce0 { O 1 bit } input_B_14_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_B_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3987 \
    name input_B_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_B_15 \
    op interface \
    ports { input_B_15_address0 { O 5 vector } input_B_15_ce0 { O 1 bit } input_B_15_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_B_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3989 \
    name input_B_16 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_B_16 \
    op interface \
    ports { input_B_16_address0 { O 5 vector } input_B_16_ce0 { O 1 bit } input_B_16_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_B_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3991 \
    name input_B_17 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_B_17 \
    op interface \
    ports { input_B_17_address0 { O 5 vector } input_B_17_ce0 { O 1 bit } input_B_17_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_B_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3993 \
    name input_B_18 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_B_18 \
    op interface \
    ports { input_B_18_address0 { O 5 vector } input_B_18_ce0 { O 1 bit } input_B_18_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_B_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3995 \
    name input_B_19 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_B_19 \
    op interface \
    ports { input_B_19_address0 { O 5 vector } input_B_19_ce0 { O 1 bit } input_B_19_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_B_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3997 \
    name input_B_20 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_B_20 \
    op interface \
    ports { input_B_20_address0 { O 5 vector } input_B_20_ce0 { O 1 bit } input_B_20_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_B_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3999 \
    name input_B_21 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_B_21 \
    op interface \
    ports { input_B_21_address0 { O 5 vector } input_B_21_ce0 { O 1 bit } input_B_21_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_B_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4001 \
    name input_B_22 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_B_22 \
    op interface \
    ports { input_B_22_address0 { O 5 vector } input_B_22_ce0 { O 1 bit } input_B_22_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_B_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4003 \
    name input_B_23 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_B_23 \
    op interface \
    ports { input_B_23_address0 { O 5 vector } input_B_23_ce0 { O 1 bit } input_B_23_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_B_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4005 \
    name input_B_24 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_B_24 \
    op interface \
    ports { input_B_24_address0 { O 5 vector } input_B_24_ce0 { O 1 bit } input_B_24_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_B_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4007 \
    name input_B_25 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_B_25 \
    op interface \
    ports { input_B_25_address0 { O 5 vector } input_B_25_ce0 { O 1 bit } input_B_25_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_B_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4009 \
    name input_B_26 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_B_26 \
    op interface \
    ports { input_B_26_address0 { O 5 vector } input_B_26_ce0 { O 1 bit } input_B_26_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_B_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4011 \
    name input_B_27 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_B_27 \
    op interface \
    ports { input_B_27_address0 { O 5 vector } input_B_27_ce0 { O 1 bit } input_B_27_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_B_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4013 \
    name input_B_28 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_B_28 \
    op interface \
    ports { input_B_28_address0 { O 5 vector } input_B_28_ce0 { O 1 bit } input_B_28_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_B_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4015 \
    name input_B_29 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_B_29 \
    op interface \
    ports { input_B_29_address0 { O 5 vector } input_B_29_ce0 { O 1 bit } input_B_29_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_B_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4017 \
    name input_B_30 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_B_30 \
    op interface \
    ports { input_B_30_address0 { O 5 vector } input_B_30_ce0 { O 1 bit } input_B_30_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_B_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4019 \
    name input_B_31 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_B_31 \
    op interface \
    ports { input_B_31_address0 { O 5 vector } input_B_31_ce0 { O 1 bit } input_B_31_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_B_31'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3958 \
    name p_reload1583 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1583 \
    op interface \
    ports { p_reload1583 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3960 \
    name p_reload1582 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1582 \
    op interface \
    ports { p_reload1582 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3962 \
    name p_reload1581 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1581 \
    op interface \
    ports { p_reload1581 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3964 \
    name p_reload1580 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1580 \
    op interface \
    ports { p_reload1580 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3966 \
    name p_reload1579 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1579 \
    op interface \
    ports { p_reload1579 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3968 \
    name p_reload1578 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1578 \
    op interface \
    ports { p_reload1578 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3970 \
    name p_reload1577 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1577 \
    op interface \
    ports { p_reload1577 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3972 \
    name p_reload1576 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1576 \
    op interface \
    ports { p_reload1576 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3974 \
    name p_reload1575 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1575 \
    op interface \
    ports { p_reload1575 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3976 \
    name p_reload1574 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1574 \
    op interface \
    ports { p_reload1574 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3978 \
    name p_reload1573 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1573 \
    op interface \
    ports { p_reload1573 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3980 \
    name p_reload1572 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1572 \
    op interface \
    ports { p_reload1572 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3982 \
    name p_reload1571 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1571 \
    op interface \
    ports { p_reload1571 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3984 \
    name p_reload1570 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1570 \
    op interface \
    ports { p_reload1570 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3986 \
    name p_reload1569 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1569 \
    op interface \
    ports { p_reload1569 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3988 \
    name p_reload1568 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1568 \
    op interface \
    ports { p_reload1568 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3990 \
    name p_reload1567 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1567 \
    op interface \
    ports { p_reload1567 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3992 \
    name p_reload1566 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1566 \
    op interface \
    ports { p_reload1566 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3994 \
    name p_reload1565 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1565 \
    op interface \
    ports { p_reload1565 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3996 \
    name p_reload1564 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1564 \
    op interface \
    ports { p_reload1564 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3998 \
    name p_reload1563 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1563 \
    op interface \
    ports { p_reload1563 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4000 \
    name p_reload1562 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1562 \
    op interface \
    ports { p_reload1562 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4002 \
    name p_reload1561 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1561 \
    op interface \
    ports { p_reload1561 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4004 \
    name p_reload1560 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1560 \
    op interface \
    ports { p_reload1560 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4006 \
    name p_reload1559 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1559 \
    op interface \
    ports { p_reload1559 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4008 \
    name p_reload1558 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1558 \
    op interface \
    ports { p_reload1558 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4010 \
    name p_reload1557 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1557 \
    op interface \
    ports { p_reload1557 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4012 \
    name p_reload1556 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1556 \
    op interface \
    ports { p_reload1556 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4014 \
    name p_reload1555 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1555 \
    op interface \
    ports { p_reload1555 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4016 \
    name p_reload1554 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1554 \
    op interface \
    ports { p_reload1554 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4018 \
    name p_reload1553 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1553 \
    op interface \
    ports { p_reload1553 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4020 \
    name p_reload1552 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1552 \
    op interface \
    ports { p_reload1552 { I 32 vector } } \
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


