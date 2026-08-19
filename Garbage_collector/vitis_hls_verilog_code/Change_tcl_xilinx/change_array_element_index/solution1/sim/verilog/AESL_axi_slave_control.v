// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

module AESL_axi_slave_control (
    clk,
    reset,
    TRAN_s_axi_control_AWADDR,
    TRAN_s_axi_control_AWVALID,
    TRAN_s_axi_control_AWREADY,
    TRAN_s_axi_control_WVALID,
    TRAN_s_axi_control_WREADY,
    TRAN_s_axi_control_WDATA,
    TRAN_s_axi_control_WSTRB,
    TRAN_s_axi_control_ARADDR,
    TRAN_s_axi_control_ARVALID,
    TRAN_s_axi_control_ARREADY,
    TRAN_s_axi_control_RVALID,
    TRAN_s_axi_control_RREADY,
    TRAN_s_axi_control_RDATA,
    TRAN_s_axi_control_RRESP,
    TRAN_s_axi_control_BVALID,
    TRAN_s_axi_control_BREADY,
    TRAN_s_axi_control_BRESP,
    TRAN_control_write_data_finish,
    TRAN_control_start_in,
    TRAN_control_idle_in,
    TRAN_control_ready_in,
    TRAN_control_done_in,
    TRAN_control_transaction_done_in
    );

//------------------------Parameter----------------------
`define TV_IN_arr_0 "../tv/cdatafile/c.processArray.autotvin_arr_0.dat"
`define TV_IN_arr_1 "../tv/cdatafile/c.processArray.autotvin_arr_1.dat"
`define TV_IN_arr_2 "../tv/cdatafile/c.processArray.autotvin_arr_2.dat"
`define TV_IN_arr_3 "../tv/cdatafile/c.processArray.autotvin_arr_3.dat"
`define TV_IN_arr_4 "../tv/cdatafile/c.processArray.autotvin_arr_4.dat"
`define TV_IN_arr_5 "../tv/cdatafile/c.processArray.autotvin_arr_5.dat"
parameter ADDR_WIDTH = 7;
parameter DATA_WIDTH = 32;
parameter arr_0_DEPTH = 1;
reg [31 : 0] arr_0_OPERATE_DEPTH = 0;
parameter arr_0_c_bitwidth = 64;
parameter arr_1_DEPTH = 1;
reg [31 : 0] arr_1_OPERATE_DEPTH = 0;
parameter arr_1_c_bitwidth = 64;
parameter arr_2_DEPTH = 1;
reg [31 : 0] arr_2_OPERATE_DEPTH = 0;
parameter arr_2_c_bitwidth = 64;
parameter arr_3_DEPTH = 1;
reg [31 : 0] arr_3_OPERATE_DEPTH = 0;
parameter arr_3_c_bitwidth = 64;
parameter arr_4_DEPTH = 1;
reg [31 : 0] arr_4_OPERATE_DEPTH = 0;
parameter arr_4_c_bitwidth = 64;
parameter arr_5_DEPTH = 1;
reg [31 : 0] arr_5_OPERATE_DEPTH = 0;
parameter arr_5_c_bitwidth = 64;
parameter arr_0_data_in_addr = 16;
parameter arr_1_data_in_addr = 28;
parameter arr_2_data_in_addr = 40;
parameter arr_3_data_in_addr = 52;
parameter arr_4_data_in_addr = 64;
parameter arr_5_data_in_addr = 76;

output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_control_AWADDR;
output  TRAN_s_axi_control_AWVALID;
input  TRAN_s_axi_control_AWREADY;
output  TRAN_s_axi_control_WVALID;
input  TRAN_s_axi_control_WREADY;
output [DATA_WIDTH - 1 : 0] TRAN_s_axi_control_WDATA;
output [DATA_WIDTH/8 - 1 : 0] TRAN_s_axi_control_WSTRB;
output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_control_ARADDR;
output  TRAN_s_axi_control_ARVALID;
input  TRAN_s_axi_control_ARREADY;
input  TRAN_s_axi_control_RVALID;
output  TRAN_s_axi_control_RREADY;
input [DATA_WIDTH - 1 : 0] TRAN_s_axi_control_RDATA;
input [2 - 1 : 0] TRAN_s_axi_control_RRESP;
input  TRAN_s_axi_control_BVALID;
output  TRAN_s_axi_control_BREADY;
input [2 - 1 : 0] TRAN_s_axi_control_BRESP;
output TRAN_control_write_data_finish;
input     clk;
input     reset;
input     TRAN_control_start_in;
input     TRAN_control_done_in;
input     TRAN_control_ready_in;
input     TRAN_control_idle_in;
input     TRAN_control_transaction_done_in;

reg [ADDR_WIDTH - 1 : 0] AWADDR_reg = 0;
reg  AWVALID_reg = 0;
reg  WVALID_reg = 0;
reg [DATA_WIDTH - 1 : 0] WDATA_reg = 0;
reg [DATA_WIDTH/8 - 1 : 0] WSTRB_reg = 0;
reg [ADDR_WIDTH - 1 : 0] ARADDR_reg = 0;
reg  ARVALID_reg = 0;
reg  RREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] RDATA_reg = 0;
reg  BREADY_reg = 0;
reg [arr_0_c_bitwidth - 1 : 0] mem_arr_0 [arr_0_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_arr_0 [ (arr_0_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * arr_0_DEPTH -1 : 0] = '{default : 'hz};
reg arr_0_write_data_finish;
reg [arr_1_c_bitwidth - 1 : 0] mem_arr_1 [arr_1_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_arr_1 [ (arr_1_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * arr_1_DEPTH -1 : 0] = '{default : 'hz};
reg arr_1_write_data_finish;
reg [arr_2_c_bitwidth - 1 : 0] mem_arr_2 [arr_2_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_arr_2 [ (arr_2_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * arr_2_DEPTH -1 : 0] = '{default : 'hz};
reg arr_2_write_data_finish;
reg [arr_3_c_bitwidth - 1 : 0] mem_arr_3 [arr_3_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_arr_3 [ (arr_3_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * arr_3_DEPTH -1 : 0] = '{default : 'hz};
reg arr_3_write_data_finish;
reg [arr_4_c_bitwidth - 1 : 0] mem_arr_4 [arr_4_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_arr_4 [ (arr_4_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * arr_4_DEPTH -1 : 0] = '{default : 'hz};
reg arr_4_write_data_finish;
reg [arr_5_c_bitwidth - 1 : 0] mem_arr_5 [arr_5_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_arr_5 [ (arr_5_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * arr_5_DEPTH -1 : 0] = '{default : 'hz};
reg arr_5_write_data_finish;
reg AESL_ready_out_index_reg = 0;
reg AESL_write_start_finish = 0;
reg AESL_ready_reg;
reg ready_initial;
reg AESL_done_index_reg = 0;
reg AESL_idle_index_reg = 0;
reg AESL_auto_restart_index_reg;
reg process_0_finish = 0;
reg process_1_finish = 0;
reg process_2_finish = 0;
reg process_3_finish = 0;
reg process_4_finish = 0;
reg process_5_finish = 0;
//write arr_0 reg
reg [31 : 0] write_arr_0_count = 0;
reg write_arr_0_run_flag = 0;
reg write_one_arr_0_data_done = 0;
//write arr_1 reg
reg [31 : 0] write_arr_1_count = 0;
reg write_arr_1_run_flag = 0;
reg write_one_arr_1_data_done = 0;
//write arr_2 reg
reg [31 : 0] write_arr_2_count = 0;
reg write_arr_2_run_flag = 0;
reg write_one_arr_2_data_done = 0;
//write arr_3 reg
reg [31 : 0] write_arr_3_count = 0;
reg write_arr_3_run_flag = 0;
reg write_one_arr_3_data_done = 0;
//write arr_4 reg
reg [31 : 0] write_arr_4_count = 0;
reg write_arr_4_run_flag = 0;
reg write_one_arr_4_data_done = 0;
//write arr_5 reg
reg [31 : 0] write_arr_5_count = 0;
reg write_arr_5_run_flag = 0;
reg write_one_arr_5_data_done = 0;

//===================process control=================
reg [31 : 0] ongoing_process_number = 0;
//process number depends on how much processes needed.
reg process_busy = 0;

//=================== signal connection ==============
assign TRAN_s_axi_control_AWADDR = AWADDR_reg;
assign TRAN_s_axi_control_AWVALID = AWVALID_reg;
assign TRAN_s_axi_control_WVALID = WVALID_reg;
assign TRAN_s_axi_control_WDATA = WDATA_reg;
assign TRAN_s_axi_control_WSTRB = WSTRB_reg;
assign TRAN_s_axi_control_ARADDR = ARADDR_reg;
assign TRAN_s_axi_control_ARVALID = ARVALID_reg;
assign TRAN_s_axi_control_RREADY = RREADY_reg;
assign TRAN_s_axi_control_BREADY = BREADY_reg;
assign TRAN_control_write_data_finish = 1 & arr_0_write_data_finish & arr_1_write_data_finish & arr_2_write_data_finish & arr_3_write_data_finish & arr_4_write_data_finish & arr_5_write_data_finish;
always @(TRAN_control_done_in) 
begin
    AESL_done_index_reg <= TRAN_control_done_in;
end
always @(TRAN_control_ready_in or ready_initial) 
begin
    AESL_ready_reg <= TRAN_control_ready_in | ready_initial;
end

always @(reset or process_0_finish or process_1_finish or process_2_finish or process_3_finish or process_4_finish or process_5_finish ) begin
    if (reset == 0) begin
        ongoing_process_number <= 0;
    end
    else if (ongoing_process_number == 0 && process_0_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 1 && process_1_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 2 && process_2_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 3 && process_3_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 4 && process_4_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 5 && process_5_finish == 1) begin
            ongoing_process_number <= 0;
    end
end

task count_c_data_four_byte_num_by_bitwidth;
input  integer bitwidth;
output integer num;
integer factor;
integer i;
begin
    factor = 32;
    for (i = 1; i <= 1024; i = i + 1) begin
        if (bitwidth <= factor && bitwidth > factor - 32) begin
            num = i;
        end
        factor = factor + 32;
    end
end    
endtask

task count_seperate_factor_by_bitwidth;
input  integer bitwidth;
output integer factor;
begin
    if (bitwidth <= 8) begin
        factor=4;
    end
    if (bitwidth <= 16 & bitwidth > 8 ) begin
        factor=2;
    end
    if (bitwidth <= 32 & bitwidth > 16 ) begin
        factor=1;
    end
    if (bitwidth > 32 ) begin
        factor=1;
    end
end    
endtask

task count_operate_depth_by_bitwidth_and_depth;
input  integer bitwidth;
input  integer depth;
output integer operate_depth;
integer factor;
integer remain;
begin
    count_seperate_factor_by_bitwidth (bitwidth , factor);
    operate_depth = depth / factor;
    remain = depth % factor;
    if (remain > 0) begin
        operate_depth = operate_depth + 1;
    end
end    
endtask

task write; /*{{{*/
    input  reg [ADDR_WIDTH - 1:0] waddr;   // write address
    input  reg [DATA_WIDTH - 1:0] wdata;   // write data
    output reg wresp;
    reg aw_flag;
    reg w_flag;
    reg [DATA_WIDTH/8 - 1:0] wstrb_reg;
    integer i;
begin 
    wresp = 0;
    aw_flag = 0;
    w_flag = 0;
//=======================one single write operate======================
    AWADDR_reg <= waddr;
    AWVALID_reg <= 1;
    WDATA_reg <= wdata;
    WVALID_reg <= 1;
    for (i = 0; i < DATA_WIDTH/8; i = i + 1) begin
        wstrb_reg [i] = 1;
    end    
    WSTRB_reg <= wstrb_reg;
    while (!(aw_flag && w_flag)) begin
        @(posedge clk);
        if (aw_flag != 1)
            aw_flag = TRAN_s_axi_control_AWREADY & AWVALID_reg;
        if (w_flag != 1)
            w_flag = TRAN_s_axi_control_WREADY & WVALID_reg;
        AWVALID_reg <= !aw_flag;
        WVALID_reg <= !w_flag;
    end

    BREADY_reg <= 1;
    while (TRAN_s_axi_control_BVALID != 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    BREADY_reg <= 0;
    if (TRAN_s_axi_control_BRESP === 2'b00) begin
        wresp = 1;
        //input success. in fact BRESP is always 2'b00
    end   
//=======================one single write operate======================

end
endtask/*}}}*/

task read (/*{{{*/
    input  [ADDR_WIDTH - 1:0] raddr ,   // write address
    output [DATA_WIDTH - 1:0] RDATA_result ,
    output rresp
);
begin 
    rresp = 0;
//=======================one single read operate======================
    ARADDR_reg <= raddr;
    ARVALID_reg <= 1;
    while (TRAN_s_axi_control_ARREADY !== 1) begin
        @(posedge clk);
    end
    @(posedge clk);
    ARVALID_reg <= 0;
    RREADY_reg <= 1;
    while (TRAN_s_axi_control_RVALID !== 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    RDATA_result  <= TRAN_s_axi_control_RDATA;
    RREADY_reg <= 0;
    if (TRAN_s_axi_control_RRESP === 2'b00 ) begin
        rresp <= 1;
        //output success. in fact RRESP is always 2'b00
    end  
    @(posedge clk);

//=======================one single read operate end======================

end
endtask/*}}}*/

initial begin : ready_initial_process
    ready_initial = 0;
    wait(reset === 1);
    @(posedge clk);
    ready_initial = 1;
    @(posedge clk);
    ready_initial = 0;
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        arr_0_write_data_finish <= 0;
        write_arr_0_run_flag <= 0; 
        write_arr_0_count = 0;
        count_operate_depth_by_bitwidth_and_depth (arr_0_c_bitwidth, arr_0_DEPTH, arr_0_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            arr_0_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_arr_0_run_flag <= 1; 
            write_arr_0_count = 0;
        end
        if (write_one_arr_0_data_done === 1) begin
            write_arr_0_count = write_arr_0_count + 1;
            if (write_arr_0_count == arr_0_OPERATE_DEPTH) begin
                write_arr_0_run_flag <= 0; 
                arr_0_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_arr_0
    integer write_arr_0_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] arr_0_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = arr_0_c_bitwidth;
    process_num = 0;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_0_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_arr_0_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write arr_0 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (arr_0_c_bitwidth < 32) begin
                        arr_0_data_tmp_reg = mem_arr_0[write_arr_0_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < arr_0_c_bitwidth) begin
                                arr_0_data_tmp_reg[j] = mem_arr_0[write_arr_0_count][i*32 + j];
                            end
                            else begin
                                arr_0_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_arr_0[write_arr_0_count * four_byte_num  + i]!==arr_0_data_tmp_reg) begin
                    write (arr_0_data_in_addr + write_arr_0_count * four_byte_num * 4 + i * 4, arr_0_data_tmp_reg, write_arr_0_resp);
                    image_mem_arr_0[write_arr_0_count * four_byte_num + i]=arr_0_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_arr_0_data_done <= 1;
                @(posedge clk);
                write_one_arr_0_data_done <= 0;
            end   
            process_0_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        arr_1_write_data_finish <= 0;
        write_arr_1_run_flag <= 0; 
        write_arr_1_count = 0;
        count_operate_depth_by_bitwidth_and_depth (arr_1_c_bitwidth, arr_1_DEPTH, arr_1_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            arr_1_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_arr_1_run_flag <= 1; 
            write_arr_1_count = 0;
        end
        if (write_one_arr_1_data_done === 1) begin
            write_arr_1_count = write_arr_1_count + 1;
            if (write_arr_1_count == arr_1_OPERATE_DEPTH) begin
                write_arr_1_run_flag <= 0; 
                arr_1_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_arr_1
    integer write_arr_1_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] arr_1_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = arr_1_c_bitwidth;
    process_num = 1;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_1_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_arr_1_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write arr_1 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (arr_1_c_bitwidth < 32) begin
                        arr_1_data_tmp_reg = mem_arr_1[write_arr_1_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < arr_1_c_bitwidth) begin
                                arr_1_data_tmp_reg[j] = mem_arr_1[write_arr_1_count][i*32 + j];
                            end
                            else begin
                                arr_1_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_arr_1[write_arr_1_count * four_byte_num  + i]!==arr_1_data_tmp_reg) begin
                    write (arr_1_data_in_addr + write_arr_1_count * four_byte_num * 4 + i * 4, arr_1_data_tmp_reg, write_arr_1_resp);
                    image_mem_arr_1[write_arr_1_count * four_byte_num + i]=arr_1_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_arr_1_data_done <= 1;
                @(posedge clk);
                write_one_arr_1_data_done <= 0;
            end   
            process_1_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        arr_2_write_data_finish <= 0;
        write_arr_2_run_flag <= 0; 
        write_arr_2_count = 0;
        count_operate_depth_by_bitwidth_and_depth (arr_2_c_bitwidth, arr_2_DEPTH, arr_2_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            arr_2_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_arr_2_run_flag <= 1; 
            write_arr_2_count = 0;
        end
        if (write_one_arr_2_data_done === 1) begin
            write_arr_2_count = write_arr_2_count + 1;
            if (write_arr_2_count == arr_2_OPERATE_DEPTH) begin
                write_arr_2_run_flag <= 0; 
                arr_2_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_arr_2
    integer write_arr_2_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] arr_2_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = arr_2_c_bitwidth;
    process_num = 2;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_2_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_arr_2_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write arr_2 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (arr_2_c_bitwidth < 32) begin
                        arr_2_data_tmp_reg = mem_arr_2[write_arr_2_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < arr_2_c_bitwidth) begin
                                arr_2_data_tmp_reg[j] = mem_arr_2[write_arr_2_count][i*32 + j];
                            end
                            else begin
                                arr_2_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_arr_2[write_arr_2_count * four_byte_num  + i]!==arr_2_data_tmp_reg) begin
                    write (arr_2_data_in_addr + write_arr_2_count * four_byte_num * 4 + i * 4, arr_2_data_tmp_reg, write_arr_2_resp);
                    image_mem_arr_2[write_arr_2_count * four_byte_num + i]=arr_2_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_arr_2_data_done <= 1;
                @(posedge clk);
                write_one_arr_2_data_done <= 0;
            end   
            process_2_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        arr_3_write_data_finish <= 0;
        write_arr_3_run_flag <= 0; 
        write_arr_3_count = 0;
        count_operate_depth_by_bitwidth_and_depth (arr_3_c_bitwidth, arr_3_DEPTH, arr_3_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            arr_3_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_arr_3_run_flag <= 1; 
            write_arr_3_count = 0;
        end
        if (write_one_arr_3_data_done === 1) begin
            write_arr_3_count = write_arr_3_count + 1;
            if (write_arr_3_count == arr_3_OPERATE_DEPTH) begin
                write_arr_3_run_flag <= 0; 
                arr_3_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_arr_3
    integer write_arr_3_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] arr_3_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = arr_3_c_bitwidth;
    process_num = 3;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_3_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_arr_3_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write arr_3 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (arr_3_c_bitwidth < 32) begin
                        arr_3_data_tmp_reg = mem_arr_3[write_arr_3_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < arr_3_c_bitwidth) begin
                                arr_3_data_tmp_reg[j] = mem_arr_3[write_arr_3_count][i*32 + j];
                            end
                            else begin
                                arr_3_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_arr_3[write_arr_3_count * four_byte_num  + i]!==arr_3_data_tmp_reg) begin
                    write (arr_3_data_in_addr + write_arr_3_count * four_byte_num * 4 + i * 4, arr_3_data_tmp_reg, write_arr_3_resp);
                    image_mem_arr_3[write_arr_3_count * four_byte_num + i]=arr_3_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_arr_3_data_done <= 1;
                @(posedge clk);
                write_one_arr_3_data_done <= 0;
            end   
            process_3_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        arr_4_write_data_finish <= 0;
        write_arr_4_run_flag <= 0; 
        write_arr_4_count = 0;
        count_operate_depth_by_bitwidth_and_depth (arr_4_c_bitwidth, arr_4_DEPTH, arr_4_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            arr_4_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_arr_4_run_flag <= 1; 
            write_arr_4_count = 0;
        end
        if (write_one_arr_4_data_done === 1) begin
            write_arr_4_count = write_arr_4_count + 1;
            if (write_arr_4_count == arr_4_OPERATE_DEPTH) begin
                write_arr_4_run_flag <= 0; 
                arr_4_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_arr_4
    integer write_arr_4_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] arr_4_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = arr_4_c_bitwidth;
    process_num = 4;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_4_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_arr_4_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write arr_4 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (arr_4_c_bitwidth < 32) begin
                        arr_4_data_tmp_reg = mem_arr_4[write_arr_4_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < arr_4_c_bitwidth) begin
                                arr_4_data_tmp_reg[j] = mem_arr_4[write_arr_4_count][i*32 + j];
                            end
                            else begin
                                arr_4_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_arr_4[write_arr_4_count * four_byte_num  + i]!==arr_4_data_tmp_reg) begin
                    write (arr_4_data_in_addr + write_arr_4_count * four_byte_num * 4 + i * 4, arr_4_data_tmp_reg, write_arr_4_resp);
                    image_mem_arr_4[write_arr_4_count * four_byte_num + i]=arr_4_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_arr_4_data_done <= 1;
                @(posedge clk);
                write_one_arr_4_data_done <= 0;
            end   
            process_4_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        arr_5_write_data_finish <= 0;
        write_arr_5_run_flag <= 0; 
        write_arr_5_count = 0;
        count_operate_depth_by_bitwidth_and_depth (arr_5_c_bitwidth, arr_5_DEPTH, arr_5_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            arr_5_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_arr_5_run_flag <= 1; 
            write_arr_5_count = 0;
        end
        if (write_one_arr_5_data_done === 1) begin
            write_arr_5_count = write_arr_5_count + 1;
            if (write_arr_5_count == arr_5_OPERATE_DEPTH) begin
                write_arr_5_run_flag <= 0; 
                arr_5_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_arr_5
    integer write_arr_5_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] arr_5_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = arr_5_c_bitwidth;
    process_num = 5;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_5_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_arr_5_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write arr_5 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (arr_5_c_bitwidth < 32) begin
                        arr_5_data_tmp_reg = mem_arr_5[write_arr_5_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < arr_5_c_bitwidth) begin
                                arr_5_data_tmp_reg[j] = mem_arr_5[write_arr_5_count][i*32 + j];
                            end
                            else begin
                                arr_5_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_arr_5[write_arr_5_count * four_byte_num  + i]!==arr_5_data_tmp_reg) begin
                    write (arr_5_data_in_addr + write_arr_5_count * four_byte_num * 4 + i * 4, arr_5_data_tmp_reg, write_arr_5_resp);
                    image_mem_arr_5[write_arr_5_count * four_byte_num + i]=arr_5_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_arr_5_data_done <= 1;
                @(posedge clk);
                write_one_arr_5_data_done <= 0;
            end   
            process_5_finish <= 1;
        end
        @(posedge clk);
    end    
end

//------------------------Task and function-------------- 
task read_token; 
    input integer fp; 
    output reg [151 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end 
endtask 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_arr_0_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [arr_0_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (arr_0_c_bitwidth , factor);
  fp = $fopen(`TV_IN_arr_0 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_arr_0); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < arr_0_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_arr_0 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_arr_0 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_arr_0 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_arr_0 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_arr_0 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_arr_0;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_arr_1_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [arr_1_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (arr_1_c_bitwidth , factor);
  fp = $fopen(`TV_IN_arr_1 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_arr_1); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < arr_1_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_arr_1 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_arr_1 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_arr_1 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_arr_1 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_arr_1 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_arr_1;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_arr_2_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [arr_2_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (arr_2_c_bitwidth , factor);
  fp = $fopen(`TV_IN_arr_2 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_arr_2); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < arr_2_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_arr_2 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_arr_2 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_arr_2 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_arr_2 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_arr_2 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_arr_2;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_arr_3_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [arr_3_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (arr_3_c_bitwidth , factor);
  fp = $fopen(`TV_IN_arr_3 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_arr_3); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < arr_3_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_arr_3 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_arr_3 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_arr_3 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_arr_3 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_arr_3 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_arr_3;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_arr_4_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [arr_4_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (arr_4_c_bitwidth , factor);
  fp = $fopen(`TV_IN_arr_4 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_arr_4); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < arr_4_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_arr_4 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_arr_4 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_arr_4 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_arr_4 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_arr_4 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_arr_4;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_arr_5_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [arr_5_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (arr_5_c_bitwidth , factor);
  fp = $fopen(`TV_IN_arr_5 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_arr_5); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < arr_5_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_arr_5 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_arr_5 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_arr_5 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_arr_5 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_arr_5 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_arr_5;
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
endmodule
