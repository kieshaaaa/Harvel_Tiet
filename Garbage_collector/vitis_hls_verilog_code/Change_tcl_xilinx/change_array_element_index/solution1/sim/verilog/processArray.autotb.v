// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      processArray
`define AUTOTB_DUT_INST AESL_inst_processArray
`define AUTOTB_TOP      apatb_processArray_top
`define AUTOTB_LAT_RESULT_FILE "processArray.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "processArray.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_processArray_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_DEPTH_gmem_0 1
`define AESL_DEPTH_gmem_1 1
`define AESL_DEPTH_gmem_2 1
`define AESL_DEPTH_gmem_3 1
`define AESL_DEPTH_gmem_4 1
`define AESL_DEPTH_gmem_5 1
`define AESL_DEPTH_arr_0 1
`define AESL_DEPTH_arr_1 1
`define AESL_DEPTH_arr_2 1
`define AESL_DEPTH_arr_3 1
`define AESL_DEPTH_arr_4 1
`define AESL_DEPTH_arr_5 1
`define AUTOTB_TVIN_gmem_0  "../tv/cdatafile/c.processArray.autotvin_gmem_0.dat"
`define AUTOTB_TVIN_gmem_1  "../tv/cdatafile/c.processArray.autotvin_gmem_1.dat"
`define AUTOTB_TVIN_gmem_2  "../tv/cdatafile/c.processArray.autotvin_gmem_2.dat"
`define AUTOTB_TVIN_gmem_3  "../tv/cdatafile/c.processArray.autotvin_gmem_3.dat"
`define AUTOTB_TVIN_gmem_4  "../tv/cdatafile/c.processArray.autotvin_gmem_4.dat"
`define AUTOTB_TVIN_gmem_5  "../tv/cdatafile/c.processArray.autotvin_gmem_5.dat"
`define AUTOTB_TVIN_arr_0  "../tv/cdatafile/c.processArray.autotvin_arr_0.dat"
`define AUTOTB_TVIN_arr_1  "../tv/cdatafile/c.processArray.autotvin_arr_1.dat"
`define AUTOTB_TVIN_arr_2  "../tv/cdatafile/c.processArray.autotvin_arr_2.dat"
`define AUTOTB_TVIN_arr_3  "../tv/cdatafile/c.processArray.autotvin_arr_3.dat"
`define AUTOTB_TVIN_arr_4  "../tv/cdatafile/c.processArray.autotvin_arr_4.dat"
`define AUTOTB_TVIN_arr_5  "../tv/cdatafile/c.processArray.autotvin_arr_5.dat"
`define AUTOTB_TVIN_gmem_0_out_wrapc  "../tv/rtldatafile/rtl.processArray.autotvin_gmem_0.dat"
`define AUTOTB_TVIN_gmem_1_out_wrapc  "../tv/rtldatafile/rtl.processArray.autotvin_gmem_1.dat"
`define AUTOTB_TVIN_gmem_2_out_wrapc  "../tv/rtldatafile/rtl.processArray.autotvin_gmem_2.dat"
`define AUTOTB_TVIN_gmem_3_out_wrapc  "../tv/rtldatafile/rtl.processArray.autotvin_gmem_3.dat"
`define AUTOTB_TVIN_gmem_4_out_wrapc  "../tv/rtldatafile/rtl.processArray.autotvin_gmem_4.dat"
`define AUTOTB_TVIN_gmem_5_out_wrapc  "../tv/rtldatafile/rtl.processArray.autotvin_gmem_5.dat"
`define AUTOTB_TVIN_arr_0_out_wrapc  "../tv/rtldatafile/rtl.processArray.autotvin_arr_0.dat"
`define AUTOTB_TVIN_arr_1_out_wrapc  "../tv/rtldatafile/rtl.processArray.autotvin_arr_1.dat"
`define AUTOTB_TVIN_arr_2_out_wrapc  "../tv/rtldatafile/rtl.processArray.autotvin_arr_2.dat"
`define AUTOTB_TVIN_arr_3_out_wrapc  "../tv/rtldatafile/rtl.processArray.autotvin_arr_3.dat"
`define AUTOTB_TVIN_arr_4_out_wrapc  "../tv/rtldatafile/rtl.processArray.autotvin_arr_4.dat"
`define AUTOTB_TVIN_arr_5_out_wrapc  "../tv/rtldatafile/rtl.processArray.autotvin_arr_5.dat"
`define AUTOTB_TVOUT_gmem_0  "../tv/cdatafile/c.processArray.autotvout_gmem_0.dat"
`define AUTOTB_TVOUT_gmem_1  "../tv/cdatafile/c.processArray.autotvout_gmem_1.dat"
`define AUTOTB_TVOUT_gmem_2  "../tv/cdatafile/c.processArray.autotvout_gmem_2.dat"
`define AUTOTB_TVOUT_gmem_3  "../tv/cdatafile/c.processArray.autotvout_gmem_3.dat"
`define AUTOTB_TVOUT_gmem_4  "../tv/cdatafile/c.processArray.autotvout_gmem_4.dat"
`define AUTOTB_TVOUT_gmem_5  "../tv/cdatafile/c.processArray.autotvout_gmem_5.dat"
`define AUTOTB_TVOUT_gmem_0_out_wrapc  "../tv/rtldatafile/rtl.processArray.autotvout_gmem_0.dat"
`define AUTOTB_TVOUT_gmem_1_out_wrapc  "../tv/rtldatafile/rtl.processArray.autotvout_gmem_1.dat"
`define AUTOTB_TVOUT_gmem_2_out_wrapc  "../tv/rtldatafile/rtl.processArray.autotvout_gmem_2.dat"
`define AUTOTB_TVOUT_gmem_3_out_wrapc  "../tv/rtldatafile/rtl.processArray.autotvout_gmem_3.dat"
`define AUTOTB_TVOUT_gmem_4_out_wrapc  "../tv/rtldatafile/rtl.processArray.autotvout_gmem_4.dat"
`define AUTOTB_TVOUT_gmem_5_out_wrapc  "../tv/rtldatafile/rtl.processArray.autotvout_gmem_5.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 15;
parameter LENGTH_arr_0 = 1;
parameter LENGTH_arr_1 = 1;
parameter LENGTH_arr_2 = 1;
parameter LENGTH_arr_3 = 1;
parameter LENGTH_arr_4 = 1;
parameter LENGTH_arr_5 = 1;
parameter LENGTH_gmem_0 = 1;
parameter LENGTH_gmem_1 = 1;
parameter LENGTH_gmem_2 = 1;
parameter LENGTH_gmem_3 = 1;
parameter LENGTH_gmem_4 = 1;
parameter LENGTH_gmem_5 = 1;

task read_token;
    input integer fp;
    output reg [191 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg dut_rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire [6 : 0] control_AWADDR;
wire  control_AWVALID;
wire  control_AWREADY;
wire  control_WVALID;
wire  control_WREADY;
wire [31 : 0] control_WDATA;
wire [3 : 0] control_WSTRB;
wire [6 : 0] control_ARADDR;
wire  control_ARVALID;
wire  control_ARREADY;
wire  control_RVALID;
wire  control_RREADY;
wire [31 : 0] control_RDATA;
wire [1 : 0] control_RRESP;
wire  control_BVALID;
wire  control_BREADY;
wire [1 : 0] control_BRESP;
wire ap_start;
wire ap_done;
wire ap_idle;
wire ap_ready;
wire  gmem_0_AWVALID;
wire  gmem_0_AWREADY;
wire [63 : 0] gmem_0_AWADDR;
wire [0 : 0] gmem_0_AWID;
wire [7 : 0] gmem_0_AWLEN;
wire [2 : 0] gmem_0_AWSIZE;
wire [1 : 0] gmem_0_AWBURST;
wire [1 : 0] gmem_0_AWLOCK;
wire [3 : 0] gmem_0_AWCACHE;
wire [2 : 0] gmem_0_AWPROT;
wire [3 : 0] gmem_0_AWQOS;
wire [3 : 0] gmem_0_AWREGION;
wire [0 : 0] gmem_0_AWUSER;
wire  gmem_0_WVALID;
wire  gmem_0_WREADY;
wire [31 : 0] gmem_0_WDATA;
wire [3 : 0] gmem_0_WSTRB;
wire  gmem_0_WLAST;
wire [0 : 0] gmem_0_WID;
wire [0 : 0] gmem_0_WUSER;
wire  gmem_0_ARVALID;
wire  gmem_0_ARREADY;
wire [63 : 0] gmem_0_ARADDR;
wire [0 : 0] gmem_0_ARID;
wire [7 : 0] gmem_0_ARLEN;
wire [2 : 0] gmem_0_ARSIZE;
wire [1 : 0] gmem_0_ARBURST;
wire [1 : 0] gmem_0_ARLOCK;
wire [3 : 0] gmem_0_ARCACHE;
wire [2 : 0] gmem_0_ARPROT;
wire [3 : 0] gmem_0_ARQOS;
wire [3 : 0] gmem_0_ARREGION;
wire [0 : 0] gmem_0_ARUSER;
wire  gmem_0_RVALID;
wire  gmem_0_RREADY;
wire [31 : 0] gmem_0_RDATA;
wire  gmem_0_RLAST;
wire [0 : 0] gmem_0_RID;
wire [0 : 0] gmem_0_RUSER;
wire [1 : 0] gmem_0_RRESP;
wire  gmem_0_BVALID;
wire  gmem_0_BREADY;
wire [1 : 0] gmem_0_BRESP;
wire [0 : 0] gmem_0_BID;
wire [0 : 0] gmem_0_BUSER;
wire  gmem_1_AWVALID;
wire  gmem_1_AWREADY;
wire [63 : 0] gmem_1_AWADDR;
wire [0 : 0] gmem_1_AWID;
wire [7 : 0] gmem_1_AWLEN;
wire [2 : 0] gmem_1_AWSIZE;
wire [1 : 0] gmem_1_AWBURST;
wire [1 : 0] gmem_1_AWLOCK;
wire [3 : 0] gmem_1_AWCACHE;
wire [2 : 0] gmem_1_AWPROT;
wire [3 : 0] gmem_1_AWQOS;
wire [3 : 0] gmem_1_AWREGION;
wire [0 : 0] gmem_1_AWUSER;
wire  gmem_1_WVALID;
wire  gmem_1_WREADY;
wire [31 : 0] gmem_1_WDATA;
wire [3 : 0] gmem_1_WSTRB;
wire  gmem_1_WLAST;
wire [0 : 0] gmem_1_WID;
wire [0 : 0] gmem_1_WUSER;
wire  gmem_1_ARVALID;
wire  gmem_1_ARREADY;
wire [63 : 0] gmem_1_ARADDR;
wire [0 : 0] gmem_1_ARID;
wire [7 : 0] gmem_1_ARLEN;
wire [2 : 0] gmem_1_ARSIZE;
wire [1 : 0] gmem_1_ARBURST;
wire [1 : 0] gmem_1_ARLOCK;
wire [3 : 0] gmem_1_ARCACHE;
wire [2 : 0] gmem_1_ARPROT;
wire [3 : 0] gmem_1_ARQOS;
wire [3 : 0] gmem_1_ARREGION;
wire [0 : 0] gmem_1_ARUSER;
wire  gmem_1_RVALID;
wire  gmem_1_RREADY;
wire [31 : 0] gmem_1_RDATA;
wire  gmem_1_RLAST;
wire [0 : 0] gmem_1_RID;
wire [0 : 0] gmem_1_RUSER;
wire [1 : 0] gmem_1_RRESP;
wire  gmem_1_BVALID;
wire  gmem_1_BREADY;
wire [1 : 0] gmem_1_BRESP;
wire [0 : 0] gmem_1_BID;
wire [0 : 0] gmem_1_BUSER;
wire  gmem_2_AWVALID;
wire  gmem_2_AWREADY;
wire [63 : 0] gmem_2_AWADDR;
wire [0 : 0] gmem_2_AWID;
wire [7 : 0] gmem_2_AWLEN;
wire [2 : 0] gmem_2_AWSIZE;
wire [1 : 0] gmem_2_AWBURST;
wire [1 : 0] gmem_2_AWLOCK;
wire [3 : 0] gmem_2_AWCACHE;
wire [2 : 0] gmem_2_AWPROT;
wire [3 : 0] gmem_2_AWQOS;
wire [3 : 0] gmem_2_AWREGION;
wire [0 : 0] gmem_2_AWUSER;
wire  gmem_2_WVALID;
wire  gmem_2_WREADY;
wire [31 : 0] gmem_2_WDATA;
wire [3 : 0] gmem_2_WSTRB;
wire  gmem_2_WLAST;
wire [0 : 0] gmem_2_WID;
wire [0 : 0] gmem_2_WUSER;
wire  gmem_2_ARVALID;
wire  gmem_2_ARREADY;
wire [63 : 0] gmem_2_ARADDR;
wire [0 : 0] gmem_2_ARID;
wire [7 : 0] gmem_2_ARLEN;
wire [2 : 0] gmem_2_ARSIZE;
wire [1 : 0] gmem_2_ARBURST;
wire [1 : 0] gmem_2_ARLOCK;
wire [3 : 0] gmem_2_ARCACHE;
wire [2 : 0] gmem_2_ARPROT;
wire [3 : 0] gmem_2_ARQOS;
wire [3 : 0] gmem_2_ARREGION;
wire [0 : 0] gmem_2_ARUSER;
wire  gmem_2_RVALID;
wire  gmem_2_RREADY;
wire [31 : 0] gmem_2_RDATA;
wire  gmem_2_RLAST;
wire [0 : 0] gmem_2_RID;
wire [0 : 0] gmem_2_RUSER;
wire [1 : 0] gmem_2_RRESP;
wire  gmem_2_BVALID;
wire  gmem_2_BREADY;
wire [1 : 0] gmem_2_BRESP;
wire [0 : 0] gmem_2_BID;
wire [0 : 0] gmem_2_BUSER;
wire  gmem_3_AWVALID;
wire  gmem_3_AWREADY;
wire [63 : 0] gmem_3_AWADDR;
wire [0 : 0] gmem_3_AWID;
wire [7 : 0] gmem_3_AWLEN;
wire [2 : 0] gmem_3_AWSIZE;
wire [1 : 0] gmem_3_AWBURST;
wire [1 : 0] gmem_3_AWLOCK;
wire [3 : 0] gmem_3_AWCACHE;
wire [2 : 0] gmem_3_AWPROT;
wire [3 : 0] gmem_3_AWQOS;
wire [3 : 0] gmem_3_AWREGION;
wire [0 : 0] gmem_3_AWUSER;
wire  gmem_3_WVALID;
wire  gmem_3_WREADY;
wire [31 : 0] gmem_3_WDATA;
wire [3 : 0] gmem_3_WSTRB;
wire  gmem_3_WLAST;
wire [0 : 0] gmem_3_WID;
wire [0 : 0] gmem_3_WUSER;
wire  gmem_3_ARVALID;
wire  gmem_3_ARREADY;
wire [63 : 0] gmem_3_ARADDR;
wire [0 : 0] gmem_3_ARID;
wire [7 : 0] gmem_3_ARLEN;
wire [2 : 0] gmem_3_ARSIZE;
wire [1 : 0] gmem_3_ARBURST;
wire [1 : 0] gmem_3_ARLOCK;
wire [3 : 0] gmem_3_ARCACHE;
wire [2 : 0] gmem_3_ARPROT;
wire [3 : 0] gmem_3_ARQOS;
wire [3 : 0] gmem_3_ARREGION;
wire [0 : 0] gmem_3_ARUSER;
wire  gmem_3_RVALID;
wire  gmem_3_RREADY;
wire [31 : 0] gmem_3_RDATA;
wire  gmem_3_RLAST;
wire [0 : 0] gmem_3_RID;
wire [0 : 0] gmem_3_RUSER;
wire [1 : 0] gmem_3_RRESP;
wire  gmem_3_BVALID;
wire  gmem_3_BREADY;
wire [1 : 0] gmem_3_BRESP;
wire [0 : 0] gmem_3_BID;
wire [0 : 0] gmem_3_BUSER;
wire  gmem_4_AWVALID;
wire  gmem_4_AWREADY;
wire [63 : 0] gmem_4_AWADDR;
wire [0 : 0] gmem_4_AWID;
wire [7 : 0] gmem_4_AWLEN;
wire [2 : 0] gmem_4_AWSIZE;
wire [1 : 0] gmem_4_AWBURST;
wire [1 : 0] gmem_4_AWLOCK;
wire [3 : 0] gmem_4_AWCACHE;
wire [2 : 0] gmem_4_AWPROT;
wire [3 : 0] gmem_4_AWQOS;
wire [3 : 0] gmem_4_AWREGION;
wire [0 : 0] gmem_4_AWUSER;
wire  gmem_4_WVALID;
wire  gmem_4_WREADY;
wire [31 : 0] gmem_4_WDATA;
wire [3 : 0] gmem_4_WSTRB;
wire  gmem_4_WLAST;
wire [0 : 0] gmem_4_WID;
wire [0 : 0] gmem_4_WUSER;
wire  gmem_4_ARVALID;
wire  gmem_4_ARREADY;
wire [63 : 0] gmem_4_ARADDR;
wire [0 : 0] gmem_4_ARID;
wire [7 : 0] gmem_4_ARLEN;
wire [2 : 0] gmem_4_ARSIZE;
wire [1 : 0] gmem_4_ARBURST;
wire [1 : 0] gmem_4_ARLOCK;
wire [3 : 0] gmem_4_ARCACHE;
wire [2 : 0] gmem_4_ARPROT;
wire [3 : 0] gmem_4_ARQOS;
wire [3 : 0] gmem_4_ARREGION;
wire [0 : 0] gmem_4_ARUSER;
wire  gmem_4_RVALID;
wire  gmem_4_RREADY;
wire [31 : 0] gmem_4_RDATA;
wire  gmem_4_RLAST;
wire [0 : 0] gmem_4_RID;
wire [0 : 0] gmem_4_RUSER;
wire [1 : 0] gmem_4_RRESP;
wire  gmem_4_BVALID;
wire  gmem_4_BREADY;
wire [1 : 0] gmem_4_BRESP;
wire [0 : 0] gmem_4_BID;
wire [0 : 0] gmem_4_BUSER;
wire  gmem_5_AWVALID;
wire  gmem_5_AWREADY;
wire [63 : 0] gmem_5_AWADDR;
wire [0 : 0] gmem_5_AWID;
wire [7 : 0] gmem_5_AWLEN;
wire [2 : 0] gmem_5_AWSIZE;
wire [1 : 0] gmem_5_AWBURST;
wire [1 : 0] gmem_5_AWLOCK;
wire [3 : 0] gmem_5_AWCACHE;
wire [2 : 0] gmem_5_AWPROT;
wire [3 : 0] gmem_5_AWQOS;
wire [3 : 0] gmem_5_AWREGION;
wire [0 : 0] gmem_5_AWUSER;
wire  gmem_5_WVALID;
wire  gmem_5_WREADY;
wire [31 : 0] gmem_5_WDATA;
wire [3 : 0] gmem_5_WSTRB;
wire  gmem_5_WLAST;
wire [0 : 0] gmem_5_WID;
wire [0 : 0] gmem_5_WUSER;
wire  gmem_5_ARVALID;
wire  gmem_5_ARREADY;
wire [63 : 0] gmem_5_ARADDR;
wire [0 : 0] gmem_5_ARID;
wire [7 : 0] gmem_5_ARLEN;
wire [2 : 0] gmem_5_ARSIZE;
wire [1 : 0] gmem_5_ARBURST;
wire [1 : 0] gmem_5_ARLOCK;
wire [3 : 0] gmem_5_ARCACHE;
wire [2 : 0] gmem_5_ARPROT;
wire [3 : 0] gmem_5_ARQOS;
wire [3 : 0] gmem_5_ARREGION;
wire [0 : 0] gmem_5_ARUSER;
wire  gmem_5_RVALID;
wire  gmem_5_RREADY;
wire [31 : 0] gmem_5_RDATA;
wire  gmem_5_RLAST;
wire [0 : 0] gmem_5_RID;
wire [0 : 0] gmem_5_RUSER;
wire [1 : 0] gmem_5_RRESP;
wire  gmem_5_BVALID;
wire  gmem_5_BREADY;
wire [1 : 0] gmem_5_BRESP;
wire [0 : 0] gmem_5_BID;
wire [0 : 0] gmem_5_BUSER;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;
wire control_write_data_finish;
wire AESL_slave_start;
reg AESL_slave_start_lock = 0;
wire AESL_slave_write_start_in;
wire AESL_slave_write_start_finish;
reg AESL_slave_ready;
wire AESL_slave_output_done;
wire AESL_slave_done;
reg ready_rise = 0;
reg start_rise = 0;
reg slave_start_status = 0;
reg slave_done_status = 0;
reg ap_done_lock = 0;


wire ap_clk;
wire ap_rst_n;
wire ap_rst_n_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .s_axi_control_AWADDR(control_AWADDR),
    .s_axi_control_AWVALID(control_AWVALID),
    .s_axi_control_AWREADY(control_AWREADY),
    .s_axi_control_WVALID(control_WVALID),
    .s_axi_control_WREADY(control_WREADY),
    .s_axi_control_WDATA(control_WDATA),
    .s_axi_control_WSTRB(control_WSTRB),
    .s_axi_control_ARADDR(control_ARADDR),
    .s_axi_control_ARVALID(control_ARVALID),
    .s_axi_control_ARREADY(control_ARREADY),
    .s_axi_control_RVALID(control_RVALID),
    .s_axi_control_RREADY(control_RREADY),
    .s_axi_control_RDATA(control_RDATA),
    .s_axi_control_RRESP(control_RRESP),
    .s_axi_control_BVALID(control_BVALID),
    .s_axi_control_BREADY(control_BREADY),
    .s_axi_control_BRESP(control_BRESP),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .m_axi_gmem_0_AWVALID(gmem_0_AWVALID),
    .m_axi_gmem_0_AWREADY(gmem_0_AWREADY),
    .m_axi_gmem_0_AWADDR(gmem_0_AWADDR),
    .m_axi_gmem_0_AWID(gmem_0_AWID),
    .m_axi_gmem_0_AWLEN(gmem_0_AWLEN),
    .m_axi_gmem_0_AWSIZE(gmem_0_AWSIZE),
    .m_axi_gmem_0_AWBURST(gmem_0_AWBURST),
    .m_axi_gmem_0_AWLOCK(gmem_0_AWLOCK),
    .m_axi_gmem_0_AWCACHE(gmem_0_AWCACHE),
    .m_axi_gmem_0_AWPROT(gmem_0_AWPROT),
    .m_axi_gmem_0_AWQOS(gmem_0_AWQOS),
    .m_axi_gmem_0_AWREGION(gmem_0_AWREGION),
    .m_axi_gmem_0_AWUSER(gmem_0_AWUSER),
    .m_axi_gmem_0_WVALID(gmem_0_WVALID),
    .m_axi_gmem_0_WREADY(gmem_0_WREADY),
    .m_axi_gmem_0_WDATA(gmem_0_WDATA),
    .m_axi_gmem_0_WSTRB(gmem_0_WSTRB),
    .m_axi_gmem_0_WLAST(gmem_0_WLAST),
    .m_axi_gmem_0_WID(gmem_0_WID),
    .m_axi_gmem_0_WUSER(gmem_0_WUSER),
    .m_axi_gmem_0_ARVALID(gmem_0_ARVALID),
    .m_axi_gmem_0_ARREADY(gmem_0_ARREADY),
    .m_axi_gmem_0_ARADDR(gmem_0_ARADDR),
    .m_axi_gmem_0_ARID(gmem_0_ARID),
    .m_axi_gmem_0_ARLEN(gmem_0_ARLEN),
    .m_axi_gmem_0_ARSIZE(gmem_0_ARSIZE),
    .m_axi_gmem_0_ARBURST(gmem_0_ARBURST),
    .m_axi_gmem_0_ARLOCK(gmem_0_ARLOCK),
    .m_axi_gmem_0_ARCACHE(gmem_0_ARCACHE),
    .m_axi_gmem_0_ARPROT(gmem_0_ARPROT),
    .m_axi_gmem_0_ARQOS(gmem_0_ARQOS),
    .m_axi_gmem_0_ARREGION(gmem_0_ARREGION),
    .m_axi_gmem_0_ARUSER(gmem_0_ARUSER),
    .m_axi_gmem_0_RVALID(gmem_0_RVALID),
    .m_axi_gmem_0_RREADY(gmem_0_RREADY),
    .m_axi_gmem_0_RDATA(gmem_0_RDATA),
    .m_axi_gmem_0_RLAST(gmem_0_RLAST),
    .m_axi_gmem_0_RID(gmem_0_RID),
    .m_axi_gmem_0_RUSER(gmem_0_RUSER),
    .m_axi_gmem_0_RRESP(gmem_0_RRESP),
    .m_axi_gmem_0_BVALID(gmem_0_BVALID),
    .m_axi_gmem_0_BREADY(gmem_0_BREADY),
    .m_axi_gmem_0_BRESP(gmem_0_BRESP),
    .m_axi_gmem_0_BID(gmem_0_BID),
    .m_axi_gmem_0_BUSER(gmem_0_BUSER),
    .m_axi_gmem_1_AWVALID(gmem_1_AWVALID),
    .m_axi_gmem_1_AWREADY(gmem_1_AWREADY),
    .m_axi_gmem_1_AWADDR(gmem_1_AWADDR),
    .m_axi_gmem_1_AWID(gmem_1_AWID),
    .m_axi_gmem_1_AWLEN(gmem_1_AWLEN),
    .m_axi_gmem_1_AWSIZE(gmem_1_AWSIZE),
    .m_axi_gmem_1_AWBURST(gmem_1_AWBURST),
    .m_axi_gmem_1_AWLOCK(gmem_1_AWLOCK),
    .m_axi_gmem_1_AWCACHE(gmem_1_AWCACHE),
    .m_axi_gmem_1_AWPROT(gmem_1_AWPROT),
    .m_axi_gmem_1_AWQOS(gmem_1_AWQOS),
    .m_axi_gmem_1_AWREGION(gmem_1_AWREGION),
    .m_axi_gmem_1_AWUSER(gmem_1_AWUSER),
    .m_axi_gmem_1_WVALID(gmem_1_WVALID),
    .m_axi_gmem_1_WREADY(gmem_1_WREADY),
    .m_axi_gmem_1_WDATA(gmem_1_WDATA),
    .m_axi_gmem_1_WSTRB(gmem_1_WSTRB),
    .m_axi_gmem_1_WLAST(gmem_1_WLAST),
    .m_axi_gmem_1_WID(gmem_1_WID),
    .m_axi_gmem_1_WUSER(gmem_1_WUSER),
    .m_axi_gmem_1_ARVALID(gmem_1_ARVALID),
    .m_axi_gmem_1_ARREADY(gmem_1_ARREADY),
    .m_axi_gmem_1_ARADDR(gmem_1_ARADDR),
    .m_axi_gmem_1_ARID(gmem_1_ARID),
    .m_axi_gmem_1_ARLEN(gmem_1_ARLEN),
    .m_axi_gmem_1_ARSIZE(gmem_1_ARSIZE),
    .m_axi_gmem_1_ARBURST(gmem_1_ARBURST),
    .m_axi_gmem_1_ARLOCK(gmem_1_ARLOCK),
    .m_axi_gmem_1_ARCACHE(gmem_1_ARCACHE),
    .m_axi_gmem_1_ARPROT(gmem_1_ARPROT),
    .m_axi_gmem_1_ARQOS(gmem_1_ARQOS),
    .m_axi_gmem_1_ARREGION(gmem_1_ARREGION),
    .m_axi_gmem_1_ARUSER(gmem_1_ARUSER),
    .m_axi_gmem_1_RVALID(gmem_1_RVALID),
    .m_axi_gmem_1_RREADY(gmem_1_RREADY),
    .m_axi_gmem_1_RDATA(gmem_1_RDATA),
    .m_axi_gmem_1_RLAST(gmem_1_RLAST),
    .m_axi_gmem_1_RID(gmem_1_RID),
    .m_axi_gmem_1_RUSER(gmem_1_RUSER),
    .m_axi_gmem_1_RRESP(gmem_1_RRESP),
    .m_axi_gmem_1_BVALID(gmem_1_BVALID),
    .m_axi_gmem_1_BREADY(gmem_1_BREADY),
    .m_axi_gmem_1_BRESP(gmem_1_BRESP),
    .m_axi_gmem_1_BID(gmem_1_BID),
    .m_axi_gmem_1_BUSER(gmem_1_BUSER),
    .m_axi_gmem_2_AWVALID(gmem_2_AWVALID),
    .m_axi_gmem_2_AWREADY(gmem_2_AWREADY),
    .m_axi_gmem_2_AWADDR(gmem_2_AWADDR),
    .m_axi_gmem_2_AWID(gmem_2_AWID),
    .m_axi_gmem_2_AWLEN(gmem_2_AWLEN),
    .m_axi_gmem_2_AWSIZE(gmem_2_AWSIZE),
    .m_axi_gmem_2_AWBURST(gmem_2_AWBURST),
    .m_axi_gmem_2_AWLOCK(gmem_2_AWLOCK),
    .m_axi_gmem_2_AWCACHE(gmem_2_AWCACHE),
    .m_axi_gmem_2_AWPROT(gmem_2_AWPROT),
    .m_axi_gmem_2_AWQOS(gmem_2_AWQOS),
    .m_axi_gmem_2_AWREGION(gmem_2_AWREGION),
    .m_axi_gmem_2_AWUSER(gmem_2_AWUSER),
    .m_axi_gmem_2_WVALID(gmem_2_WVALID),
    .m_axi_gmem_2_WREADY(gmem_2_WREADY),
    .m_axi_gmem_2_WDATA(gmem_2_WDATA),
    .m_axi_gmem_2_WSTRB(gmem_2_WSTRB),
    .m_axi_gmem_2_WLAST(gmem_2_WLAST),
    .m_axi_gmem_2_WID(gmem_2_WID),
    .m_axi_gmem_2_WUSER(gmem_2_WUSER),
    .m_axi_gmem_2_ARVALID(gmem_2_ARVALID),
    .m_axi_gmem_2_ARREADY(gmem_2_ARREADY),
    .m_axi_gmem_2_ARADDR(gmem_2_ARADDR),
    .m_axi_gmem_2_ARID(gmem_2_ARID),
    .m_axi_gmem_2_ARLEN(gmem_2_ARLEN),
    .m_axi_gmem_2_ARSIZE(gmem_2_ARSIZE),
    .m_axi_gmem_2_ARBURST(gmem_2_ARBURST),
    .m_axi_gmem_2_ARLOCK(gmem_2_ARLOCK),
    .m_axi_gmem_2_ARCACHE(gmem_2_ARCACHE),
    .m_axi_gmem_2_ARPROT(gmem_2_ARPROT),
    .m_axi_gmem_2_ARQOS(gmem_2_ARQOS),
    .m_axi_gmem_2_ARREGION(gmem_2_ARREGION),
    .m_axi_gmem_2_ARUSER(gmem_2_ARUSER),
    .m_axi_gmem_2_RVALID(gmem_2_RVALID),
    .m_axi_gmem_2_RREADY(gmem_2_RREADY),
    .m_axi_gmem_2_RDATA(gmem_2_RDATA),
    .m_axi_gmem_2_RLAST(gmem_2_RLAST),
    .m_axi_gmem_2_RID(gmem_2_RID),
    .m_axi_gmem_2_RUSER(gmem_2_RUSER),
    .m_axi_gmem_2_RRESP(gmem_2_RRESP),
    .m_axi_gmem_2_BVALID(gmem_2_BVALID),
    .m_axi_gmem_2_BREADY(gmem_2_BREADY),
    .m_axi_gmem_2_BRESP(gmem_2_BRESP),
    .m_axi_gmem_2_BID(gmem_2_BID),
    .m_axi_gmem_2_BUSER(gmem_2_BUSER),
    .m_axi_gmem_3_AWVALID(gmem_3_AWVALID),
    .m_axi_gmem_3_AWREADY(gmem_3_AWREADY),
    .m_axi_gmem_3_AWADDR(gmem_3_AWADDR),
    .m_axi_gmem_3_AWID(gmem_3_AWID),
    .m_axi_gmem_3_AWLEN(gmem_3_AWLEN),
    .m_axi_gmem_3_AWSIZE(gmem_3_AWSIZE),
    .m_axi_gmem_3_AWBURST(gmem_3_AWBURST),
    .m_axi_gmem_3_AWLOCK(gmem_3_AWLOCK),
    .m_axi_gmem_3_AWCACHE(gmem_3_AWCACHE),
    .m_axi_gmem_3_AWPROT(gmem_3_AWPROT),
    .m_axi_gmem_3_AWQOS(gmem_3_AWQOS),
    .m_axi_gmem_3_AWREGION(gmem_3_AWREGION),
    .m_axi_gmem_3_AWUSER(gmem_3_AWUSER),
    .m_axi_gmem_3_WVALID(gmem_3_WVALID),
    .m_axi_gmem_3_WREADY(gmem_3_WREADY),
    .m_axi_gmem_3_WDATA(gmem_3_WDATA),
    .m_axi_gmem_3_WSTRB(gmem_3_WSTRB),
    .m_axi_gmem_3_WLAST(gmem_3_WLAST),
    .m_axi_gmem_3_WID(gmem_3_WID),
    .m_axi_gmem_3_WUSER(gmem_3_WUSER),
    .m_axi_gmem_3_ARVALID(gmem_3_ARVALID),
    .m_axi_gmem_3_ARREADY(gmem_3_ARREADY),
    .m_axi_gmem_3_ARADDR(gmem_3_ARADDR),
    .m_axi_gmem_3_ARID(gmem_3_ARID),
    .m_axi_gmem_3_ARLEN(gmem_3_ARLEN),
    .m_axi_gmem_3_ARSIZE(gmem_3_ARSIZE),
    .m_axi_gmem_3_ARBURST(gmem_3_ARBURST),
    .m_axi_gmem_3_ARLOCK(gmem_3_ARLOCK),
    .m_axi_gmem_3_ARCACHE(gmem_3_ARCACHE),
    .m_axi_gmem_3_ARPROT(gmem_3_ARPROT),
    .m_axi_gmem_3_ARQOS(gmem_3_ARQOS),
    .m_axi_gmem_3_ARREGION(gmem_3_ARREGION),
    .m_axi_gmem_3_ARUSER(gmem_3_ARUSER),
    .m_axi_gmem_3_RVALID(gmem_3_RVALID),
    .m_axi_gmem_3_RREADY(gmem_3_RREADY),
    .m_axi_gmem_3_RDATA(gmem_3_RDATA),
    .m_axi_gmem_3_RLAST(gmem_3_RLAST),
    .m_axi_gmem_3_RID(gmem_3_RID),
    .m_axi_gmem_3_RUSER(gmem_3_RUSER),
    .m_axi_gmem_3_RRESP(gmem_3_RRESP),
    .m_axi_gmem_3_BVALID(gmem_3_BVALID),
    .m_axi_gmem_3_BREADY(gmem_3_BREADY),
    .m_axi_gmem_3_BRESP(gmem_3_BRESP),
    .m_axi_gmem_3_BID(gmem_3_BID),
    .m_axi_gmem_3_BUSER(gmem_3_BUSER),
    .m_axi_gmem_4_AWVALID(gmem_4_AWVALID),
    .m_axi_gmem_4_AWREADY(gmem_4_AWREADY),
    .m_axi_gmem_4_AWADDR(gmem_4_AWADDR),
    .m_axi_gmem_4_AWID(gmem_4_AWID),
    .m_axi_gmem_4_AWLEN(gmem_4_AWLEN),
    .m_axi_gmem_4_AWSIZE(gmem_4_AWSIZE),
    .m_axi_gmem_4_AWBURST(gmem_4_AWBURST),
    .m_axi_gmem_4_AWLOCK(gmem_4_AWLOCK),
    .m_axi_gmem_4_AWCACHE(gmem_4_AWCACHE),
    .m_axi_gmem_4_AWPROT(gmem_4_AWPROT),
    .m_axi_gmem_4_AWQOS(gmem_4_AWQOS),
    .m_axi_gmem_4_AWREGION(gmem_4_AWREGION),
    .m_axi_gmem_4_AWUSER(gmem_4_AWUSER),
    .m_axi_gmem_4_WVALID(gmem_4_WVALID),
    .m_axi_gmem_4_WREADY(gmem_4_WREADY),
    .m_axi_gmem_4_WDATA(gmem_4_WDATA),
    .m_axi_gmem_4_WSTRB(gmem_4_WSTRB),
    .m_axi_gmem_4_WLAST(gmem_4_WLAST),
    .m_axi_gmem_4_WID(gmem_4_WID),
    .m_axi_gmem_4_WUSER(gmem_4_WUSER),
    .m_axi_gmem_4_ARVALID(gmem_4_ARVALID),
    .m_axi_gmem_4_ARREADY(gmem_4_ARREADY),
    .m_axi_gmem_4_ARADDR(gmem_4_ARADDR),
    .m_axi_gmem_4_ARID(gmem_4_ARID),
    .m_axi_gmem_4_ARLEN(gmem_4_ARLEN),
    .m_axi_gmem_4_ARSIZE(gmem_4_ARSIZE),
    .m_axi_gmem_4_ARBURST(gmem_4_ARBURST),
    .m_axi_gmem_4_ARLOCK(gmem_4_ARLOCK),
    .m_axi_gmem_4_ARCACHE(gmem_4_ARCACHE),
    .m_axi_gmem_4_ARPROT(gmem_4_ARPROT),
    .m_axi_gmem_4_ARQOS(gmem_4_ARQOS),
    .m_axi_gmem_4_ARREGION(gmem_4_ARREGION),
    .m_axi_gmem_4_ARUSER(gmem_4_ARUSER),
    .m_axi_gmem_4_RVALID(gmem_4_RVALID),
    .m_axi_gmem_4_RREADY(gmem_4_RREADY),
    .m_axi_gmem_4_RDATA(gmem_4_RDATA),
    .m_axi_gmem_4_RLAST(gmem_4_RLAST),
    .m_axi_gmem_4_RID(gmem_4_RID),
    .m_axi_gmem_4_RUSER(gmem_4_RUSER),
    .m_axi_gmem_4_RRESP(gmem_4_RRESP),
    .m_axi_gmem_4_BVALID(gmem_4_BVALID),
    .m_axi_gmem_4_BREADY(gmem_4_BREADY),
    .m_axi_gmem_4_BRESP(gmem_4_BRESP),
    .m_axi_gmem_4_BID(gmem_4_BID),
    .m_axi_gmem_4_BUSER(gmem_4_BUSER),
    .m_axi_gmem_5_AWVALID(gmem_5_AWVALID),
    .m_axi_gmem_5_AWREADY(gmem_5_AWREADY),
    .m_axi_gmem_5_AWADDR(gmem_5_AWADDR),
    .m_axi_gmem_5_AWID(gmem_5_AWID),
    .m_axi_gmem_5_AWLEN(gmem_5_AWLEN),
    .m_axi_gmem_5_AWSIZE(gmem_5_AWSIZE),
    .m_axi_gmem_5_AWBURST(gmem_5_AWBURST),
    .m_axi_gmem_5_AWLOCK(gmem_5_AWLOCK),
    .m_axi_gmem_5_AWCACHE(gmem_5_AWCACHE),
    .m_axi_gmem_5_AWPROT(gmem_5_AWPROT),
    .m_axi_gmem_5_AWQOS(gmem_5_AWQOS),
    .m_axi_gmem_5_AWREGION(gmem_5_AWREGION),
    .m_axi_gmem_5_AWUSER(gmem_5_AWUSER),
    .m_axi_gmem_5_WVALID(gmem_5_WVALID),
    .m_axi_gmem_5_WREADY(gmem_5_WREADY),
    .m_axi_gmem_5_WDATA(gmem_5_WDATA),
    .m_axi_gmem_5_WSTRB(gmem_5_WSTRB),
    .m_axi_gmem_5_WLAST(gmem_5_WLAST),
    .m_axi_gmem_5_WID(gmem_5_WID),
    .m_axi_gmem_5_WUSER(gmem_5_WUSER),
    .m_axi_gmem_5_ARVALID(gmem_5_ARVALID),
    .m_axi_gmem_5_ARREADY(gmem_5_ARREADY),
    .m_axi_gmem_5_ARADDR(gmem_5_ARADDR),
    .m_axi_gmem_5_ARID(gmem_5_ARID),
    .m_axi_gmem_5_ARLEN(gmem_5_ARLEN),
    .m_axi_gmem_5_ARSIZE(gmem_5_ARSIZE),
    .m_axi_gmem_5_ARBURST(gmem_5_ARBURST),
    .m_axi_gmem_5_ARLOCK(gmem_5_ARLOCK),
    .m_axi_gmem_5_ARCACHE(gmem_5_ARCACHE),
    .m_axi_gmem_5_ARPROT(gmem_5_ARPROT),
    .m_axi_gmem_5_ARQOS(gmem_5_ARQOS),
    .m_axi_gmem_5_ARREGION(gmem_5_ARREGION),
    .m_axi_gmem_5_ARUSER(gmem_5_ARUSER),
    .m_axi_gmem_5_RVALID(gmem_5_RVALID),
    .m_axi_gmem_5_RREADY(gmem_5_RREADY),
    .m_axi_gmem_5_RDATA(gmem_5_RDATA),
    .m_axi_gmem_5_RLAST(gmem_5_RLAST),
    .m_axi_gmem_5_RID(gmem_5_RID),
    .m_axi_gmem_5_RUSER(gmem_5_RUSER),
    .m_axi_gmem_5_RRESP(gmem_5_RRESP),
    .m_axi_gmem_5_BVALID(gmem_5_BVALID),
    .m_axi_gmem_5_BREADY(gmem_5_BREADY),
    .m_axi_gmem_5_BRESP(gmem_5_BRESP),
    .m_axi_gmem_5_BID(gmem_5_BID),
    .m_axi_gmem_5_BUSER(gmem_5_BUSER));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = dut_rst;
assign ap_rst_n_n = ~dut_rst;
assign AESL_reset = rst;
assign ap_start = AESL_slave_start | AESL_slave_start_lock;
assign AESL_start = start;
assign AESL_idle = ap_idle;
assign AESL_ready = ap_ready;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
  assign AESL_slave_write_start_in = slave_start_status  & control_write_data_finish;
  assign AESL_slave_write_start_finish = AESL_slave_write_start_in;
  assign AESL_slave_start = AESL_slave_write_start_finish;
  assign AESL_slave_done =  1 ;
  assign AESL_done = (ap_done_lock | ap_done) & AESL_slave_done & slave_done_status;
  assign AESL_slave_output_done = ap_done;

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        AESL_slave_start_lock <= 0;
    end
    else begin
        if (AESL_ready == 1) begin
            AESL_slave_start_lock <= 0;
        end
        else if (AESL_slave_start == 1) begin
            AESL_slave_start_lock <= 1;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        ap_done_lock <= 0;
    end
    else begin
        if (AESL_done == 1) begin
            ap_done_lock <= 0;
        end
        else if (ap_done == 1) begin
            ap_done_lock <= 1;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        slave_start_status <= 1;
    end
    else begin
        if (AESL_start == 1 ) begin
            start_rise = 1;
        end
        if (start_rise == 1 && AESL_done == 1 ) begin
            slave_start_status <= 1;
        end
        if (AESL_slave_write_start_in == 1 && AESL_done == 0) begin 
            slave_start_status <= 0;
            start_rise = 0;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        AESL_slave_ready <= 0;
        ready_rise = 0;
    end
    else begin
        if (AESL_ready == 1 ) begin
            ready_rise = 1;
        end
        if (ready_rise == 1 && AESL_done_delay == 1 ) begin
            AESL_slave_ready <= 1;
        end
        if (AESL_slave_ready == 1) begin 
            AESL_slave_ready <= 0;
            ready_rise = 0;
        end
    end
end

always @ (posedge AESL_clock)
begin
    if (AESL_done == 1) begin
        slave_done_status <= 0;
    end
    else if (AESL_slave_done == 1 ) begin
        slave_done_status <= 1;
    end
end
    always @(posedge AESL_clock) begin
        if (AESL_reset === 0) begin
        end else begin
            if (AESL_done !== 1 && AESL_done !== 0) begin
                $display("ERROR: Control signal AESL_done is invalid!");
                $finish;
            end
        end
    end
    always @(posedge AESL_clock) begin
        if (AESL_reset === 0) begin
        end else begin
            if (AESL_ready !== 1 && AESL_ready !== 0) begin
                $display("ERROR: Control signal AESL_ready is invalid!");
                $finish;
            end
        end
    end












wire    AESL_axi_master_gmem_0_ready;
wire    AESL_axi_master_gmem_0_done;
AESL_axi_master_gmem_0 AESL_AXI_MASTER_gmem_0(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_gmem_0_AWVALID (gmem_0_AWVALID),
    .TRAN_gmem_0_AWREADY (gmem_0_AWREADY),
    .TRAN_gmem_0_AWADDR (gmem_0_AWADDR),
    .TRAN_gmem_0_AWID (gmem_0_AWID),
    .TRAN_gmem_0_AWLEN (gmem_0_AWLEN),
    .TRAN_gmem_0_AWSIZE (gmem_0_AWSIZE),
    .TRAN_gmem_0_AWBURST (gmem_0_AWBURST),
    .TRAN_gmem_0_AWLOCK (gmem_0_AWLOCK),
    .TRAN_gmem_0_AWCACHE (gmem_0_AWCACHE),
    .TRAN_gmem_0_AWPROT (gmem_0_AWPROT),
    .TRAN_gmem_0_AWQOS (gmem_0_AWQOS),
    .TRAN_gmem_0_AWREGION (gmem_0_AWREGION),
    .TRAN_gmem_0_AWUSER (gmem_0_AWUSER),
    .TRAN_gmem_0_WVALID (gmem_0_WVALID),
    .TRAN_gmem_0_WREADY (gmem_0_WREADY),
    .TRAN_gmem_0_WDATA (gmem_0_WDATA),
    .TRAN_gmem_0_WSTRB (gmem_0_WSTRB),
    .TRAN_gmem_0_WLAST (gmem_0_WLAST),
    .TRAN_gmem_0_WID (gmem_0_WID),
    .TRAN_gmem_0_WUSER (gmem_0_WUSER),
    .TRAN_gmem_0_ARVALID (gmem_0_ARVALID),
    .TRAN_gmem_0_ARREADY (gmem_0_ARREADY),
    .TRAN_gmem_0_ARADDR (gmem_0_ARADDR),
    .TRAN_gmem_0_ARID (gmem_0_ARID),
    .TRAN_gmem_0_ARLEN (gmem_0_ARLEN),
    .TRAN_gmem_0_ARSIZE (gmem_0_ARSIZE),
    .TRAN_gmem_0_ARBURST (gmem_0_ARBURST),
    .TRAN_gmem_0_ARLOCK (gmem_0_ARLOCK),
    .TRAN_gmem_0_ARCACHE (gmem_0_ARCACHE),
    .TRAN_gmem_0_ARPROT (gmem_0_ARPROT),
    .TRAN_gmem_0_ARQOS (gmem_0_ARQOS),
    .TRAN_gmem_0_ARREGION (gmem_0_ARREGION),
    .TRAN_gmem_0_ARUSER (gmem_0_ARUSER),
    .TRAN_gmem_0_RVALID (gmem_0_RVALID),
    .TRAN_gmem_0_RREADY (gmem_0_RREADY),
    .TRAN_gmem_0_RDATA (gmem_0_RDATA),
    .TRAN_gmem_0_RLAST (gmem_0_RLAST),
    .TRAN_gmem_0_RID (gmem_0_RID),
    .TRAN_gmem_0_RUSER (gmem_0_RUSER),
    .TRAN_gmem_0_RRESP (gmem_0_RRESP),
    .TRAN_gmem_0_BVALID (gmem_0_BVALID),
    .TRAN_gmem_0_BREADY (gmem_0_BREADY),
    .TRAN_gmem_0_BRESP (gmem_0_BRESP),
    .TRAN_gmem_0_BID (gmem_0_BID),
    .TRAN_gmem_0_BUSER (gmem_0_BUSER),
    .ready (AESL_axi_master_gmem_0_ready),
    .done  (AESL_axi_master_gmem_0_done)
);
assign    AESL_axi_master_gmem_0_ready    =   ready;
assign    AESL_axi_master_gmem_0_done    =   AESL_done_delay;
wire    AESL_axi_master_gmem_1_ready;
wire    AESL_axi_master_gmem_1_done;
AESL_axi_master_gmem_1 AESL_AXI_MASTER_gmem_1(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_gmem_1_AWVALID (gmem_1_AWVALID),
    .TRAN_gmem_1_AWREADY (gmem_1_AWREADY),
    .TRAN_gmem_1_AWADDR (gmem_1_AWADDR),
    .TRAN_gmem_1_AWID (gmem_1_AWID),
    .TRAN_gmem_1_AWLEN (gmem_1_AWLEN),
    .TRAN_gmem_1_AWSIZE (gmem_1_AWSIZE),
    .TRAN_gmem_1_AWBURST (gmem_1_AWBURST),
    .TRAN_gmem_1_AWLOCK (gmem_1_AWLOCK),
    .TRAN_gmem_1_AWCACHE (gmem_1_AWCACHE),
    .TRAN_gmem_1_AWPROT (gmem_1_AWPROT),
    .TRAN_gmem_1_AWQOS (gmem_1_AWQOS),
    .TRAN_gmem_1_AWREGION (gmem_1_AWREGION),
    .TRAN_gmem_1_AWUSER (gmem_1_AWUSER),
    .TRAN_gmem_1_WVALID (gmem_1_WVALID),
    .TRAN_gmem_1_WREADY (gmem_1_WREADY),
    .TRAN_gmem_1_WDATA (gmem_1_WDATA),
    .TRAN_gmem_1_WSTRB (gmem_1_WSTRB),
    .TRAN_gmem_1_WLAST (gmem_1_WLAST),
    .TRAN_gmem_1_WID (gmem_1_WID),
    .TRAN_gmem_1_WUSER (gmem_1_WUSER),
    .TRAN_gmem_1_ARVALID (gmem_1_ARVALID),
    .TRAN_gmem_1_ARREADY (gmem_1_ARREADY),
    .TRAN_gmem_1_ARADDR (gmem_1_ARADDR),
    .TRAN_gmem_1_ARID (gmem_1_ARID),
    .TRAN_gmem_1_ARLEN (gmem_1_ARLEN),
    .TRAN_gmem_1_ARSIZE (gmem_1_ARSIZE),
    .TRAN_gmem_1_ARBURST (gmem_1_ARBURST),
    .TRAN_gmem_1_ARLOCK (gmem_1_ARLOCK),
    .TRAN_gmem_1_ARCACHE (gmem_1_ARCACHE),
    .TRAN_gmem_1_ARPROT (gmem_1_ARPROT),
    .TRAN_gmem_1_ARQOS (gmem_1_ARQOS),
    .TRAN_gmem_1_ARREGION (gmem_1_ARREGION),
    .TRAN_gmem_1_ARUSER (gmem_1_ARUSER),
    .TRAN_gmem_1_RVALID (gmem_1_RVALID),
    .TRAN_gmem_1_RREADY (gmem_1_RREADY),
    .TRAN_gmem_1_RDATA (gmem_1_RDATA),
    .TRAN_gmem_1_RLAST (gmem_1_RLAST),
    .TRAN_gmem_1_RID (gmem_1_RID),
    .TRAN_gmem_1_RUSER (gmem_1_RUSER),
    .TRAN_gmem_1_RRESP (gmem_1_RRESP),
    .TRAN_gmem_1_BVALID (gmem_1_BVALID),
    .TRAN_gmem_1_BREADY (gmem_1_BREADY),
    .TRAN_gmem_1_BRESP (gmem_1_BRESP),
    .TRAN_gmem_1_BID (gmem_1_BID),
    .TRAN_gmem_1_BUSER (gmem_1_BUSER),
    .ready (AESL_axi_master_gmem_1_ready),
    .done  (AESL_axi_master_gmem_1_done)
);
assign    AESL_axi_master_gmem_1_ready    =   ready;
assign    AESL_axi_master_gmem_1_done    =   AESL_done_delay;
wire    AESL_axi_master_gmem_2_ready;
wire    AESL_axi_master_gmem_2_done;
AESL_axi_master_gmem_2 AESL_AXI_MASTER_gmem_2(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_gmem_2_AWVALID (gmem_2_AWVALID),
    .TRAN_gmem_2_AWREADY (gmem_2_AWREADY),
    .TRAN_gmem_2_AWADDR (gmem_2_AWADDR),
    .TRAN_gmem_2_AWID (gmem_2_AWID),
    .TRAN_gmem_2_AWLEN (gmem_2_AWLEN),
    .TRAN_gmem_2_AWSIZE (gmem_2_AWSIZE),
    .TRAN_gmem_2_AWBURST (gmem_2_AWBURST),
    .TRAN_gmem_2_AWLOCK (gmem_2_AWLOCK),
    .TRAN_gmem_2_AWCACHE (gmem_2_AWCACHE),
    .TRAN_gmem_2_AWPROT (gmem_2_AWPROT),
    .TRAN_gmem_2_AWQOS (gmem_2_AWQOS),
    .TRAN_gmem_2_AWREGION (gmem_2_AWREGION),
    .TRAN_gmem_2_AWUSER (gmem_2_AWUSER),
    .TRAN_gmem_2_WVALID (gmem_2_WVALID),
    .TRAN_gmem_2_WREADY (gmem_2_WREADY),
    .TRAN_gmem_2_WDATA (gmem_2_WDATA),
    .TRAN_gmem_2_WSTRB (gmem_2_WSTRB),
    .TRAN_gmem_2_WLAST (gmem_2_WLAST),
    .TRAN_gmem_2_WID (gmem_2_WID),
    .TRAN_gmem_2_WUSER (gmem_2_WUSER),
    .TRAN_gmem_2_ARVALID (gmem_2_ARVALID),
    .TRAN_gmem_2_ARREADY (gmem_2_ARREADY),
    .TRAN_gmem_2_ARADDR (gmem_2_ARADDR),
    .TRAN_gmem_2_ARID (gmem_2_ARID),
    .TRAN_gmem_2_ARLEN (gmem_2_ARLEN),
    .TRAN_gmem_2_ARSIZE (gmem_2_ARSIZE),
    .TRAN_gmem_2_ARBURST (gmem_2_ARBURST),
    .TRAN_gmem_2_ARLOCK (gmem_2_ARLOCK),
    .TRAN_gmem_2_ARCACHE (gmem_2_ARCACHE),
    .TRAN_gmem_2_ARPROT (gmem_2_ARPROT),
    .TRAN_gmem_2_ARQOS (gmem_2_ARQOS),
    .TRAN_gmem_2_ARREGION (gmem_2_ARREGION),
    .TRAN_gmem_2_ARUSER (gmem_2_ARUSER),
    .TRAN_gmem_2_RVALID (gmem_2_RVALID),
    .TRAN_gmem_2_RREADY (gmem_2_RREADY),
    .TRAN_gmem_2_RDATA (gmem_2_RDATA),
    .TRAN_gmem_2_RLAST (gmem_2_RLAST),
    .TRAN_gmem_2_RID (gmem_2_RID),
    .TRAN_gmem_2_RUSER (gmem_2_RUSER),
    .TRAN_gmem_2_RRESP (gmem_2_RRESP),
    .TRAN_gmem_2_BVALID (gmem_2_BVALID),
    .TRAN_gmem_2_BREADY (gmem_2_BREADY),
    .TRAN_gmem_2_BRESP (gmem_2_BRESP),
    .TRAN_gmem_2_BID (gmem_2_BID),
    .TRAN_gmem_2_BUSER (gmem_2_BUSER),
    .ready (AESL_axi_master_gmem_2_ready),
    .done  (AESL_axi_master_gmem_2_done)
);
assign    AESL_axi_master_gmem_2_ready    =   ready;
assign    AESL_axi_master_gmem_2_done    =   AESL_done_delay;
wire    AESL_axi_master_gmem_3_ready;
wire    AESL_axi_master_gmem_3_done;
AESL_axi_master_gmem_3 AESL_AXI_MASTER_gmem_3(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_gmem_3_AWVALID (gmem_3_AWVALID),
    .TRAN_gmem_3_AWREADY (gmem_3_AWREADY),
    .TRAN_gmem_3_AWADDR (gmem_3_AWADDR),
    .TRAN_gmem_3_AWID (gmem_3_AWID),
    .TRAN_gmem_3_AWLEN (gmem_3_AWLEN),
    .TRAN_gmem_3_AWSIZE (gmem_3_AWSIZE),
    .TRAN_gmem_3_AWBURST (gmem_3_AWBURST),
    .TRAN_gmem_3_AWLOCK (gmem_3_AWLOCK),
    .TRAN_gmem_3_AWCACHE (gmem_3_AWCACHE),
    .TRAN_gmem_3_AWPROT (gmem_3_AWPROT),
    .TRAN_gmem_3_AWQOS (gmem_3_AWQOS),
    .TRAN_gmem_3_AWREGION (gmem_3_AWREGION),
    .TRAN_gmem_3_AWUSER (gmem_3_AWUSER),
    .TRAN_gmem_3_WVALID (gmem_3_WVALID),
    .TRAN_gmem_3_WREADY (gmem_3_WREADY),
    .TRAN_gmem_3_WDATA (gmem_3_WDATA),
    .TRAN_gmem_3_WSTRB (gmem_3_WSTRB),
    .TRAN_gmem_3_WLAST (gmem_3_WLAST),
    .TRAN_gmem_3_WID (gmem_3_WID),
    .TRAN_gmem_3_WUSER (gmem_3_WUSER),
    .TRAN_gmem_3_ARVALID (gmem_3_ARVALID),
    .TRAN_gmem_3_ARREADY (gmem_3_ARREADY),
    .TRAN_gmem_3_ARADDR (gmem_3_ARADDR),
    .TRAN_gmem_3_ARID (gmem_3_ARID),
    .TRAN_gmem_3_ARLEN (gmem_3_ARLEN),
    .TRAN_gmem_3_ARSIZE (gmem_3_ARSIZE),
    .TRAN_gmem_3_ARBURST (gmem_3_ARBURST),
    .TRAN_gmem_3_ARLOCK (gmem_3_ARLOCK),
    .TRAN_gmem_3_ARCACHE (gmem_3_ARCACHE),
    .TRAN_gmem_3_ARPROT (gmem_3_ARPROT),
    .TRAN_gmem_3_ARQOS (gmem_3_ARQOS),
    .TRAN_gmem_3_ARREGION (gmem_3_ARREGION),
    .TRAN_gmem_3_ARUSER (gmem_3_ARUSER),
    .TRAN_gmem_3_RVALID (gmem_3_RVALID),
    .TRAN_gmem_3_RREADY (gmem_3_RREADY),
    .TRAN_gmem_3_RDATA (gmem_3_RDATA),
    .TRAN_gmem_3_RLAST (gmem_3_RLAST),
    .TRAN_gmem_3_RID (gmem_3_RID),
    .TRAN_gmem_3_RUSER (gmem_3_RUSER),
    .TRAN_gmem_3_RRESP (gmem_3_RRESP),
    .TRAN_gmem_3_BVALID (gmem_3_BVALID),
    .TRAN_gmem_3_BREADY (gmem_3_BREADY),
    .TRAN_gmem_3_BRESP (gmem_3_BRESP),
    .TRAN_gmem_3_BID (gmem_3_BID),
    .TRAN_gmem_3_BUSER (gmem_3_BUSER),
    .ready (AESL_axi_master_gmem_3_ready),
    .done  (AESL_axi_master_gmem_3_done)
);
assign    AESL_axi_master_gmem_3_ready    =   ready;
assign    AESL_axi_master_gmem_3_done    =   AESL_done_delay;
wire    AESL_axi_master_gmem_4_ready;
wire    AESL_axi_master_gmem_4_done;
AESL_axi_master_gmem_4 AESL_AXI_MASTER_gmem_4(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_gmem_4_AWVALID (gmem_4_AWVALID),
    .TRAN_gmem_4_AWREADY (gmem_4_AWREADY),
    .TRAN_gmem_4_AWADDR (gmem_4_AWADDR),
    .TRAN_gmem_4_AWID (gmem_4_AWID),
    .TRAN_gmem_4_AWLEN (gmem_4_AWLEN),
    .TRAN_gmem_4_AWSIZE (gmem_4_AWSIZE),
    .TRAN_gmem_4_AWBURST (gmem_4_AWBURST),
    .TRAN_gmem_4_AWLOCK (gmem_4_AWLOCK),
    .TRAN_gmem_4_AWCACHE (gmem_4_AWCACHE),
    .TRAN_gmem_4_AWPROT (gmem_4_AWPROT),
    .TRAN_gmem_4_AWQOS (gmem_4_AWQOS),
    .TRAN_gmem_4_AWREGION (gmem_4_AWREGION),
    .TRAN_gmem_4_AWUSER (gmem_4_AWUSER),
    .TRAN_gmem_4_WVALID (gmem_4_WVALID),
    .TRAN_gmem_4_WREADY (gmem_4_WREADY),
    .TRAN_gmem_4_WDATA (gmem_4_WDATA),
    .TRAN_gmem_4_WSTRB (gmem_4_WSTRB),
    .TRAN_gmem_4_WLAST (gmem_4_WLAST),
    .TRAN_gmem_4_WID (gmem_4_WID),
    .TRAN_gmem_4_WUSER (gmem_4_WUSER),
    .TRAN_gmem_4_ARVALID (gmem_4_ARVALID),
    .TRAN_gmem_4_ARREADY (gmem_4_ARREADY),
    .TRAN_gmem_4_ARADDR (gmem_4_ARADDR),
    .TRAN_gmem_4_ARID (gmem_4_ARID),
    .TRAN_gmem_4_ARLEN (gmem_4_ARLEN),
    .TRAN_gmem_4_ARSIZE (gmem_4_ARSIZE),
    .TRAN_gmem_4_ARBURST (gmem_4_ARBURST),
    .TRAN_gmem_4_ARLOCK (gmem_4_ARLOCK),
    .TRAN_gmem_4_ARCACHE (gmem_4_ARCACHE),
    .TRAN_gmem_4_ARPROT (gmem_4_ARPROT),
    .TRAN_gmem_4_ARQOS (gmem_4_ARQOS),
    .TRAN_gmem_4_ARREGION (gmem_4_ARREGION),
    .TRAN_gmem_4_ARUSER (gmem_4_ARUSER),
    .TRAN_gmem_4_RVALID (gmem_4_RVALID),
    .TRAN_gmem_4_RREADY (gmem_4_RREADY),
    .TRAN_gmem_4_RDATA (gmem_4_RDATA),
    .TRAN_gmem_4_RLAST (gmem_4_RLAST),
    .TRAN_gmem_4_RID (gmem_4_RID),
    .TRAN_gmem_4_RUSER (gmem_4_RUSER),
    .TRAN_gmem_4_RRESP (gmem_4_RRESP),
    .TRAN_gmem_4_BVALID (gmem_4_BVALID),
    .TRAN_gmem_4_BREADY (gmem_4_BREADY),
    .TRAN_gmem_4_BRESP (gmem_4_BRESP),
    .TRAN_gmem_4_BID (gmem_4_BID),
    .TRAN_gmem_4_BUSER (gmem_4_BUSER),
    .ready (AESL_axi_master_gmem_4_ready),
    .done  (AESL_axi_master_gmem_4_done)
);
assign    AESL_axi_master_gmem_4_ready    =   ready;
assign    AESL_axi_master_gmem_4_done    =   AESL_done_delay;
wire    AESL_axi_master_gmem_5_ready;
wire    AESL_axi_master_gmem_5_done;
AESL_axi_master_gmem_5 AESL_AXI_MASTER_gmem_5(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_gmem_5_AWVALID (gmem_5_AWVALID),
    .TRAN_gmem_5_AWREADY (gmem_5_AWREADY),
    .TRAN_gmem_5_AWADDR (gmem_5_AWADDR),
    .TRAN_gmem_5_AWID (gmem_5_AWID),
    .TRAN_gmem_5_AWLEN (gmem_5_AWLEN),
    .TRAN_gmem_5_AWSIZE (gmem_5_AWSIZE),
    .TRAN_gmem_5_AWBURST (gmem_5_AWBURST),
    .TRAN_gmem_5_AWLOCK (gmem_5_AWLOCK),
    .TRAN_gmem_5_AWCACHE (gmem_5_AWCACHE),
    .TRAN_gmem_5_AWPROT (gmem_5_AWPROT),
    .TRAN_gmem_5_AWQOS (gmem_5_AWQOS),
    .TRAN_gmem_5_AWREGION (gmem_5_AWREGION),
    .TRAN_gmem_5_AWUSER (gmem_5_AWUSER),
    .TRAN_gmem_5_WVALID (gmem_5_WVALID),
    .TRAN_gmem_5_WREADY (gmem_5_WREADY),
    .TRAN_gmem_5_WDATA (gmem_5_WDATA),
    .TRAN_gmem_5_WSTRB (gmem_5_WSTRB),
    .TRAN_gmem_5_WLAST (gmem_5_WLAST),
    .TRAN_gmem_5_WID (gmem_5_WID),
    .TRAN_gmem_5_WUSER (gmem_5_WUSER),
    .TRAN_gmem_5_ARVALID (gmem_5_ARVALID),
    .TRAN_gmem_5_ARREADY (gmem_5_ARREADY),
    .TRAN_gmem_5_ARADDR (gmem_5_ARADDR),
    .TRAN_gmem_5_ARID (gmem_5_ARID),
    .TRAN_gmem_5_ARLEN (gmem_5_ARLEN),
    .TRAN_gmem_5_ARSIZE (gmem_5_ARSIZE),
    .TRAN_gmem_5_ARBURST (gmem_5_ARBURST),
    .TRAN_gmem_5_ARLOCK (gmem_5_ARLOCK),
    .TRAN_gmem_5_ARCACHE (gmem_5_ARCACHE),
    .TRAN_gmem_5_ARPROT (gmem_5_ARPROT),
    .TRAN_gmem_5_ARQOS (gmem_5_ARQOS),
    .TRAN_gmem_5_ARREGION (gmem_5_ARREGION),
    .TRAN_gmem_5_ARUSER (gmem_5_ARUSER),
    .TRAN_gmem_5_RVALID (gmem_5_RVALID),
    .TRAN_gmem_5_RREADY (gmem_5_RREADY),
    .TRAN_gmem_5_RDATA (gmem_5_RDATA),
    .TRAN_gmem_5_RLAST (gmem_5_RLAST),
    .TRAN_gmem_5_RID (gmem_5_RID),
    .TRAN_gmem_5_RUSER (gmem_5_RUSER),
    .TRAN_gmem_5_RRESP (gmem_5_RRESP),
    .TRAN_gmem_5_BVALID (gmem_5_BVALID),
    .TRAN_gmem_5_BREADY (gmem_5_BREADY),
    .TRAN_gmem_5_BRESP (gmem_5_BRESP),
    .TRAN_gmem_5_BID (gmem_5_BID),
    .TRAN_gmem_5_BUSER (gmem_5_BUSER),
    .ready (AESL_axi_master_gmem_5_ready),
    .done  (AESL_axi_master_gmem_5_done)
);
assign    AESL_axi_master_gmem_5_ready    =   ready;
assign    AESL_axi_master_gmem_5_done    =   AESL_done_delay;

AESL_axi_slave_control AESL_AXI_SLAVE_control(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_control_AWADDR (control_AWADDR),
    .TRAN_s_axi_control_AWVALID (control_AWVALID),
    .TRAN_s_axi_control_AWREADY (control_AWREADY),
    .TRAN_s_axi_control_WVALID (control_WVALID),
    .TRAN_s_axi_control_WREADY (control_WREADY),
    .TRAN_s_axi_control_WDATA (control_WDATA),
    .TRAN_s_axi_control_WSTRB (control_WSTRB),
    .TRAN_s_axi_control_ARADDR (control_ARADDR),
    .TRAN_s_axi_control_ARVALID (control_ARVALID),
    .TRAN_s_axi_control_ARREADY (control_ARREADY),
    .TRAN_s_axi_control_RVALID (control_RVALID),
    .TRAN_s_axi_control_RREADY (control_RREADY),
    .TRAN_s_axi_control_RDATA (control_RDATA),
    .TRAN_s_axi_control_RRESP (control_RRESP),
    .TRAN_s_axi_control_BVALID (control_BVALID),
    .TRAN_s_axi_control_BREADY (control_BREADY),
    .TRAN_s_axi_control_BRESP (control_BRESP),
    .TRAN_control_write_data_finish(control_write_data_finish),
    .TRAN_control_ready_in (AESL_slave_ready),
    .TRAN_control_done_in (AESL_slave_output_done),
    .TRAN_control_idle_in (AESL_idle),
    .TRAN_control_transaction_done_in (AESL_done_delay),
    .TRAN_control_start_in  (AESL_slave_start)
);

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 1);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 1);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (~AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        repeat(6) @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_gmem_0;
reg [31:0] size_gmem_0;
reg [31:0] size_gmem_0_backup;
reg end_gmem_1;
reg [31:0] size_gmem_1;
reg [31:0] size_gmem_1_backup;
reg end_gmem_2;
reg [31:0] size_gmem_2;
reg [31:0] size_gmem_2_backup;
reg end_gmem_3;
reg [31:0] size_gmem_3;
reg [31:0] size_gmem_3_backup;
reg end_gmem_4;
reg [31:0] size_gmem_4;
reg [31:0] size_gmem_4_backup;
reg end_gmem_5;
reg [31:0] size_gmem_5;
reg [31:0] size_gmem_5_backup;
reg end_arr_0;
reg [31:0] size_arr_0;
reg [31:0] size_arr_0_backup;
reg end_arr_1;
reg [31:0] size_arr_1;
reg [31:0] size_arr_1_backup;
reg end_arr_2;
reg [31:0] size_arr_2;
reg [31:0] size_arr_2_backup;
reg end_arr_3;
reg [31:0] size_arr_3;
reg [31:0] size_arr_3_backup;
reg end_arr_4;
reg [31:0] size_arr_4;
reg [31:0] size_arr_4_backup;
reg end_arr_5;
reg [31:0] size_arr_5;
reg [31:0] size_arr_5_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 0;
    # 100;
    repeat(0+3) @ (posedge AESL_clock);
    rst = 1;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 0;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    dut_rst = 1;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 1);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        if (start_cnt >= AUTOTB_TRANSACTION_NUM + 1) begin
            #0 start = 0;
        end
        @ (posedge AESL_clock);
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
task write_binary;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;

reg dump_tvout_finish_gmem_0;

initial begin : dump_tvout_runtime_sign_gmem_0
    integer fp;
    dump_tvout_finish_gmem_0 = 0;
    fp = $fopen(`AUTOTB_TVOUT_gmem_0_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_gmem_0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_gmem_0_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_gmem_0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_gmem_0 = 1;
end


reg dump_tvout_finish_gmem_1;

initial begin : dump_tvout_runtime_sign_gmem_1
    integer fp;
    dump_tvout_finish_gmem_1 = 0;
    fp = $fopen(`AUTOTB_TVOUT_gmem_1_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_gmem_1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_gmem_1_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_gmem_1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_gmem_1 = 1;
end


reg dump_tvout_finish_gmem_2;

initial begin : dump_tvout_runtime_sign_gmem_2
    integer fp;
    dump_tvout_finish_gmem_2 = 0;
    fp = $fopen(`AUTOTB_TVOUT_gmem_2_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_gmem_2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_gmem_2_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_gmem_2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_gmem_2 = 1;
end


reg dump_tvout_finish_gmem_3;

initial begin : dump_tvout_runtime_sign_gmem_3
    integer fp;
    dump_tvout_finish_gmem_3 = 0;
    fp = $fopen(`AUTOTB_TVOUT_gmem_3_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_gmem_3_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_gmem_3_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_gmem_3_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_gmem_3 = 1;
end


reg dump_tvout_finish_gmem_4;

initial begin : dump_tvout_runtime_sign_gmem_4
    integer fp;
    dump_tvout_finish_gmem_4 = 0;
    fp = $fopen(`AUTOTB_TVOUT_gmem_4_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_gmem_4_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_gmem_4_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_gmem_4_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_gmem_4 = 1;
end


reg dump_tvout_finish_gmem_5;

initial begin : dump_tvout_runtime_sign_gmem_5
    integer fp;
    dump_tvout_finish_gmem_5 = 0;
    fp = $fopen(`AUTOTB_TVOUT_gmem_5_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_gmem_5_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_gmem_5_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_gmem_5_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_gmem_5 = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    if (AESL_reset == 0) begin
        clk_cnt <= 32'h0;
        AESL_ready_p1 <= 1'b0;
        AESL_start_p1 <= 1'b0;
    end
    else begin
        clk_cnt <= clk_cnt + 1;
        AESL_ready_p1 <= AESL_ready;
        AESL_start_p1 <= AESL_start;
    end
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
reg [31:0] lat_total;
event report_progress;

always @(posedge AESL_clock)
begin
    if (finish_cnt == AUTOTB_TRANSACTION_NUM - 1 && AESL_done == 1'b1)
        lat_total = clk_cnt - start_timestamp[0];
end

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 1);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 1);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    reg [31:0] total_execute_time;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;
        total_execute_time = lat_total;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);
        $fdisplay(fp, "$TOTAL_EXECUTE_TIME = \"%0d\"", total_execute_time);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif
///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(~rst),
    .finish(all_finish));

`include "fifo_para.vh"

endmodule
