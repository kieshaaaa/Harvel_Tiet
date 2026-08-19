# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1 \
    name arr_0 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_arr_0 \
    op interface \
    ports { arr_0_i { I 32 vector } arr_0_o { O 32 vector } arr_0_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name arr_1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_arr_1 \
    op interface \
    ports { arr_1_i { I 32 vector } arr_1_o { O 32 vector } arr_1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name arr_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr_2 \
    op interface \
    ports { arr_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name arr_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arr_3 \
    op interface \
    ports { arr_3 { O 32 vector } arr_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name arr2_0 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_arr2_0 \
    op interface \
    ports { arr2_0_i { I 32 vector } arr2_0_o { O 32 vector } arr2_0_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name arr2_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arr2_1 \
    op interface \
    ports { arr2_1 { O 32 vector } arr2_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name arr2_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr2_2 \
    op interface \
    ports { arr2_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name arr2_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr2_4 \
    op interface \
    ports { arr2_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name arr3_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arr3_0 \
    op interface \
    ports { arr3_0 { O 32 vector } arr3_0_ap_vld { O 1 bit } } \
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



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


