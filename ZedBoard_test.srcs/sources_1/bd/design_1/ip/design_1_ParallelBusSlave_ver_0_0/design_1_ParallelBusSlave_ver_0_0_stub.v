// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Oct  9 15:47:10 2026
// Host        : STAS-W10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/GITEA/GitHub/ES/Zedboard/ZedBoard_test.srcs/sources_1/bd/design_1/ip/design_1_ParallelBusSlave_ver_0_0/design_1_ParallelBusSlave_ver_0_0_stub.v
// Design      : design_1_ParallelBusSlave_ver_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ParallelBusSlave_ver_2_0,Vivado 2019.1" *)
module design_1_ParallelBusSlave_ver_0_0(clk, pbclk, pbdata, pbce, pback, addressregister, 
  datain, dataready)
/* synthesis syn_black_box black_box_pad_pin="clk,pbclk,pbdata[15:0],pbce,pback,addressregister[7:0],datain[15:0],dataready" */;
  input clk;
  input pbclk;
  inout [15:0]pbdata;
  input pbce;
  output pback;
  output [7:0]addressregister;
  input [15:0]datain;
  output dataready;
endmodule
