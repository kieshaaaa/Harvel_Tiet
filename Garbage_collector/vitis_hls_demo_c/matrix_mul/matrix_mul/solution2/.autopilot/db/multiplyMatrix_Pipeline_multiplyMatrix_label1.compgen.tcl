# This script segment is generated automatically by AutoPilot

set id 1
set name multiplyMatrix_add_2ns_2ns_2_2_1
set corename simcore_add
set op add
set stage_num 2
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 2
set in0_signed 0
set in1_width 2
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 2
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {add} IMPL {fabric} LATENCY 1 ALLOW_PRAGMA 1
}


set op add
set corename Adder
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipeaddsub] == "::AESL_LIB_VIRTEX::xil_gen_pipeaddsub"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipeaddsub { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
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
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipeaddsub, check your platform lib"
}
}


set name multiplyMatrix_mul_32s_32s_32_5_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 4 ALLOW_PRAGMA 1
}


set id 11
set name multiplyMatrix_add_32ns_32ns_32_1_1
set corename simcore_add
set op add
set stage_num 1
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set out_width 32
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {add} IMPL {dsp} LATENCY 0 ALLOW_PRAGMA 1
}


set op add
set corename AddSub_DSP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_addsub_dsp] == "::AESL_LIB_VIRTEX::xil_gen_addsub_dsp"} {
eval "::AESL_LIB_VIRTEX::xil_gen_addsub_dsp { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_addsub_dsp, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name gmem_2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_2 \
    op interface \
    ports { m_axi_gmem_2_AWVALID { O 1 bit } m_axi_gmem_2_AWREADY { I 1 bit } m_axi_gmem_2_AWADDR { O 64 vector } m_axi_gmem_2_AWID { O 1 vector } m_axi_gmem_2_AWLEN { O 32 vector } m_axi_gmem_2_AWSIZE { O 3 vector } m_axi_gmem_2_AWBURST { O 2 vector } m_axi_gmem_2_AWLOCK { O 2 vector } m_axi_gmem_2_AWCACHE { O 4 vector } m_axi_gmem_2_AWPROT { O 3 vector } m_axi_gmem_2_AWQOS { O 4 vector } m_axi_gmem_2_AWREGION { O 4 vector } m_axi_gmem_2_AWUSER { O 1 vector } m_axi_gmem_2_WVALID { O 1 bit } m_axi_gmem_2_WREADY { I 1 bit } m_axi_gmem_2_WDATA { O 32 vector } m_axi_gmem_2_WSTRB { O 4 vector } m_axi_gmem_2_WLAST { O 1 bit } m_axi_gmem_2_WID { O 1 vector } m_axi_gmem_2_WUSER { O 1 vector } m_axi_gmem_2_ARVALID { O 1 bit } m_axi_gmem_2_ARREADY { I 1 bit } m_axi_gmem_2_ARADDR { O 64 vector } m_axi_gmem_2_ARID { O 1 vector } m_axi_gmem_2_ARLEN { O 32 vector } m_axi_gmem_2_ARSIZE { O 3 vector } m_axi_gmem_2_ARBURST { O 2 vector } m_axi_gmem_2_ARLOCK { O 2 vector } m_axi_gmem_2_ARCACHE { O 4 vector } m_axi_gmem_2_ARPROT { O 3 vector } m_axi_gmem_2_ARQOS { O 4 vector } m_axi_gmem_2_ARREGION { O 4 vector } m_axi_gmem_2_ARUSER { O 1 vector } m_axi_gmem_2_RVALID { I 1 bit } m_axi_gmem_2_RREADY { O 1 bit } m_axi_gmem_2_RDATA { I 32 vector } m_axi_gmem_2_RLAST { I 1 bit } m_axi_gmem_2_RID { I 1 vector } m_axi_gmem_2_RFIFONUM { I 9 vector } m_axi_gmem_2_RUSER { I 1 vector } m_axi_gmem_2_RRESP { I 2 vector } m_axi_gmem_2_BVALID { I 1 bit } m_axi_gmem_2_BREADY { O 1 bit } m_axi_gmem_2_BRESP { I 2 vector } m_axi_gmem_2_BID { I 1 vector } m_axi_gmem_2_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name gmem_1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_1 \
    op interface \
    ports { m_axi_gmem_1_AWVALID { O 1 bit } m_axi_gmem_1_AWREADY { I 1 bit } m_axi_gmem_1_AWADDR { O 64 vector } m_axi_gmem_1_AWID { O 1 vector } m_axi_gmem_1_AWLEN { O 32 vector } m_axi_gmem_1_AWSIZE { O 3 vector } m_axi_gmem_1_AWBURST { O 2 vector } m_axi_gmem_1_AWLOCK { O 2 vector } m_axi_gmem_1_AWCACHE { O 4 vector } m_axi_gmem_1_AWPROT { O 3 vector } m_axi_gmem_1_AWQOS { O 4 vector } m_axi_gmem_1_AWREGION { O 4 vector } m_axi_gmem_1_AWUSER { O 1 vector } m_axi_gmem_1_WVALID { O 1 bit } m_axi_gmem_1_WREADY { I 1 bit } m_axi_gmem_1_WDATA { O 32 vector } m_axi_gmem_1_WSTRB { O 4 vector } m_axi_gmem_1_WLAST { O 1 bit } m_axi_gmem_1_WID { O 1 vector } m_axi_gmem_1_WUSER { O 1 vector } m_axi_gmem_1_ARVALID { O 1 bit } m_axi_gmem_1_ARREADY { I 1 bit } m_axi_gmem_1_ARADDR { O 64 vector } m_axi_gmem_1_ARID { O 1 vector } m_axi_gmem_1_ARLEN { O 32 vector } m_axi_gmem_1_ARSIZE { O 3 vector } m_axi_gmem_1_ARBURST { O 2 vector } m_axi_gmem_1_ARLOCK { O 2 vector } m_axi_gmem_1_ARCACHE { O 4 vector } m_axi_gmem_1_ARPROT { O 3 vector } m_axi_gmem_1_ARQOS { O 4 vector } m_axi_gmem_1_ARREGION { O 4 vector } m_axi_gmem_1_ARUSER { O 1 vector } m_axi_gmem_1_RVALID { I 1 bit } m_axi_gmem_1_RREADY { O 1 bit } m_axi_gmem_1_RDATA { I 32 vector } m_axi_gmem_1_RLAST { I 1 bit } m_axi_gmem_1_RID { I 1 vector } m_axi_gmem_1_RFIFONUM { I 9 vector } m_axi_gmem_1_RUSER { I 1 vector } m_axi_gmem_1_RRESP { I 2 vector } m_axi_gmem_1_BVALID { I 1 bit } m_axi_gmem_1_BREADY { O 1 bit } m_axi_gmem_1_BRESP { I 2 vector } m_axi_gmem_1_BID { I 1 vector } m_axi_gmem_1_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name gmem_0 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_0 \
    op interface \
    ports { m_axi_gmem_0_AWVALID { O 1 bit } m_axi_gmem_0_AWREADY { I 1 bit } m_axi_gmem_0_AWADDR { O 64 vector } m_axi_gmem_0_AWID { O 1 vector } m_axi_gmem_0_AWLEN { O 32 vector } m_axi_gmem_0_AWSIZE { O 3 vector } m_axi_gmem_0_AWBURST { O 2 vector } m_axi_gmem_0_AWLOCK { O 2 vector } m_axi_gmem_0_AWCACHE { O 4 vector } m_axi_gmem_0_AWPROT { O 3 vector } m_axi_gmem_0_AWQOS { O 4 vector } m_axi_gmem_0_AWREGION { O 4 vector } m_axi_gmem_0_AWUSER { O 1 vector } m_axi_gmem_0_WVALID { O 1 bit } m_axi_gmem_0_WREADY { I 1 bit } m_axi_gmem_0_WDATA { O 32 vector } m_axi_gmem_0_WSTRB { O 4 vector } m_axi_gmem_0_WLAST { O 1 bit } m_axi_gmem_0_WID { O 1 vector } m_axi_gmem_0_WUSER { O 1 vector } m_axi_gmem_0_ARVALID { O 1 bit } m_axi_gmem_0_ARREADY { I 1 bit } m_axi_gmem_0_ARADDR { O 64 vector } m_axi_gmem_0_ARID { O 1 vector } m_axi_gmem_0_ARLEN { O 32 vector } m_axi_gmem_0_ARSIZE { O 3 vector } m_axi_gmem_0_ARBURST { O 2 vector } m_axi_gmem_0_ARLOCK { O 2 vector } m_axi_gmem_0_ARCACHE { O 4 vector } m_axi_gmem_0_ARPROT { O 3 vector } m_axi_gmem_0_ARQOS { O 4 vector } m_axi_gmem_0_ARREGION { O 4 vector } m_axi_gmem_0_ARUSER { O 1 vector } m_axi_gmem_0_RVALID { I 1 bit } m_axi_gmem_0_RREADY { O 1 bit } m_axi_gmem_0_RDATA { I 32 vector } m_axi_gmem_0_RLAST { I 1 bit } m_axi_gmem_0_RID { I 1 vector } m_axi_gmem_0_RFIFONUM { I 9 vector } m_axi_gmem_0_RUSER { I 1 vector } m_axi_gmem_0_RRESP { I 2 vector } m_axi_gmem_0_BVALID { I 1 bit } m_axi_gmem_0_BREADY { O 1 bit } m_axi_gmem_0_BRESP { I 2 vector } m_axi_gmem_0_BID { I 1 vector } m_axi_gmem_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name sext_ln10_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln10_2 \
    op interface \
    ports { sext_ln10_2 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name sext_ln10_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln10_1 \
    op interface \
    ports { sext_ln10_1 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name sext_ln10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln10 \
    op interface \
    ports { sext_ln10 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name sext_ln10_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln10_3 \
    op interface \
    ports { sext_ln10_3 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name sext_ln10_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln10_4 \
    op interface \
    ports { sext_ln10_4 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name sext_ln10_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln10_5 \
    op interface \
    ports { sext_ln10_5 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name gmem_load_cast3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_load_cast3 \
    op interface \
    ports { gmem_load_cast3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name p_cast8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast8 \
    op interface \
    ports { p_cast8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name p_cast3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast3 \
    op interface \
    ports { p_cast3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name p_cast4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast4 \
    op interface \
    ports { p_cast4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name p_cast1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast1 \
    op interface \
    ports { p_cast1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name p_cast5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast5 \
    op interface \
    ports { p_cast5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name p_cast6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast6 \
    op interface \
    ports { p_cast6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name p_cast2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast2 \
    op interface \
    ports { p_cast2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name p_cast7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast7 \
    op interface \
    ports { p_cast7 { I 32 vector } } \
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
set InstName multiplyMatrix_flow_control_loop_pipe_sequential_init_U
set CompName multiplyMatrix_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix multiplyMatrix_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


