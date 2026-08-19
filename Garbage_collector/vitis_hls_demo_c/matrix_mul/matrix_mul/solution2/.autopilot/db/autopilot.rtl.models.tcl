set SynModuleInfo {
  {SRCNAME multiplyMatrix_Pipeline_multiplyMatrix_label1 MODELNAME multiplyMatrix_Pipeline_multiplyMatrix_label1 RTLNAME multiplyMatrix_multiplyMatrix_Pipeline_multiplyMatrix_label1
    SUBMODULES {
      {MODELNAME multiplyMatrix_add_2ns_2ns_2_2_1 RTLNAME multiplyMatrix_add_2ns_2ns_2_2_1 BINDTYPE op TYPE add IMPL fabric LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME multiplyMatrix_mul_32s_32s_32_5_1 RTLNAME multiplyMatrix_mul_32s_32s_32_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME multiplyMatrix_add_32ns_32ns_32_1_1 RTLNAME multiplyMatrix_add_32ns_32ns_32_1_1 BINDTYPE op TYPE add IMPL dsp LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME multiplyMatrix_flow_control_loop_pipe_sequential_init RTLNAME multiplyMatrix_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME multiplyMatrix_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME multiplyMatrix MODELNAME multiplyMatrix RTLNAME multiplyMatrix IS_TOP 1
    SUBMODULES {
      {MODELNAME multiplyMatrix_gmem_0_m_axi RTLNAME multiplyMatrix_gmem_0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME multiplyMatrix_gmem_1_m_axi RTLNAME multiplyMatrix_gmem_1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME multiplyMatrix_gmem_2_m_axi RTLNAME multiplyMatrix_gmem_2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME multiplyMatrix_gmem_m_axi RTLNAME multiplyMatrix_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME multiplyMatrix_control_s_axi RTLNAME multiplyMatrix_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
