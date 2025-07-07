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
    id 1892 \
    name output_C_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_C_2 \
    op interface \
    ports { output_C_2_address0 { O 5 vector } output_C_2_ce0 { O 1 bit } output_C_2_we0 { O 1 bit } output_C_2_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_C_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1893 \
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
    id 1895 \
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
    id 1897 \
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
    id 1899 \
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
    id 1901 \
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
    id 1903 \
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
    id 1905 \
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
    id 1907 \
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
    id 1909 \
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
    id 1911 \
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
    id 1913 \
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
    id 1915 \
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
    id 1917 \
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
    id 1919 \
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
    id 1921 \
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
    id 1923 \
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
    id 1925 \
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
    id 1927 \
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
    id 1929 \
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
    id 1931 \
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
    id 1933 \
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
    id 1935 \
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
    id 1937 \
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
    id 1939 \
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
    id 1941 \
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
    id 1943 \
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
    id 1945 \
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
    id 1947 \
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
    id 1949 \
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
    id 1951 \
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
    id 1953 \
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
    id 1955 \
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
    id 1894 \
    name input_A_130_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_130_reload \
    op interface \
    ports { input_A_130_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1896 \
    name input_A_131_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_131_reload \
    op interface \
    ports { input_A_131_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1898 \
    name input_A_132_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_132_reload \
    op interface \
    ports { input_A_132_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1900 \
    name input_A_133_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_133_reload \
    op interface \
    ports { input_A_133_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1902 \
    name input_A_134_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_134_reload \
    op interface \
    ports { input_A_134_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1904 \
    name input_A_135_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_135_reload \
    op interface \
    ports { input_A_135_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1906 \
    name input_A_136_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_136_reload \
    op interface \
    ports { input_A_136_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1908 \
    name input_A_137_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_137_reload \
    op interface \
    ports { input_A_137_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1910 \
    name input_A_138_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_138_reload \
    op interface \
    ports { input_A_138_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1912 \
    name input_A_139_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_139_reload \
    op interface \
    ports { input_A_139_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1914 \
    name input_A_140_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_140_reload \
    op interface \
    ports { input_A_140_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1916 \
    name input_A_141_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_141_reload \
    op interface \
    ports { input_A_141_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1918 \
    name input_A_142_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_142_reload \
    op interface \
    ports { input_A_142_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1920 \
    name input_A_143_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_143_reload \
    op interface \
    ports { input_A_143_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1922 \
    name input_A_144_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_144_reload \
    op interface \
    ports { input_A_144_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1924 \
    name input_A_145_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_145_reload \
    op interface \
    ports { input_A_145_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1926 \
    name input_A_146_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_146_reload \
    op interface \
    ports { input_A_146_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1928 \
    name input_A_147_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_147_reload \
    op interface \
    ports { input_A_147_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1930 \
    name input_A_148_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_148_reload \
    op interface \
    ports { input_A_148_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1932 \
    name input_A_149_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_149_reload \
    op interface \
    ports { input_A_149_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1934 \
    name input_A_150_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_150_reload \
    op interface \
    ports { input_A_150_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1936 \
    name input_A_151_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_151_reload \
    op interface \
    ports { input_A_151_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1938 \
    name input_A_152_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_152_reload \
    op interface \
    ports { input_A_152_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1940 \
    name input_A_153_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_153_reload \
    op interface \
    ports { input_A_153_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1942 \
    name input_A_154_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_154_reload \
    op interface \
    ports { input_A_154_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1944 \
    name input_A_155_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_155_reload \
    op interface \
    ports { input_A_155_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1946 \
    name input_A_156_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_156_reload \
    op interface \
    ports { input_A_156_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1948 \
    name input_A_157_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_157_reload \
    op interface \
    ports { input_A_157_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1950 \
    name input_A_158_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_158_reload \
    op interface \
    ports { input_A_158_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1952 \
    name input_A_159_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_159_reload \
    op interface \
    ports { input_A_159_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1954 \
    name input_A_160_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_160_reload \
    op interface \
    ports { input_A_160_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1956 \
    name input_A_161_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_A_161_reload \
    op interface \
    ports { input_A_161_reload { I 32 vector } } \
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


