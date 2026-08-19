// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __multiplyMatrix_add_2ns_2ns_2_2_1__HH__
#define __multiplyMatrix_add_2ns_2ns_2_2_1__HH__
#include "multiplyMatrix_add_2ns_2ns_2_2_1_Adder_0.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(multiplyMatrix_add_2ns_2ns_2_2_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    multiplyMatrix_add_2ns_2ns_2_2_1_Adder_0 multiplyMatrix_add_2ns_2ns_2_2_1_Adder_0_U;

    SC_CTOR(multiplyMatrix_add_2ns_2ns_2_2_1):  multiplyMatrix_add_2ns_2ns_2_2_1_Adder_0_U ("multiplyMatrix_add_2ns_2ns_2_2_1_Adder_0_U") {
        multiplyMatrix_add_2ns_2ns_2_2_1_Adder_0_U.clk(clk);
        multiplyMatrix_add_2ns_2ns_2_2_1_Adder_0_U.reset(reset);
        multiplyMatrix_add_2ns_2ns_2_2_1_Adder_0_U.ce(ce);
        multiplyMatrix_add_2ns_2ns_2_2_1_Adder_0_U.a(din0);
        multiplyMatrix_add_2ns_2ns_2_2_1_Adder_0_U.b(din1);
        multiplyMatrix_add_2ns_2ns_2_2_1_Adder_0_U.s(dout);

    }

};

#endif //
