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
    id 3569 \
    name output_C_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_C_15 \
    op interface \
    ports { output_C_15_address0 { O 5 vector } output_C_15_ce0 { O 1 bit } output_C_15_we0 { O 1 bit } output_C_15_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_C_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3570 \
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
    id 3572 \
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
    id 3574 \
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
    id 3576 \
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
    id 3578 \
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
    id 3580 \
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
    id 3582 \
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
    id 3584 \
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
    id 3586 \
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
    id 3588 \
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
    id 3590 \
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
    id 3592 \
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
    id 3594 \
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
    id 3596 \
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
    id 3598 \
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
    id 3600 \
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
    id 3602 \
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
    id 3604 \
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
    id 3606 \
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
    id 3608 \
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
    id 3610 \
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
    id 3612 \
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
    id 3614 \
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
    id 3616 \
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
    id 3618 \
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
    id 3620 \
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
    id 3622 \
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
    id 3624 \
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
    id 3626 \
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
    id 3628 \
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
    id 3630 \
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
    id 3632 \
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
    id 3571 \
    name p_reload1388 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1388 \
    op interface \
    ports { p_reload1388 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3573 \
    name p_reload1387 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1387 \
    op interface \
    ports { p_reload1387 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3575 \
    name p_reload1386 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1386 \
    op interface \
    ports { p_reload1386 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3577 \
    name p_reload1385 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1385 \
    op interface \
    ports { p_reload1385 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3579 \
    name p_reload1384 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1384 \
    op interface \
    ports { p_reload1384 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3581 \
    name p_reload1383 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1383 \
    op interface \
    ports { p_reload1383 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3583 \
    name p_reload1382 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1382 \
    op interface \
    ports { p_reload1382 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3585 \
    name p_reload1381 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1381 \
    op interface \
    ports { p_reload1381 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3587 \
    name p_reload1380 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1380 \
    op interface \
    ports { p_reload1380 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3589 \
    name p_reload1379 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1379 \
    op interface \
    ports { p_reload1379 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3591 \
    name p_reload1378 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1378 \
    op interface \
    ports { p_reload1378 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3593 \
    name p_reload1377 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1377 \
    op interface \
    ports { p_reload1377 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3595 \
    name p_reload1376 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1376 \
    op interface \
    ports { p_reload1376 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3597 \
    name p_reload1375 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1375 \
    op interface \
    ports { p_reload1375 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3599 \
    name p_reload1374 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1374 \
    op interface \
    ports { p_reload1374 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3601 \
    name p_reload1373 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1373 \
    op interface \
    ports { p_reload1373 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3603 \
    name p_reload1372 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1372 \
    op interface \
    ports { p_reload1372 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3605 \
    name p_reload1371 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1371 \
    op interface \
    ports { p_reload1371 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3607 \
    name p_reload1370 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1370 \
    op interface \
    ports { p_reload1370 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3609 \
    name p_reload1369 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1369 \
    op interface \
    ports { p_reload1369 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3611 \
    name p_reload1368 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1368 \
    op interface \
    ports { p_reload1368 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3613 \
    name p_reload1367 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1367 \
    op interface \
    ports { p_reload1367 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3615 \
    name p_reload1366 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1366 \
    op interface \
    ports { p_reload1366 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3617 \
    name p_reload1365 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1365 \
    op interface \
    ports { p_reload1365 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3619 \
    name p_reload1364 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1364 \
    op interface \
    ports { p_reload1364 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3621 \
    name p_reload1363 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1363 \
    op interface \
    ports { p_reload1363 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3623 \
    name p_reload1362 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1362 \
    op interface \
    ports { p_reload1362 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3625 \
    name p_reload1361 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1361 \
    op interface \
    ports { p_reload1361 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3627 \
    name p_reload1360 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1360 \
    op interface \
    ports { p_reload1360 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3629 \
    name p_reload1359 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1359 \
    op interface \
    ports { p_reload1359 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3631 \
    name p_reload1358 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1358 \
    op interface \
    ports { p_reload1358 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3633 \
    name p_reload1357 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1357 \
    op interface \
    ports { p_reload1357 { I 32 vector } } \
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


