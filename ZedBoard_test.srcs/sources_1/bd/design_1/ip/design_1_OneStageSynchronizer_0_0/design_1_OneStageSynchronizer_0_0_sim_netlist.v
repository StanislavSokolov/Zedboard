// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Oct  9 15:46:19 2026
// Host        : STAS-W10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_OneStageSynchronizer_0_0 -prefix
//               design_1_OneStageSynchronizer_0_0_ design_1_OneStageSynchronizer_0_1_sim_netlist.v
// Design      : design_1_OneStageSynchronizer_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_OneStageSynchronizer_0_0_OneStageSynchronizerAndDigitalFilterSingle_ver_1_0
   (sync_signal,
    async_signal,
    clk);
  output sync_signal;
  input async_signal;
  input clk;

  wire async_signal;
  wire clk;
  wire [3:1]cnt;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[3]_i_1_n_0 ;
  wire [3:0]cnt_reg;
  wire latch;
  wire sync_signal;
  wire sync_signal_i_1_n_0;
  wire sync_signal_i_2_n_0;
  wire sync_stage1;

  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt_reg[0]),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1 
       (.I0(cnt_reg[1]),
        .I1(cnt_reg[0]),
        .O(cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt[2]_i_1 
       (.I0(cnt_reg[2]),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[0]),
        .O(cnt[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[3]_i_1 
       (.I0(sync_stage1),
        .I1(latch),
        .O(\cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cnt[3]_i_2 
       (.I0(cnt_reg[3]),
        .I1(cnt_reg[2]),
        .I2(cnt_reg[1]),
        .I3(cnt_reg[0]),
        .O(cnt[3]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt_reg[0]),
        .R(\cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt[1]),
        .Q(cnt_reg[1]),
        .R(\cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt[2]),
        .Q(cnt_reg[2]),
        .R(\cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt[3]),
        .Q(cnt_reg[3]),
        .R(\cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \latch_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(sync_stage1),
        .Q(latch),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hAEA8)) 
    sync_signal_i_1
       (.I0(sync_signal),
        .I1(latch),
        .I2(sync_signal_i_2_n_0),
        .I3(sync_stage1),
        .O(sync_signal_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    sync_signal_i_2
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[3]),
        .O(sync_signal_i_2_n_0));
  FDRE sync_signal_reg
       (.C(clk),
        .CE(1'b1),
        .D(sync_signal_i_1_n_0),
        .Q(sync_signal),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sync_stage1_reg
       (.C(clk),
        .CE(1'b1),
        .D(async_signal),
        .Q(sync_stage1),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_OneStageSynchronizer_0_1,OneStageSynchronizerAndDigitalFilterSingle_ver_1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "OneStageSynchronizerAndDigitalFilterSingle_ver_1_0,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module design_1_OneStageSynchronizer_0_0
   (clk,
    async_signal,
    sync_signal);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input clk;
  input async_signal;
  output sync_signal;

  wire async_signal;
  wire clk;
  wire sync_signal;

  design_1_OneStageSynchronizer_0_0_OneStageSynchronizerAndDigitalFilterSingle_ver_1_0 U0
       (.async_signal(async_signal),
        .clk(clk),
        .sync_signal(sync_signal));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
