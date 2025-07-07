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
    id 5504 \
    name output_C_30 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_C_30 \
    op interface \
    ports { output_C_30_address0 { O 5 vector } output_C_30_ce0 { O 1 bit } output_C_30_we0 { O 1 bit } output_C_30_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_C_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5505 \
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
    id 5507 \
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
    id 5509 \
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
    id 5511 \
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
    id 5513 \
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
    id 5515 \
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
    id 5517 \
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
    id 5519 \
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
    id 5521 \
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
    id 5523 \
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
    id 5525 \
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
    id 5527 \
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
    id 5529 \
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
    id 5531 \
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
    id 5533 \
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
    id 5535 \
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
    id 5537 \
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
    id 5539 \
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
    id 5541 \
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
    id 5543 \
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
    id 5545 \
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
    id 5547 \
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
    id 5549 \
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
    id 5551 \
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
    id 5553 \
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
    id 5555 \
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
    id 5557 \
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
    id 5559 \
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
    id 5561 \
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
    id 5563 \
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
    id 5565 \
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
    id 5567 \
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
    id 5506 \
    name input_A_478_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_478_reload \
    op interface \
    ports { input_A_478_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5508 \
    name input_A_479_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_479_reload \
    op interface \
    ports { input_A_479_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5510 \
    name input_A_480_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_480_reload \
    op interface \
    ports { input_A_480_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5512 \
    name input_A_481_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_481_reload \
    op interface \
    ports { input_A_481_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5514 \
    name input_A_482_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_482_reload \
    op interface \
    ports { input_A_482_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5516 \
    name input_A_483_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_483_reload \
    op interface \
    ports { input_A_483_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5518 \
    name input_A_484_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_484_reload \
    op interface \
    ports { input_A_484_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5520 \
    name input_A_485_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_485_reload \
    op interface \
    ports { input_A_485_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5522 \
    name input_A_486_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_486_reload \
    op interface \
    ports { input_A_486_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5524 \
    name input_A_487_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_487_reload \
    op interface \
    ports { input_A_487_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5526 \
    name input_A_488_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_488_reload \
    op interface \
    ports { input_A_488_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5528 \
    name input_A_489_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_489_reload \
    op interface \
    ports { input_A_489_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5530 \
    name input_A_490_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_490_reload \
    op interface \
    ports { input_A_490_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5532 \
    name input_A_491_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_491_reload \
    op interface \
    ports { input_A_491_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5534 \
    name input_A_492_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_492_reload \
    op interface \
    ports { input_A_492_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5536 \
    name input_A_493_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_493_reload \
    op interface \
    ports { input_A_493_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5538 \
    name input_A_494_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_494_reload \
    op interface \
    ports { input_A_494_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5540 \
    name input_A_495_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_495_reload \
    op interface \
    ports { input_A_495_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5542 \
    name input_A_496_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_496_reload \
    op interface \
    ports { input_A_496_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5544 \
    name input_A_497_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_497_reload \
    op interface \
    ports { input_A_497_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5546 \
    name input_A_498_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_498_reload \
    op interface \
    ports { input_A_498_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5548 \
    name input_A_499_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_499_reload \
    op interface \
    ports { input_A_499_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5550 \
    name input_A_500_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_500_reload \
    op interface \
    ports { input_A_500_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5552 \
    name input_A_501_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_501_reload \
    op interface \
    ports { input_A_501_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5554 \
    name input_A_502_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_502_reload \
    op interface \
    ports { input_A_502_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5556 \
    name input_A_503_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_503_reload \
    op interface \
    ports { input_A_503_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5558 \
    name input_A_504_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_504_reload \
    op interface \
    ports { input_A_504_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5560 \
    name input_A_505_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_505_reload \
    op interface \
    ports { input_A_505_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5562 \
    name input_A_506_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_506_reload \
    op interface \
    ports { input_A_506_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5564 \
    name input_A_507_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_507_reload \
    op interface \
    ports { input_A_507_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5566 \
    name input_A_508_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_508_reload \
    op interface \
    ports { input_A_508_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5568 \
    name input_A_509_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_509_reload \
    op interface \
    ports { input_A_509_reload { I 32 vector } } \
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


