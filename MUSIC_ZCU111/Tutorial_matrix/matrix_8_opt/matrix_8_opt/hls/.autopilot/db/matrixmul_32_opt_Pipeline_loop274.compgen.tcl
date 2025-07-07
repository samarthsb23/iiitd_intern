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
    id 3182 \
    name output_C_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_C_12 \
    op interface \
    ports { output_C_12_address0 { O 5 vector } output_C_12_ce0 { O 1 bit } output_C_12_we0 { O 1 bit } output_C_12_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_C_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3183 \
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
    id 3185 \
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
    id 3187 \
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
    id 3189 \
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
    id 3191 \
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
    id 3193 \
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
    id 3195 \
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
    id 3197 \
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
    id 3199 \
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
    id 3201 \
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
    id 3203 \
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
    id 3205 \
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
    id 3207 \
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
    id 3209 \
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
    id 3211 \
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
    id 3213 \
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
    id 3215 \
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
    id 3217 \
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
    id 3219 \
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
    id 3221 \
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
    id 3223 \
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
    id 3225 \
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
    id 3227 \
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
    id 3229 \
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
    id 3231 \
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
    id 3233 \
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
    id 3235 \
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
    id 3237 \
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
    id 3239 \
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
    id 3241 \
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
    id 3243 \
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
    id 3245 \
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
    id 3184 \
    name p_reload1193 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1193 \
    op interface \
    ports { p_reload1193 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3186 \
    name p_reload1192 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1192 \
    op interface \
    ports { p_reload1192 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3188 \
    name p_reload1191 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1191 \
    op interface \
    ports { p_reload1191 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3190 \
    name p_reload1190 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1190 \
    op interface \
    ports { p_reload1190 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3192 \
    name p_reload1189 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1189 \
    op interface \
    ports { p_reload1189 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3194 \
    name p_reload1188 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1188 \
    op interface \
    ports { p_reload1188 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3196 \
    name p_reload1187 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1187 \
    op interface \
    ports { p_reload1187 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3198 \
    name p_reload1186 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1186 \
    op interface \
    ports { p_reload1186 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3200 \
    name p_reload1185 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1185 \
    op interface \
    ports { p_reload1185 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3202 \
    name p_reload1184 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1184 \
    op interface \
    ports { p_reload1184 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3204 \
    name p_reload1183 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1183 \
    op interface \
    ports { p_reload1183 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3206 \
    name p_reload1182 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1182 \
    op interface \
    ports { p_reload1182 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3208 \
    name p_reload1181 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1181 \
    op interface \
    ports { p_reload1181 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3210 \
    name p_reload1180 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1180 \
    op interface \
    ports { p_reload1180 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3212 \
    name p_reload1179 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1179 \
    op interface \
    ports { p_reload1179 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3214 \
    name p_reload1178 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1178 \
    op interface \
    ports { p_reload1178 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3216 \
    name p_reload1177 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1177 \
    op interface \
    ports { p_reload1177 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3218 \
    name p_reload1176 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1176 \
    op interface \
    ports { p_reload1176 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3220 \
    name p_reload1175 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1175 \
    op interface \
    ports { p_reload1175 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3222 \
    name p_reload1174 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1174 \
    op interface \
    ports { p_reload1174 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3224 \
    name p_reload1173 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1173 \
    op interface \
    ports { p_reload1173 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3226 \
    name p_reload1172 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1172 \
    op interface \
    ports { p_reload1172 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3228 \
    name p_reload1171 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1171 \
    op interface \
    ports { p_reload1171 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3230 \
    name p_reload1170 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1170 \
    op interface \
    ports { p_reload1170 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3232 \
    name p_reload1169 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1169 \
    op interface \
    ports { p_reload1169 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3234 \
    name p_reload1168 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1168 \
    op interface \
    ports { p_reload1168 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3236 \
    name p_reload1167 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1167 \
    op interface \
    ports { p_reload1167 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3238 \
    name p_reload1166 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1166 \
    op interface \
    ports { p_reload1166 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3240 \
    name p_reload1165 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1165 \
    op interface \
    ports { p_reload1165 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3242 \
    name p_reload1164 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1164 \
    op interface \
    ports { p_reload1164 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3244 \
    name p_reload1163 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1163 \
    op interface \
    ports { p_reload1163 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3246 \
    name p_reload1162 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1162 \
    op interface \
    ports { p_reload1162 { I 32 vector } } \
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


