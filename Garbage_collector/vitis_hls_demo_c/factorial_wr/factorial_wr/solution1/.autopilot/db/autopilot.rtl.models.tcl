set SynModuleInfo {
  {SRCNAME factorial MODELNAME factorial RTLNAME factorial IS_TOP 1
    SUBMODULES {
      {MODELNAME factorial_mul_32s_32s_32_1_1 RTLNAME factorial_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME factorial_flow_control_loop_pipe RTLNAME factorial_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME factorial_flow_control_loop_pipe_U}
    }
  }
}
