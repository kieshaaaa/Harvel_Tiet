set SynModuleInfo {
  {SRCNAME gcd MODELNAME gcd RTLNAME gcd IS_TOP 1
    SUBMODULES {
      {MODELNAME gcd_srem_32ns_32ns_32_36_1 RTLNAME gcd_srem_32ns_32ns_32_36_1 BINDTYPE op TYPE srem IMPL auto LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME gcd_control_s_axi RTLNAME gcd_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME gcd_flow_control_loop_pipe RTLNAME gcd_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME gcd_flow_control_loop_pipe_U}
    }
  }
}
