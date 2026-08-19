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
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_arr_2 \
    op interface \
    ports { arr_2_i { I 32 vector } arr_2_o { O 32 vector } arr_2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name arr_3 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_arr_3 \
    op interface \
    ports { arr_3_i { I 32 vector } arr_3_o { O 32 vector } arr_3_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name arr_4 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_arr_4 \
    op interface \
    ports { arr_4_i { I 32 vector } arr_4_o { O 32 vector } arr_4_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name arr_5 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_arr_5 \
    op interface \
    ports { arr_5_i { I 32 vector } arr_5_o { O 32 vector } arr_5_o_ap_vld { O 1 bit } } \
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


