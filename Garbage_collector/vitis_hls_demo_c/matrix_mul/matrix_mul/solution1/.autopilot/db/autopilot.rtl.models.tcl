set SynModuleInfo {
  {SRCNAME multiplyMatrix MODELNAME multiplyMatrix RTLNAME multiplyMatrix IS_TOP 1
    SUBMODULES {
      {MODELNAME multiplyMatrix_mul_32s_32s_32_2_1 RTLNAME multiplyMatrix_mul_32s_32s_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME multiplyMatrix_gmem_m_axi RTLNAME multiplyMatrix_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME multiplyMatrix_control_s_axi RTLNAME multiplyMatrix_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
