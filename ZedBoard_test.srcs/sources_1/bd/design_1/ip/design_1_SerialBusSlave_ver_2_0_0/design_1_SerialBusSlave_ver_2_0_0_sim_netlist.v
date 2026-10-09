// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Oct  9 13:56:21 2026
// Host        : STAS-W10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/GITEA/GitHub/ES/Zedboard/ZedBoard_test.srcs/sources_1/bd/design_1/ip/design_1_SerialBusSlave_ver_2_0_0/design_1_SerialBusSlave_ver_2_0_0_sim_netlist.v
// Design      : design_1_SerialBusSlave_ver_2_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_SerialBusSlave_ver_2_0_0,SerialBusSlave_ver_2_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "SerialBusSlave_ver_2_0,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module design_1_SerialBusSlave_ver_2_0_0
   (clk,
    sbclk,
    sbdatain,
    sbdataout,
    addressregister,
    dataout,
    datain,
    rw,
    dataready);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input clk;
  input sbclk;
  input sbdatain;
  output sbdataout;
  output [7:0]addressregister;
  output [15:0]dataout;
  input [15:0]datain;
  output rw;
  output dataready;

  wire U0_n_2;
  wire [7:0]addressregister;
  wire clk;
  wire [15:0]datain;
  wire [15:0]dataout;
  wire dataready;
  wire rw;
  wire sbclk;
  wire sbdatain;
  wire sbdataout;
  wire sbdataout_INST_0_i_1_n_0;

  design_1_SerialBusSlave_ver_2_0_0_SerialBusSlave_ver_2_0 U0
       (.addressregister(addressregister),
        .clk(clk),
        .datain(datain),
        .dataout(dataout),
        .dataready(dataready),
        .direction_reg_0(rw),
        .sbclk(sbclk),
        .sbdatain(sbdatain),
        .sbdataout(sbdataout),
        .sbdataout_INST_0_i_1(U0_n_2),
        .sbdataout_INST_0_i_1_0(sbdataout_INST_0_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    sbdataout_INST_0_i_1
       (.C(clk),
        .CE(1'b1),
        .D(U0_n_2),
        .Q(sbdataout_INST_0_i_1_n_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "SerialBusSlave_ver_2_0" *) 
module design_1_SerialBusSlave_ver_2_0_0_SerialBusSlave_ver_2_0
   (direction_reg_0,
    dataready,
    sbdataout_INST_0_i_1,
    sbdataout,
    addressregister,
    dataout,
    sbclk,
    clk,
    sbdatain,
    sbdataout_INST_0_i_1_0,
    datain);
  output direction_reg_0;
  output dataready;
  output sbdataout_INST_0_i_1;
  output sbdataout;
  output [7:0]addressregister;
  output [15:0]dataout;
  input sbclk;
  input clk;
  input sbdatain;
  input sbdataout_INST_0_i_1_0;
  input [15:0]datain;

  wire CRC0;
  wire CRC02_out;
  wire \CRC[0]_i_10_n_0 ;
  wire \CRC[0]_i_11_n_0 ;
  wire \CRC[0]_i_1_n_0 ;
  wire \CRC[0]_i_4_n_0 ;
  wire \CRC[0]_i_5_n_0 ;
  wire \CRC[0]_i_6_n_0 ;
  wire \CRC[0]_i_7_n_0 ;
  wire \CRC[0]_i_8_n_0 ;
  wire \CRC[0]_i_9_n_0 ;
  wire \CRC[3]_i_1_n_0 ;
  wire \CRC_reg[0]_i_2_n_0 ;
  wire \CRC_reg[0]_i_3_n_0 ;
  wire \CRC_reg_n_0_[0] ;
  wire \CRC_reg_n_0_[2] ;
  wire [2:0]CommunicationState__0;
  wire \FSM_sequential_CommunicationState[0]_i_1_n_0 ;
  wire \FSM_sequential_CommunicationState[0]_i_2_n_0 ;
  wire \FSM_sequential_CommunicationState[1]_i_1_n_0 ;
  wire \FSM_sequential_CommunicationState[1]_i_2_n_0 ;
  wire \FSM_sequential_CommunicationState[1]_i_3_n_0 ;
  wire \FSM_sequential_CommunicationState[1]_i_4_n_0 ;
  wire \FSM_sequential_CommunicationState[2]_i_1_n_0 ;
  wire \FSM_sequential_CommunicationState[2]_i_2_n_0 ;
  wire \FSM_sequential_CommunicationState[2]_i_3_n_0 ;
  wire \FSM_sequential_CommunicationState[2]_i_4_n_0 ;
  wire \FSM_sequential_CommunicationState[2]_i_5_n_0 ;
  wire \FSM_sequential_CommunicationState[2]_i_6_n_0 ;
  wire \FSM_sequential_CommunicationState[2]_i_7_n_0 ;
  wire \FSM_sequential_CommunicationState[2]_i_8_n_0 ;
  wire [7:7]addDevRegBuf;
  wire \addDevRegBuf[0]_i_1_n_0 ;
  wire \addDevRegBuf[1]_i_1_n_0 ;
  wire \addDevRegBuf[2]_i_1_n_0 ;
  wire \addDevRegBuf[2]_i_2_n_0 ;
  wire \addDevRegBuf[3]_i_1_n_0 ;
  wire \addDevRegBuf[4]_i_1_n_0 ;
  wire \addDevRegBuf[4]_i_3_n_0 ;
  wire \addDevRegBuf[5]_i_1_n_0 ;
  wire \addDevRegBuf[5]_i_2_n_0 ;
  wire \addDevRegBuf[6]_i_1_n_0 ;
  wire \addDevRegBuf[6]_i_2_n_0 ;
  wire \addDevRegBuf[6]_i_3_n_0 ;
  wire \addDevRegBuf[7]_i_1_n_0 ;
  wire \addDevRegBuf_reg_n_0_[0] ;
  wire \addDevRegBuf_reg_n_0_[1] ;
  wire \addDevRegBuf_reg_n_0_[2] ;
  wire \addDevRegBuf_reg_n_0_[3] ;
  wire \addDevRegBuf_reg_n_0_[4] ;
  wire \addDevRegBuf_reg_n_0_[5] ;
  wire \addDevRegBuf_reg_n_0_[6] ;
  wire \addDevRegBuf_reg_n_0_[7] ;
  wire [7:0]addressregister;
  wire \addressregister[7]_i_1_n_0 ;
  wire \addressregister[7]_i_2_n_0 ;
  wire [5:1]bitCnt;
  wire \bitCnt[0]__0_i_1_n_0 ;
  wire \bitCnt[0]_i_1_n_0 ;
  wire \bitCnt[1]__0_i_1_n_0 ;
  wire \bitCnt[2]__0_i_1_n_0 ;
  wire \bitCnt[3]__0_i_1_n_0 ;
  wire \bitCnt[4]__0_i_1_n_0 ;
  wire \bitCnt[4]__0_i_2_n_0 ;
  wire \bitCnt[4]__0_i_4_n_0 ;
  wire \bitCnt[4]_i_2_n_0 ;
  wire \bitCnt[5]__0_i_1_n_0 ;
  wire \bitCnt[5]__0_i_2_n_0 ;
  wire \bitCnt[5]__0_i_3_n_0 ;
  wire \bitCnt[5]_i_1_n_0 ;
  wire \bitCnt[5]_i_3_n_0 ;
  wire \bitCnt[5]_i_4_n_0 ;
  wire \bitCnt[5]_i_5_n_0 ;
  wire \bitCnt_reg[0]__0_n_0 ;
  wire \bitCnt_reg[1]__0_n_0 ;
  wire \bitCnt_reg[2]__0_n_0 ;
  wire \bitCnt_reg[3]__0_n_0 ;
  wire \bitCnt_reg[4]__0_n_0 ;
  wire \bitCnt_reg[5]__0_n_0 ;
  wire \bitCnt_reg_n_0_[0] ;
  wire \bitCnt_reg_n_0_[1] ;
  wire \bitCnt_reg_n_0_[2] ;
  wire \bitCnt_reg_n_0_[3] ;
  wire \bitCnt_reg_n_0_[4] ;
  wire \bitCnt_reg_n_0_[5] ;
  wire [2:2]bufCRC;
  wire \bufCRC[0]_i_1_n_0 ;
  wire \bufCRC[0]_i_2_n_0 ;
  wire \bufCRC[1]_i_1_n_0 ;
  wire \bufCRC[2]_i_1_n_0 ;
  wire \bufCRC[3]_i_1_n_0 ;
  wire \bufCRC[3]_i_2_n_0 ;
  wire \bufCRC_reg_n_0_[0] ;
  wire \bufCRC_reg_n_0_[1] ;
  wire \bufCRC_reg_n_0_[2] ;
  wire \bufCRC_reg_n_0_[3] ;
  wire clear;
  wire clk;
  wire \cntTimeout[0]_i_1_n_0 ;
  wire \cntTimeout[1]_i_1_n_0 ;
  wire \cntTimeout[2]_i_1_n_0 ;
  wire \cntTimeout[3]_i_1_n_0 ;
  wire \cntTimeout[4]_i_1_n_0 ;
  wire \cntTimeout[5]_i_1_n_0 ;
  wire \cntTimeout[5]_i_2_n_0 ;
  wire \cntTimeout[6]_i_1_n_0 ;
  wire \cntTimeout[7]_i_1_n_0 ;
  wire \cntTimeout[8]_i_1_n_0 ;
  wire \cntTimeout[9]_i_1_n_0 ;
  wire \cntTimeout[9]_i_2_n_0 ;
  wire \cntTimeout[9]_i_3_n_0 ;
  wire \cntTimeout[9]_i_4_n_0 ;
  wire \cntTimeout[9]_i_5_n_0 ;
  wire \cntTimeout_reg_n_0_[0] ;
  wire \cntTimeout_reg_n_0_[1] ;
  wire \cntTimeout_reg_n_0_[2] ;
  wire \cntTimeout_reg_n_0_[3] ;
  wire \cntTimeout_reg_n_0_[4] ;
  wire \cntTimeout_reg_n_0_[5] ;
  wire \cntTimeout_reg_n_0_[6] ;
  wire \cntTimeout_reg_n_0_[7] ;
  wire \cntTimeout_reg_n_0_[8] ;
  wire \cntTimeout_reg_n_0_[9] ;
  wire \count[7]_i_2_n_0 ;
  wire \count[7]_i_4_n_0 ;
  wire [7:2]count_reg;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \dataBuf[0]_i_1_n_0 ;
  wire \dataBuf[10]_i_1_n_0 ;
  wire \dataBuf[11]_i_1_n_0 ;
  wire \dataBuf[11]_i_2_n_0 ;
  wire \dataBuf[11]_i_3_n_0 ;
  wire \dataBuf[12]_i_1_n_0 ;
  wire \dataBuf[12]_i_2_n_0 ;
  wire \dataBuf[13]_i_1_n_0 ;
  wire \dataBuf[13]_i_2_n_0 ;
  wire \dataBuf[14]_i_1_n_0 ;
  wire \dataBuf[14]_i_2_n_0 ;
  wire \dataBuf[14]_i_3_n_0 ;
  wire \dataBuf[15]_i_1_n_0 ;
  wire \dataBuf[15]_i_2_n_0 ;
  wire \dataBuf[15]_i_3_n_0 ;
  wire \dataBuf[1]_i_1_n_0 ;
  wire \dataBuf[1]_i_2_n_0 ;
  wire \dataBuf[2]_i_1_n_0 ;
  wire \dataBuf[2]_i_2_n_0 ;
  wire \dataBuf[3]_i_1_n_0 ;
  wire \dataBuf[3]_i_2_n_0 ;
  wire \dataBuf[4]_i_1_n_0 ;
  wire \dataBuf[5]_i_1_n_0 ;
  wire \dataBuf[6]_i_1_n_0 ;
  wire \dataBuf[6]_i_2_n_0 ;
  wire \dataBuf[7]_i_1_n_0 ;
  wire \dataBuf[7]_i_3_n_0 ;
  wire \dataBuf[8]_i_1_n_0 ;
  wire \dataBuf[9]_i_1_n_0 ;
  wire \dataBuf_reg_n_0_[0] ;
  wire \dataBuf_reg_n_0_[10] ;
  wire \dataBuf_reg_n_0_[11] ;
  wire \dataBuf_reg_n_0_[12] ;
  wire \dataBuf_reg_n_0_[13] ;
  wire \dataBuf_reg_n_0_[14] ;
  wire \dataBuf_reg_n_0_[15] ;
  wire \dataBuf_reg_n_0_[1] ;
  wire \dataBuf_reg_n_0_[2] ;
  wire \dataBuf_reg_n_0_[3] ;
  wire \dataBuf_reg_n_0_[4] ;
  wire \dataBuf_reg_n_0_[5] ;
  wire \dataBuf_reg_n_0_[6] ;
  wire \dataBuf_reg_n_0_[7] ;
  wire \dataBuf_reg_n_0_[8] ;
  wire \dataBuf_reg_n_0_[9] ;
  wire [15:0]dataCRC;
  wire \dataCRC[15]_i_1_n_0 ;
  wire \dataCRC[15]_i_3_n_0 ;
  wire \dataCRC[24]_i_1_n_0 ;
  wire \dataCRC_reg_n_0_[0] ;
  wire \dataCRC_reg_n_0_[10] ;
  wire \dataCRC_reg_n_0_[11] ;
  wire \dataCRC_reg_n_0_[12] ;
  wire \dataCRC_reg_n_0_[13] ;
  wire \dataCRC_reg_n_0_[14] ;
  wire \dataCRC_reg_n_0_[15] ;
  wire \dataCRC_reg_n_0_[16] ;
  wire \dataCRC_reg_n_0_[17] ;
  wire \dataCRC_reg_n_0_[18] ;
  wire \dataCRC_reg_n_0_[19] ;
  wire \dataCRC_reg_n_0_[1] ;
  wire \dataCRC_reg_n_0_[20] ;
  wire \dataCRC_reg_n_0_[21] ;
  wire \dataCRC_reg_n_0_[22] ;
  wire \dataCRC_reg_n_0_[23] ;
  wire \dataCRC_reg_n_0_[24] ;
  wire \dataCRC_reg_n_0_[2] ;
  wire \dataCRC_reg_n_0_[3] ;
  wire \dataCRC_reg_n_0_[4] ;
  wire \dataCRC_reg_n_0_[5] ;
  wire \dataCRC_reg_n_0_[6] ;
  wire \dataCRC_reg_n_0_[7] ;
  wire \dataCRC_reg_n_0_[8] ;
  wire \dataCRC_reg_n_0_[9] ;
  wire [15:0]datain;
  wire [15:0]dataout;
  wire \dataout[15]_i_1_n_0 ;
  wire \dataout[15]_i_2_n_0 ;
  wire \dataout[15]_i_3_n_0 ;
  wire dataready;
  wire dataready_i_1_n_0;
  wire dataready_i_2_n_0;
  wire dataready_i_3_n_0;
  wire dataready_i_4_n_0;
  wire direction_i_1_n_0;
  wire direction_i_2_n_0;
  wire direction_reg_0;
  wire lacth;
  wire \lacth[0]_i_1_n_0 ;
  wire \lacth_reg_n_0_[0] ;
  wire [7:0]p_0_in;
  wire p_0_in0_in;
  wire p_0_in_0;
  wire readyCRC;
  wire readyCRC_i_1_n_0;
  wire resetCRC_i_1_n_0;
  wire resetCRC_i_2_n_0;
  wire resetCRC_i_3_n_0;
  wire resetCRC_i_4_n_0;
  wire resetCRC_i_5_n_0;
  wire resetCRC_i_6_n_0;
  wire resetCRC_i_7_n_0;
  wire resetCRC_reg_n_0;
  wire sbDataOutBuf_tristate_oe_i_10_n_0;
  wire sbDataOutBuf_tristate_oe_i_11_n_0;
  wire sbDataOutBuf_tristate_oe_i_1_n_0;
  wire sbDataOutBuf_tristate_oe_i_2_n_0;
  wire sbDataOutBuf_tristate_oe_i_3_n_0;
  wire sbDataOutBuf_tristate_oe_i_5_n_0;
  wire sbDataOutBuf_tristate_oe_i_8_n_0;
  wire sbDataOutBuf_tristate_oe_i_9_n_0;
  wire sbDataOutBuf_tristate_oe_reg_i_4_n_0;
  wire sbDataOutBuf_tristate_oe_reg_i_6_n_0;
  wire sbDataOutBuf_tristate_oe_reg_i_7_n_0;
  wire sbDataOutBuf_tristate_oe_reg_n_0;
  wire sbReset;
  wire sbResetPrev;
  wire sbReset_i_1_n_0;
  wire sbReset_i_2_n_0;
  wire sbclk;
  wire sbclkPrev;
  wire sbdatain;
  wire sbdataout;
  wire sbdataout_INST_0_i_1;
  wire sbdataout_INST_0_i_1_0;
  wire sbdataout_INST_0_i_3_n_0;
  wire sbdataout_INST_0_i_4_n_0;

  LUT6 #(
    .INIT(64'h55555555999AAA9A)) 
    \CRC[0]_i_1 
       (.I0(p_0_in_0),
        .I1(\bitCnt_reg[4]__0_n_0 ),
        .I2(\CRC_reg[0]_i_2_n_0 ),
        .I3(\bitCnt_reg[3]__0_n_0 ),
        .I4(\CRC_reg[0]_i_3_n_0 ),
        .I5(\CRC[0]_i_4_n_0 ),
        .O(\CRC[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CRC[0]_i_10 
       (.I0(\dataCRC_reg_n_0_[19] ),
        .I1(\dataCRC_reg_n_0_[18] ),
        .I2(\bitCnt_reg[1]__0_n_0 ),
        .I3(\dataCRC_reg_n_0_[17] ),
        .I4(\bitCnt_reg[0]__0_n_0 ),
        .I5(\dataCRC_reg_n_0_[16] ),
        .O(\CRC[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \CRC[0]_i_11 
       (.I0(\lacth_reg_n_0_[0] ),
        .I1(\bitCnt_reg[3]__0_n_0 ),
        .I2(\bitCnt_reg[4]__0_n_0 ),
        .I3(\dataCRC_reg_n_0_[24] ),
        .O(\CRC[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00B00080)) 
    \CRC[0]_i_4 
       (.I0(\CRC[0]_i_9_n_0 ),
        .I1(\bitCnt_reg[2]__0_n_0 ),
        .I2(\bitCnt_reg[4]__0_n_0 ),
        .I3(\bitCnt_reg[3]__0_n_0 ),
        .I4(\CRC[0]_i_10_n_0 ),
        .I5(\CRC[0]_i_11_n_0 ),
        .O(\CRC[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CRC[0]_i_5 
       (.I0(\dataCRC_reg_n_0_[3] ),
        .I1(\dataCRC_reg_n_0_[2] ),
        .I2(\bitCnt_reg[1]__0_n_0 ),
        .I3(\dataCRC_reg_n_0_[1] ),
        .I4(\bitCnt_reg[0]__0_n_0 ),
        .I5(\dataCRC_reg_n_0_[0] ),
        .O(\CRC[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CRC[0]_i_6 
       (.I0(\dataCRC_reg_n_0_[7] ),
        .I1(\dataCRC_reg_n_0_[6] ),
        .I2(\bitCnt_reg[1]__0_n_0 ),
        .I3(\dataCRC_reg_n_0_[5] ),
        .I4(\bitCnt_reg[0]__0_n_0 ),
        .I5(\dataCRC_reg_n_0_[4] ),
        .O(\CRC[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CRC[0]_i_7 
       (.I0(\dataCRC_reg_n_0_[11] ),
        .I1(\dataCRC_reg_n_0_[10] ),
        .I2(\bitCnt_reg[1]__0_n_0 ),
        .I3(\dataCRC_reg_n_0_[9] ),
        .I4(\bitCnt_reg[0]__0_n_0 ),
        .I5(\dataCRC_reg_n_0_[8] ),
        .O(\CRC[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CRC[0]_i_8 
       (.I0(\dataCRC_reg_n_0_[15] ),
        .I1(\dataCRC_reg_n_0_[14] ),
        .I2(\bitCnt_reg[1]__0_n_0 ),
        .I3(\dataCRC_reg_n_0_[13] ),
        .I4(\bitCnt_reg[0]__0_n_0 ),
        .I5(\dataCRC_reg_n_0_[12] ),
        .O(\CRC[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CRC[0]_i_9 
       (.I0(\dataCRC_reg_n_0_[23] ),
        .I1(\dataCRC_reg_n_0_[22] ),
        .I2(\bitCnt_reg[1]__0_n_0 ),
        .I3(\dataCRC_reg_n_0_[21] ),
        .I4(\bitCnt_reg[0]__0_n_0 ),
        .I5(\dataCRC_reg_n_0_[20] ),
        .O(\CRC[0]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \CRC[2]_i_1 
       (.I0(p_0_in_0),
        .I1(\CRC_reg_n_0_[0] ),
        .O(CRC0));
  LUT2 #(
    .INIT(4'h1)) 
    \CRC[3]_i_1 
       (.I0(readyCRC),
        .I1(lacth),
        .O(\CRC[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \CRC[3]_i_2 
       (.I0(\CRC_reg_n_0_[2] ),
        .I1(p_0_in0_in),
        .O(CRC02_out));
  FDRE #(
    .INIT(1'b0)) 
    \CRC_reg[0] 
       (.C(clk),
        .CE(\CRC[3]_i_1_n_0 ),
        .D(\CRC[0]_i_1_n_0 ),
        .Q(\CRC_reg_n_0_[0] ),
        .R(resetCRC_reg_n_0));
  MUXF7 \CRC_reg[0]_i_2 
       (.I0(\CRC[0]_i_5_n_0 ),
        .I1(\CRC[0]_i_6_n_0 ),
        .O(\CRC_reg[0]_i_2_n_0 ),
        .S(\bitCnt_reg[2]__0_n_0 ));
  MUXF7 \CRC_reg[0]_i_3 
       (.I0(\CRC[0]_i_7_n_0 ),
        .I1(\CRC[0]_i_8_n_0 ),
        .O(\CRC_reg[0]_i_3_n_0 ),
        .S(\bitCnt_reg[2]__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CRC_reg[1] 
       (.C(clk),
        .CE(\CRC[3]_i_1_n_0 ),
        .D(\CRC_reg_n_0_[0] ),
        .Q(p_0_in_0),
        .R(resetCRC_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \CRC_reg[2] 
       (.C(clk),
        .CE(\CRC[3]_i_1_n_0 ),
        .D(CRC0),
        .Q(\CRC_reg_n_0_[2] ),
        .R(resetCRC_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \CRC_reg[3] 
       (.C(clk),
        .CE(\CRC[3]_i_1_n_0 ),
        .D(CRC02_out),
        .Q(p_0_in0_in),
        .R(resetCRC_reg_n_0));
  LUT6 #(
    .INIT(64'hCCCCFCFFDDDD0D00)) 
    \FSM_sequential_CommunicationState[0]_i_1 
       (.I0(\FSM_sequential_CommunicationState[2]_i_2_n_0 ),
        .I1(\FSM_sequential_CommunicationState[0]_i_2_n_0 ),
        .I2(\FSM_sequential_CommunicationState[1]_i_4_n_0 ),
        .I3(\FSM_sequential_CommunicationState[2]_i_5_n_0 ),
        .I4(\FSM_sequential_CommunicationState[2]_i_6_n_0 ),
        .I5(CommunicationState__0[0]),
        .O(\FSM_sequential_CommunicationState[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000003000050)) 
    \FSM_sequential_CommunicationState[0]_i_2 
       (.I0(CommunicationState__0[0]),
        .I1(\addressregister[7]_i_2_n_0 ),
        .I2(sbclk),
        .I3(sbclkPrev),
        .I4(CommunicationState__0[1]),
        .I5(CommunicationState__0[2]),
        .O(\FSM_sequential_CommunicationState[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEFEFFEEEE0E00)) 
    \FSM_sequential_CommunicationState[1]_i_1 
       (.I0(\FSM_sequential_CommunicationState[1]_i_2_n_0 ),
        .I1(\FSM_sequential_CommunicationState[1]_i_3_n_0 ),
        .I2(\FSM_sequential_CommunicationState[1]_i_4_n_0 ),
        .I3(\FSM_sequential_CommunicationState[2]_i_5_n_0 ),
        .I4(\FSM_sequential_CommunicationState[2]_i_6_n_0 ),
        .I5(CommunicationState__0[1]),
        .O(\FSM_sequential_CommunicationState[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00400040F0000000)) 
    \FSM_sequential_CommunicationState[1]_i_2 
       (.I0(\addressregister[7]_i_2_n_0 ),
        .I1(\addDevRegBuf[4]_i_3_n_0 ),
        .I2(CommunicationState__0[2]),
        .I3(CommunicationState__0[1]),
        .I4(readyCRC),
        .I5(CommunicationState__0[0]),
        .O(\FSM_sequential_CommunicationState[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    \FSM_sequential_CommunicationState[1]_i_3 
       (.I0(\FSM_sequential_CommunicationState[2]_i_8_n_0 ),
        .I1(dataready_i_4_n_0),
        .I2(\bitCnt[5]_i_3_n_0 ),
        .I3(\bitCnt_reg_n_0_[0] ),
        .I4(\bitCnt_reg_n_0_[5] ),
        .I5(direction_reg_0),
        .O(\FSM_sequential_CommunicationState[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000B0BBFFFFFFFF)) 
    \FSM_sequential_CommunicationState[1]_i_4 
       (.I0(sbResetPrev),
        .I1(sbReset),
        .I2(\addressregister[7]_i_2_n_0 ),
        .I3(\addDevRegBuf[4]_i_3_n_0 ),
        .I4(CommunicationState__0[1]),
        .I5(CommunicationState__0[2]),
        .O(\FSM_sequential_CommunicationState[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h55775577F500FF00)) 
    \FSM_sequential_CommunicationState[2]_i_1 
       (.I0(\FSM_sequential_CommunicationState[2]_i_2_n_0 ),
        .I1(\FSM_sequential_CommunicationState[2]_i_3_n_0 ),
        .I2(\FSM_sequential_CommunicationState[2]_i_4_n_0 ),
        .I3(CommunicationState__0[2]),
        .I4(\FSM_sequential_CommunicationState[2]_i_5_n_0 ),
        .I5(\FSM_sequential_CommunicationState[2]_i_6_n_0 ),
        .O(\FSM_sequential_CommunicationState[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFBFFFB0FFBFFF)) 
    \FSM_sequential_CommunicationState[2]_i_2 
       (.I0(CommunicationState__0[0]),
        .I1(readyCRC),
        .I2(CommunicationState__0[1]),
        .I3(CommunicationState__0[2]),
        .I4(\addDevRegBuf[4]_i_3_n_0 ),
        .I5(\addressregister[7]_i_2_n_0 ),
        .O(\FSM_sequential_CommunicationState[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFEF)) 
    \FSM_sequential_CommunicationState[2]_i_3 
       (.I0(\bitCnt_reg_n_0_[5] ),
        .I1(\bitCnt_reg_n_0_[0] ),
        .I2(direction_reg_0),
        .I3(CommunicationState__0[1]),
        .I4(dataready_i_4_n_0),
        .I5(\FSM_sequential_CommunicationState[2]_i_7_n_0 ),
        .O(\FSM_sequential_CommunicationState[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5545554500005545)) 
    \FSM_sequential_CommunicationState[2]_i_4 
       (.I0(CommunicationState__0[1]),
        .I1(sbclkPrev),
        .I2(sbclk),
        .I3(\addressregister[7]_i_2_n_0 ),
        .I4(sbReset),
        .I5(sbResetPrev),
        .O(\FSM_sequential_CommunicationState[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h74FF74FFFFFF74FF)) 
    \FSM_sequential_CommunicationState[2]_i_5 
       (.I0(\cntTimeout[9]_i_3_n_0 ),
        .I1(CommunicationState__0[0]),
        .I2(readyCRC),
        .I3(CommunicationState__0[1]),
        .I4(sbReset),
        .I5(sbResetPrev),
        .O(\FSM_sequential_CommunicationState[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \FSM_sequential_CommunicationState[2]_i_6 
       (.I0(direction_i_2_n_0),
        .I1(CommunicationState__0[2]),
        .I2(resetCRC_i_3_n_0),
        .I3(\addressregister[7]_i_1_n_0 ),
        .I4(\FSM_sequential_CommunicationState[2]_i_8_n_0 ),
        .O(\FSM_sequential_CommunicationState[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \FSM_sequential_CommunicationState[2]_i_7 
       (.I0(CommunicationState__0[0]),
        .I1(CommunicationState__0[1]),
        .I2(sbclkPrev),
        .I3(sbclk),
        .I4(\addressregister[7]_i_2_n_0 ),
        .O(\FSM_sequential_CommunicationState[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \FSM_sequential_CommunicationState[2]_i_8 
       (.I0(CommunicationState__0[2]),
        .I1(CommunicationState__0[1]),
        .I2(sbclkPrev),
        .I3(sbclk),
        .I4(\addressregister[7]_i_2_n_0 ),
        .O(\FSM_sequential_CommunicationState[2]_i_8_n_0 ));
  (* FSM_ENCODED_STATES = "receiveaddress:001,receivedata:100,transmitdata:010,transmitcrc:011,receivecrc:101,receivecheck:110,waiting:000,timeout:111" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CommunicationState_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_CommunicationState[0]_i_1_n_0 ),
        .Q(CommunicationState__0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "receiveaddress:001,receivedata:100,transmitdata:010,transmitcrc:011,receivecrc:101,receivecheck:110,waiting:000,timeout:111" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CommunicationState_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_CommunicationState[1]_i_1_n_0 ),
        .Q(CommunicationState__0[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "receiveaddress:001,receivedata:100,transmitdata:010,transmitcrc:011,receivecrc:101,receivecheck:110,waiting:000,timeout:111" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CommunicationState_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_CommunicationState[2]_i_1_n_0 ),
        .Q(CommunicationState__0[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFF3FBF300000800)) 
    \addDevRegBuf[0]_i_1 
       (.I0(sbdatain),
        .I1(\addDevRegBuf[4]_i_3_n_0 ),
        .I2(\bitCnt[5]_i_3_n_0 ),
        .I3(CommunicationState__0[0]),
        .I4(\addressregister[7]_i_2_n_0 ),
        .I5(\addDevRegBuf_reg_n_0_[0] ),
        .O(\addDevRegBuf[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F8F8880808088)) 
    \addDevRegBuf[1]_i_1 
       (.I0(sbdatain),
        .I1(CommunicationState__0[0]),
        .I2(direction_i_2_n_0),
        .I3(\dataBuf[1]_i_2_n_0 ),
        .I4(\bitCnt[5]_i_3_n_0 ),
        .I5(\addDevRegBuf_reg_n_0_[1] ),
        .O(\addDevRegBuf[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F8F8880808088)) 
    \addDevRegBuf[2]_i_1 
       (.I0(sbdatain),
        .I1(CommunicationState__0[0]),
        .I2(direction_i_2_n_0),
        .I3(\addDevRegBuf[2]_i_2_n_0 ),
        .I4(\bitCnt[5]_i_3_n_0 ),
        .I5(\addDevRegBuf_reg_n_0_[2] ),
        .O(\addDevRegBuf[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \addDevRegBuf[2]_i_2 
       (.I0(\dataBuf[2]_i_2_n_0 ),
        .I1(\bitCnt_reg_n_0_[0] ),
        .I2(\bitCnt_reg_n_0_[1] ),
        .I3(sbclk),
        .I4(sbclkPrev),
        .O(\addDevRegBuf[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F8F8880808088)) 
    \addDevRegBuf[3]_i_1 
       (.I0(sbdatain),
        .I1(CommunicationState__0[0]),
        .I2(direction_i_2_n_0),
        .I3(\dataBuf[3]_i_2_n_0 ),
        .I4(\bitCnt[5]_i_3_n_0 ),
        .I5(\addDevRegBuf_reg_n_0_[3] ),
        .O(\addDevRegBuf[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBABBBBBB8A888888)) 
    \addDevRegBuf[4]_i_1 
       (.I0(addDevRegBuf),
        .I1(direction_i_2_n_0),
        .I2(\addDevRegBuf[6]_i_2_n_0 ),
        .I3(\addDevRegBuf[4]_i_3_n_0 ),
        .I4(\bitCnt[5]_i_5_n_0 ),
        .I5(\addDevRegBuf_reg_n_0_[4] ),
        .O(\addDevRegBuf[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addDevRegBuf[4]_i_2 
       (.I0(sbdatain),
        .I1(CommunicationState__0[0]),
        .O(addDevRegBuf));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \addDevRegBuf[4]_i_3 
       (.I0(sbclk),
        .I1(sbclkPrev),
        .O(\addDevRegBuf[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F80888080)) 
    \addDevRegBuf[5]_i_1 
       (.I0(sbdatain),
        .I1(CommunicationState__0[0]),
        .I2(direction_i_2_n_0),
        .I3(\addDevRegBuf[6]_i_2_n_0 ),
        .I4(\addDevRegBuf[5]_i_2_n_0 ),
        .I5(\addDevRegBuf_reg_n_0_[5] ),
        .O(\addDevRegBuf[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \addDevRegBuf[5]_i_2 
       (.I0(sbclkPrev),
        .I1(sbclk),
        .I2(\bitCnt_reg_n_0_[0] ),
        .I3(\bitCnt_reg_n_0_[1] ),
        .O(\addDevRegBuf[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F80888080)) 
    \addDevRegBuf[6]_i_1 
       (.I0(sbdatain),
        .I1(CommunicationState__0[0]),
        .I2(direction_i_2_n_0),
        .I3(\addDevRegBuf[6]_i_2_n_0 ),
        .I4(\addDevRegBuf[6]_i_3_n_0 ),
        .I5(\addDevRegBuf_reg_n_0_[6] ),
        .O(\addDevRegBuf[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \addDevRegBuf[6]_i_2 
       (.I0(CommunicationState__0[1]),
        .I1(CommunicationState__0[2]),
        .I2(\bitCnt_reg_n_0_[3] ),
        .I3(\bitCnt_reg_n_0_[2] ),
        .I4(\bitCnt_reg_n_0_[5] ),
        .I5(\bitCnt_reg_n_0_[4] ),
        .O(\addDevRegBuf[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \addDevRegBuf[6]_i_3 
       (.I0(sbclkPrev),
        .I1(sbclk),
        .I2(\bitCnt_reg_n_0_[1] ),
        .I3(\bitCnt_reg_n_0_[0] ),
        .O(\addDevRegBuf[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F8F8880808088)) 
    \addDevRegBuf[7]_i_1 
       (.I0(sbdatain),
        .I1(CommunicationState__0[0]),
        .I2(direction_i_2_n_0),
        .I3(\dataBuf[7]_i_3_n_0 ),
        .I4(\bitCnt[5]_i_3_n_0 ),
        .I5(\addDevRegBuf_reg_n_0_[7] ),
        .O(\addDevRegBuf[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addDevRegBuf_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\addDevRegBuf[0]_i_1_n_0 ),
        .Q(\addDevRegBuf_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addDevRegBuf_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\addDevRegBuf[1]_i_1_n_0 ),
        .Q(\addDevRegBuf_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addDevRegBuf_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\addDevRegBuf[2]_i_1_n_0 ),
        .Q(\addDevRegBuf_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addDevRegBuf_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\addDevRegBuf[3]_i_1_n_0 ),
        .Q(\addDevRegBuf_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addDevRegBuf_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\addDevRegBuf[4]_i_1_n_0 ),
        .Q(\addDevRegBuf_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addDevRegBuf_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\addDevRegBuf[5]_i_1_n_0 ),
        .Q(\addDevRegBuf_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addDevRegBuf_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\addDevRegBuf[6]_i_1_n_0 ),
        .Q(\addDevRegBuf_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addDevRegBuf_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\addDevRegBuf[7]_i_1_n_0 ),
        .Q(\addDevRegBuf_reg_n_0_[7] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \addressregister[7]_i_1 
       (.I0(CommunicationState__0[0]),
        .I1(sbclkPrev),
        .I2(sbclk),
        .I3(CommunicationState__0[2]),
        .I4(CommunicationState__0[1]),
        .I5(\addressregister[7]_i_2_n_0 ),
        .O(\addressregister[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \addressregister[7]_i_2 
       (.I0(\bitCnt_reg_n_0_[2] ),
        .I1(\bitCnt_reg_n_0_[3] ),
        .I2(\bitCnt_reg_n_0_[5] ),
        .I3(\bitCnt_reg_n_0_[4] ),
        .I4(\bitCnt_reg_n_0_[1] ),
        .I5(\bitCnt_reg_n_0_[0] ),
        .O(\addressregister[7]_i_2_n_0 ));
  FDRE \addressregister_reg[0] 
       (.C(clk),
        .CE(\addressregister[7]_i_1_n_0 ),
        .D(sbdatain),
        .Q(addressregister[0]),
        .R(1'b0));
  FDRE \addressregister_reg[1] 
       (.C(clk),
        .CE(\addressregister[7]_i_1_n_0 ),
        .D(\addDevRegBuf_reg_n_0_[1] ),
        .Q(addressregister[1]),
        .R(1'b0));
  FDRE \addressregister_reg[2] 
       (.C(clk),
        .CE(\addressregister[7]_i_1_n_0 ),
        .D(\addDevRegBuf_reg_n_0_[2] ),
        .Q(addressregister[2]),
        .R(1'b0));
  FDRE \addressregister_reg[3] 
       (.C(clk),
        .CE(\addressregister[7]_i_1_n_0 ),
        .D(\addDevRegBuf_reg_n_0_[3] ),
        .Q(addressregister[3]),
        .R(1'b0));
  FDRE \addressregister_reg[4] 
       (.C(clk),
        .CE(\addressregister[7]_i_1_n_0 ),
        .D(\addDevRegBuf_reg_n_0_[4] ),
        .Q(addressregister[4]),
        .R(1'b0));
  FDRE \addressregister_reg[5] 
       (.C(clk),
        .CE(\addressregister[7]_i_1_n_0 ),
        .D(\addDevRegBuf_reg_n_0_[5] ),
        .Q(addressregister[5]),
        .R(1'b0));
  FDRE \addressregister_reg[6] 
       (.C(clk),
        .CE(\addressregister[7]_i_1_n_0 ),
        .D(\addDevRegBuf_reg_n_0_[6] ),
        .Q(addressregister[6]),
        .R(1'b0));
  FDRE \addressregister_reg[7] 
       (.C(clk),
        .CE(\addressregister[7]_i_1_n_0 ),
        .D(\addDevRegBuf_reg_n_0_[7] ),
        .Q(addressregister[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \bitCnt[0]__0_i_1 
       (.I0(\bitCnt[4]__0_i_4_n_0 ),
        .I1(\bitCnt_reg[0]__0_n_0 ),
        .O(\bitCnt[0]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    \bitCnt[0]_i_1 
       (.I0(CommunicationState__0[2]),
        .I1(CommunicationState__0[1]),
        .I2(CommunicationState__0[0]),
        .I3(\bitCnt_reg_n_0_[0] ),
        .O(\bitCnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hF9)) 
    \bitCnt[1]__0_i_1 
       (.I0(\bitCnt_reg[1]__0_n_0 ),
        .I1(\bitCnt_reg[0]__0_n_0 ),
        .I2(\bitCnt[4]__0_i_4_n_0 ),
        .O(\bitCnt[1]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFF0101FF)) 
    \bitCnt[1]_i_1 
       (.I0(CommunicationState__0[2]),
        .I1(CommunicationState__0[1]),
        .I2(CommunicationState__0[0]),
        .I3(\bitCnt_reg_n_0_[1] ),
        .I4(\bitCnt_reg_n_0_[0] ),
        .O(bitCnt[1]));
  LUT6 #(
    .INIT(64'h000000000000AAA6)) 
    \bitCnt[2]__0_i_1 
       (.I0(\bitCnt_reg[2]__0_n_0 ),
        .I1(\bitCnt[5]__0_i_2_n_0 ),
        .I2(\bitCnt_reg[0]__0_n_0 ),
        .I3(\bitCnt_reg[1]__0_n_0 ),
        .I4(\bitCnt[4]__0_i_4_n_0 ),
        .I5(resetCRC_reg_n_0),
        .O(\bitCnt[2]__0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCC3DDD7CCC35555)) 
    \bitCnt[2]_i_1 
       (.I0(\bitCnt[5]_i_3_n_0 ),
        .I1(\bitCnt_reg_n_0_[2] ),
        .I2(\bitCnt_reg_n_0_[1] ),
        .I3(\bitCnt_reg_n_0_[0] ),
        .I4(CommunicationState__0[0]),
        .I5(\addressregister[7]_i_2_n_0 ),
        .O(bitCnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0000FE01)) 
    \bitCnt[3]__0_i_1 
       (.I0(\bitCnt_reg[1]__0_n_0 ),
        .I1(\bitCnt_reg[0]__0_n_0 ),
        .I2(\bitCnt_reg[2]__0_n_0 ),
        .I3(\bitCnt_reg[3]__0_n_0 ),
        .I4(\bitCnt[4]__0_i_4_n_0 ),
        .O(\bitCnt[3]__0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC3CC8288C3CC0000)) 
    \bitCnt[3]_i_1 
       (.I0(\addressregister[7]_i_2_n_0 ),
        .I1(\bitCnt_reg_n_0_[3] ),
        .I2(\bitCnt_reg_n_0_[2] ),
        .I3(\bitCnt[5]_i_5_n_0 ),
        .I4(CommunicationState__0[0]),
        .I5(\bitCnt[5]_i_3_n_0 ),
        .O(bitCnt[3]));
  LUT3 #(
    .INIT(8'h07)) 
    \bitCnt[4]__0_i_1 
       (.I0(lacth),
        .I1(\lacth_reg_n_0_[0] ),
        .I2(readyCRC),
        .O(\bitCnt[4]__0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFE0001)) 
    \bitCnt[4]__0_i_2 
       (.I0(\bitCnt_reg[2]__0_n_0 ),
        .I1(\bitCnt_reg[0]__0_n_0 ),
        .I2(\bitCnt_reg[1]__0_n_0 ),
        .I3(\bitCnt_reg[3]__0_n_0 ),
        .I4(\bitCnt_reg[4]__0_n_0 ),
        .I5(\bitCnt[4]__0_i_4_n_0 ),
        .O(\bitCnt[4]__0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \bitCnt[4]__0_i_3 
       (.I0(\bitCnt_reg[1]__0_n_0 ),
        .I1(\bitCnt_reg[0]__0_n_0 ),
        .I2(\bitCnt_reg[2]__0_n_0 ),
        .I3(\bitCnt_reg[5]__0_n_0 ),
        .I4(\bitCnt_reg[3]__0_n_0 ),
        .I5(\bitCnt_reg[4]__0_n_0 ),
        .O(lacth));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \bitCnt[4]__0_i_4 
       (.I0(readyCRC),
        .I1(\lacth_reg_n_0_[0] ),
        .I2(lacth),
        .O(\bitCnt[4]__0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000002)) 
    \bitCnt[4]_i_1 
       (.I0(\bitCnt[4]_i_2_n_0 ),
        .I1(\bitCnt_reg_n_0_[1] ),
        .I2(\bitCnt_reg_n_0_[0] ),
        .I3(\bitCnt_reg_n_0_[3] ),
        .I4(\bitCnt_reg_n_0_[2] ),
        .I5(\bitCnt_reg_n_0_[4] ),
        .O(bitCnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFEE0)) 
    \bitCnt[4]_i_2 
       (.I0(CommunicationState__0[2]),
        .I1(CommunicationState__0[1]),
        .I2(CommunicationState__0[0]),
        .I3(\addressregister[7]_i_2_n_0 ),
        .O(\bitCnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AA6A)) 
    \bitCnt[5]__0_i_1 
       (.I0(\bitCnt_reg[5]__0_n_0 ),
        .I1(\bitCnt[5]__0_i_2_n_0 ),
        .I2(\bitCnt[5]__0_i_3_n_0 ),
        .I3(\bitCnt_reg[4]__0_n_0 ),
        .I4(\bitCnt[4]__0_i_4_n_0 ),
        .I5(resetCRC_reg_n_0),
        .O(\bitCnt[5]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \bitCnt[5]__0_i_2 
       (.I0(readyCRC),
        .I1(lacth),
        .I2(\lacth_reg_n_0_[0] ),
        .O(\bitCnt[5]__0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \bitCnt[5]__0_i_3 
       (.I0(\bitCnt_reg[2]__0_n_0 ),
        .I1(\bitCnt_reg[0]__0_n_0 ),
        .I2(\bitCnt_reg[1]__0_n_0 ),
        .I3(\bitCnt_reg[3]__0_n_0 ),
        .O(\bitCnt[5]__0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000B0000B000F0)) 
    \bitCnt[5]_i_1 
       (.I0(\addressregister[7]_i_2_n_0 ),
        .I1(CommunicationState__0[0]),
        .I2(sbclk),
        .I3(sbclkPrev),
        .I4(CommunicationState__0[2]),
        .I5(CommunicationState__0[1]),
        .O(\bitCnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0EEEE00080000)) 
    \bitCnt[5]_i_2 
       (.I0(CommunicationState__0[0]),
        .I1(\bitCnt[5]_i_3_n_0 ),
        .I2(\bitCnt_reg_n_0_[4] ),
        .I3(\bitCnt[5]_i_4_n_0 ),
        .I4(\bitCnt[5]_i_5_n_0 ),
        .I5(\bitCnt_reg_n_0_[5] ),
        .O(bitCnt[5]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bitCnt[5]_i_3 
       (.I0(CommunicationState__0[2]),
        .I1(CommunicationState__0[1]),
        .O(\bitCnt[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bitCnt[5]_i_4 
       (.I0(\bitCnt_reg_n_0_[2] ),
        .I1(\bitCnt_reg_n_0_[3] ),
        .O(\bitCnt[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \bitCnt[5]_i_5 
       (.I0(\bitCnt_reg_n_0_[0] ),
        .I1(\bitCnt_reg_n_0_[1] ),
        .O(\bitCnt[5]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitCnt_reg[0] 
       (.C(clk),
        .CE(\bitCnt[5]_i_1_n_0 ),
        .D(\bitCnt[0]_i_1_n_0 ),
        .Q(\bitCnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitCnt_reg[0]__0 
       (.C(clk),
        .CE(\bitCnt[4]__0_i_1_n_0 ),
        .D(\bitCnt[0]__0_i_1_n_0 ),
        .Q(\bitCnt_reg[0]__0_n_0 ),
        .R(resetCRC_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \bitCnt_reg[1] 
       (.C(clk),
        .CE(\bitCnt[5]_i_1_n_0 ),
        .D(bitCnt[1]),
        .Q(\bitCnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitCnt_reg[1]__0 
       (.C(clk),
        .CE(\bitCnt[4]__0_i_1_n_0 ),
        .D(\bitCnt[1]__0_i_1_n_0 ),
        .Q(\bitCnt_reg[1]__0_n_0 ),
        .R(resetCRC_reg_n_0));
  FDRE #(
    .INIT(1'b1)) 
    \bitCnt_reg[2] 
       (.C(clk),
        .CE(\bitCnt[5]_i_1_n_0 ),
        .D(bitCnt[2]),
        .Q(\bitCnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitCnt_reg[2]__0 
       (.C(clk),
        .CE(1'b1),
        .D(\bitCnt[2]__0_i_1_n_0 ),
        .Q(\bitCnt_reg[2]__0_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitCnt_reg[3] 
       (.C(clk),
        .CE(\bitCnt[5]_i_1_n_0 ),
        .D(bitCnt[3]),
        .Q(\bitCnt_reg_n_0_[3] ),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \bitCnt_reg[3]__0 
       (.C(clk),
        .CE(\bitCnt[4]__0_i_1_n_0 ),
        .D(\bitCnt[3]__0_i_1_n_0 ),
        .Q(\bitCnt_reg[3]__0_n_0 ),
        .S(resetCRC_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \bitCnt_reg[4] 
       (.C(clk),
        .CE(\bitCnt[5]_i_1_n_0 ),
        .D(bitCnt[4]),
        .Q(\bitCnt_reg_n_0_[4] ),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \bitCnt_reg[4]__0 
       (.C(clk),
        .CE(\bitCnt[4]__0_i_1_n_0 ),
        .D(\bitCnt[4]__0_i_2_n_0 ),
        .Q(\bitCnt_reg[4]__0_n_0 ),
        .S(resetCRC_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \bitCnt_reg[5] 
       (.C(clk),
        .CE(\bitCnt[5]_i_1_n_0 ),
        .D(bitCnt[5]),
        .Q(\bitCnt_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitCnt_reg[5]__0 
       (.C(clk),
        .CE(1'b1),
        .D(\bitCnt[5]__0_i_1_n_0 ),
        .Q(\bitCnt_reg[5]__0_n_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBFBFBABF80808A80)) 
    \bufCRC[0]_i_1 
       (.I0(bufCRC),
        .I1(\bufCRC[0]_i_2_n_0 ),
        .I2(CommunicationState__0[0]),
        .I3(\addDevRegBuf[4]_i_3_n_0 ),
        .I4(\bitCnt[5]_i_3_n_0 ),
        .I5(\bufCRC_reg_n_0_[0] ),
        .O(\bufCRC[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \bufCRC[0]_i_2 
       (.I0(\addressregister[7]_i_2_n_0 ),
        .I1(sbclk),
        .I2(sbclkPrev),
        .I3(CommunicationState__0[2]),
        .I4(CommunicationState__0[1]),
        .O(\bufCRC[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F80888080)) 
    \bufCRC[1]_i_1 
       (.I0(sbdatain),
        .I1(CommunicationState__0[2]),
        .I2(direction_i_2_n_0),
        .I3(\dataBuf[1]_i_2_n_0 ),
        .I4(\bufCRC[3]_i_2_n_0 ),
        .I5(\bufCRC_reg_n_0_[1] ),
        .O(\bufCRC[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBABBBBBB8A888888)) 
    \bufCRC[2]_i_1 
       (.I0(bufCRC),
        .I1(direction_i_2_n_0),
        .I2(\dataBuf[2]_i_2_n_0 ),
        .I3(\addDevRegBuf[6]_i_3_n_0 ),
        .I4(\bufCRC[3]_i_2_n_0 ),
        .I5(\bufCRC_reg_n_0_[2] ),
        .O(\bufCRC[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F80888080)) 
    \bufCRC[3]_i_1 
       (.I0(sbdatain),
        .I1(CommunicationState__0[2]),
        .I2(direction_i_2_n_0),
        .I3(\dataBuf[3]_i_2_n_0 ),
        .I4(\bufCRC[3]_i_2_n_0 ),
        .I5(\bufCRC_reg_n_0_[3] ),
        .O(\bufCRC[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \bufCRC[3]_i_2 
       (.I0(CommunicationState__0[0]),
        .I1(CommunicationState__0[2]),
        .I2(CommunicationState__0[1]),
        .O(\bufCRC[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bufCRC_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\bufCRC[0]_i_1_n_0 ),
        .Q(\bufCRC_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bufCRC_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\bufCRC[1]_i_1_n_0 ),
        .Q(\bufCRC_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bufCRC_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\bufCRC[2]_i_1_n_0 ),
        .Q(\bufCRC_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bufCRC_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\bufCRC[3]_i_1_n_0 ),
        .Q(\bufCRC_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntTimeout[0]_i_1 
       (.I0(CommunicationState__0[2]),
        .I1(\cntTimeout_reg_n_0_[0] ),
        .O(\cntTimeout[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F80)) 
    \cntTimeout[1]_i_1 
       (.I0(\cntTimeout_reg_n_0_[0] ),
        .I1(CommunicationState__0[2]),
        .I2(\cntTimeout[9]_i_1_n_0 ),
        .I3(\cntTimeout_reg_n_0_[1] ),
        .O(\cntTimeout[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \cntTimeout[2]_i_1 
       (.I0(CommunicationState__0[2]),
        .I1(\cntTimeout_reg_n_0_[2] ),
        .I2(\cntTimeout_reg_n_0_[0] ),
        .I3(\cntTimeout_reg_n_0_[1] ),
        .O(\cntTimeout[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \cntTimeout[3]_i_1 
       (.I0(CommunicationState__0[2]),
        .I1(\cntTimeout_reg_n_0_[3] ),
        .I2(\cntTimeout_reg_n_0_[0] ),
        .I3(\cntTimeout_reg_n_0_[1] ),
        .I4(\cntTimeout_reg_n_0_[2] ),
        .O(\cntTimeout[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \cntTimeout[4]_i_1 
       (.I0(CommunicationState__0[2]),
        .I1(\cntTimeout_reg_n_0_[4] ),
        .I2(\cntTimeout_reg_n_0_[3] ),
        .I3(\cntTimeout_reg_n_0_[2] ),
        .I4(\cntTimeout_reg_n_0_[1] ),
        .I5(\cntTimeout_reg_n_0_[0] ),
        .O(\cntTimeout[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cntTimeout[5]_i_1 
       (.I0(\cntTimeout[9]_i_1_n_0 ),
        .I1(CommunicationState__0[2]),
        .O(\cntTimeout[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \cntTimeout[5]_i_2 
       (.I0(\cntTimeout_reg_n_0_[5] ),
        .I1(\cntTimeout_reg_n_0_[4] ),
        .I2(\cntTimeout_reg_n_0_[0] ),
        .I3(\cntTimeout_reg_n_0_[1] ),
        .I4(\cntTimeout_reg_n_0_[2] ),
        .I5(\cntTimeout_reg_n_0_[3] ),
        .O(\cntTimeout[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \cntTimeout[6]_i_1 
       (.I0(CommunicationState__0[2]),
        .I1(\cntTimeout_reg_n_0_[6] ),
        .I2(\cntTimeout[9]_i_4_n_0 ),
        .O(\cntTimeout[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8828)) 
    \cntTimeout[7]_i_1 
       (.I0(CommunicationState__0[2]),
        .I1(\cntTimeout_reg_n_0_[7] ),
        .I2(\cntTimeout_reg_n_0_[6] ),
        .I3(\cntTimeout[9]_i_4_n_0 ),
        .O(\cntTimeout[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h82888888)) 
    \cntTimeout[8]_i_1 
       (.I0(CommunicationState__0[2]),
        .I1(\cntTimeout_reg_n_0_[8] ),
        .I2(\cntTimeout[9]_i_4_n_0 ),
        .I3(\cntTimeout_reg_n_0_[6] ),
        .I4(\cntTimeout_reg_n_0_[7] ),
        .O(\cntTimeout[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF000000400000004)) 
    \cntTimeout[9]_i_1 
       (.I0(sbclkPrev),
        .I1(sbclk),
        .I2(CommunicationState__0[2]),
        .I3(CommunicationState__0[1]),
        .I4(CommunicationState__0[0]),
        .I5(\cntTimeout[9]_i_3_n_0 ),
        .O(\cntTimeout[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888828888888)) 
    \cntTimeout[9]_i_2 
       (.I0(CommunicationState__0[2]),
        .I1(\cntTimeout_reg_n_0_[9] ),
        .I2(\cntTimeout_reg_n_0_[8] ),
        .I3(\cntTimeout_reg_n_0_[7] ),
        .I4(\cntTimeout_reg_n_0_[6] ),
        .I5(\cntTimeout[9]_i_4_n_0 ),
        .O(\cntTimeout[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0100FFFF)) 
    \cntTimeout[9]_i_3 
       (.I0(\cntTimeout_reg_n_0_[6] ),
        .I1(\cntTimeout_reg_n_0_[8] ),
        .I2(\cntTimeout_reg_n_0_[7] ),
        .I3(\cntTimeout[9]_i_5_n_0 ),
        .I4(\cntTimeout_reg_n_0_[9] ),
        .O(\cntTimeout[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \cntTimeout[9]_i_4 
       (.I0(\cntTimeout_reg_n_0_[4] ),
        .I1(\cntTimeout_reg_n_0_[0] ),
        .I2(\cntTimeout_reg_n_0_[1] ),
        .I3(\cntTimeout_reg_n_0_[2] ),
        .I4(\cntTimeout_reg_n_0_[3] ),
        .I5(\cntTimeout_reg_n_0_[5] ),
        .O(\cntTimeout[9]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0111FFFF)) 
    \cntTimeout[9]_i_5 
       (.I0(\cntTimeout_reg_n_0_[3] ),
        .I1(\cntTimeout_reg_n_0_[4] ),
        .I2(\cntTimeout_reg_n_0_[1] ),
        .I3(\cntTimeout_reg_n_0_[2] ),
        .I4(\cntTimeout_reg_n_0_[5] ),
        .O(\cntTimeout[9]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntTimeout_reg[0] 
       (.C(clk),
        .CE(\cntTimeout[9]_i_1_n_0 ),
        .D(\cntTimeout[0]_i_1_n_0 ),
        .Q(\cntTimeout_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cntTimeout_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\cntTimeout[1]_i_1_n_0 ),
        .Q(\cntTimeout_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cntTimeout_reg[2] 
       (.C(clk),
        .CE(\cntTimeout[9]_i_1_n_0 ),
        .D(\cntTimeout[2]_i_1_n_0 ),
        .Q(\cntTimeout_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cntTimeout_reg[3] 
       (.C(clk),
        .CE(\cntTimeout[9]_i_1_n_0 ),
        .D(\cntTimeout[3]_i_1_n_0 ),
        .Q(\cntTimeout_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cntTimeout_reg[4] 
       (.C(clk),
        .CE(\cntTimeout[9]_i_1_n_0 ),
        .D(\cntTimeout[4]_i_1_n_0 ),
        .Q(\cntTimeout_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cntTimeout_reg[5] 
       (.C(clk),
        .CE(\cntTimeout[9]_i_1_n_0 ),
        .D(\cntTimeout[5]_i_2_n_0 ),
        .Q(\cntTimeout_reg_n_0_[5] ),
        .R(\cntTimeout[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntTimeout_reg[6] 
       (.C(clk),
        .CE(\cntTimeout[9]_i_1_n_0 ),
        .D(\cntTimeout[6]_i_1_n_0 ),
        .Q(\cntTimeout_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cntTimeout_reg[7] 
       (.C(clk),
        .CE(\cntTimeout[9]_i_1_n_0 ),
        .D(\cntTimeout[7]_i_1_n_0 ),
        .Q(\cntTimeout_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cntTimeout_reg[8] 
       (.C(clk),
        .CE(\cntTimeout[9]_i_1_n_0 ),
        .D(\cntTimeout[8]_i_1_n_0 ),
        .Q(\cntTimeout_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cntTimeout_reg[9] 
       (.C(clk),
        .CE(\cntTimeout[9]_i_1_n_0 ),
        .D(\cntTimeout[9]_i_2_n_0 ),
        .Q(\cntTimeout_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(\count_reg_n_0_[0] ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[1] ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1 
       (.I0(count_reg[2]),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count[3]_i_1 
       (.I0(count_reg[3]),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(count_reg[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count[4]_i_1 
       (.I0(count_reg[4]),
        .I1(count_reg[2]),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(count_reg[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \count[5]_i_1 
       (.I0(count_reg[5]),
        .I1(count_reg[3]),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(count_reg[2]),
        .I5(count_reg[4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \count[6]_i_1 
       (.I0(count_reg[5]),
        .I1(count_reg[4]),
        .I2(\count[7]_i_4_n_0 ),
        .I3(count_reg[6]),
        .O(p_0_in[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \count[7]_i_1 
       (.I0(sbclk),
        .I1(sbclkPrev),
        .O(clear));
  LUT6 #(
    .INIT(64'h00001FFFFFFFFFFF)) 
    \count[7]_i_2 
       (.I0(count_reg[2]),
        .I1(count_reg[3]),
        .I2(count_reg[4]),
        .I3(count_reg[5]),
        .I4(count_reg[6]),
        .I5(count_reg[7]),
        .O(\count[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAA6AAAAA)) 
    \count[7]_i_3 
       (.I0(count_reg[7]),
        .I1(count_reg[5]),
        .I2(count_reg[4]),
        .I3(\count[7]_i_4_n_0 ),
        .I4(count_reg[6]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count[7]_i_4 
       (.I0(count_reg[2]),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(count_reg[3]),
        .O(\count[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \count_reg[0] 
       (.C(clk),
        .CE(\count[7]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\count_reg_n_0_[0] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(\count[7]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\count_reg_n_0_[1] ),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \count_reg[2] 
       (.C(clk),
        .CE(\count[7]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(count_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(\count[7]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(count_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(\count[7]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(count_reg[4]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(\count[7]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(count_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(\count[7]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(count_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk),
        .CE(\count[7]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(count_reg[7]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hF3B30080)) 
    \dataBuf[0]_i_1 
       (.I0(sbdatain),
        .I1(\dataBuf[15]_i_3_n_0 ),
        .I2(CommunicationState__0[2]),
        .I3(\addressregister[7]_i_2_n_0 ),
        .I4(\dataBuf_reg_n_0_[0] ),
        .O(\dataBuf[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F80888080)) 
    \dataBuf[10]_i_1 
       (.I0(sbdatain),
        .I1(CommunicationState__0[2]),
        .I2(direction_i_2_n_0),
        .I3(\dataBuf[11]_i_3_n_0 ),
        .I4(\dataBuf[14]_i_3_n_0 ),
        .I5(\dataBuf_reg_n_0_[10] ),
        .O(\dataBuf[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFB333300080000)) 
    \dataBuf[11]_i_1 
       (.I0(sbdatain),
        .I1(\dataBuf[15]_i_3_n_0 ),
        .I2(\dataBuf[11]_i_2_n_0 ),
        .I3(\dataBuf[11]_i_3_n_0 ),
        .I4(CommunicationState__0[2]),
        .I5(\dataBuf_reg_n_0_[11] ),
        .O(\dataBuf[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataBuf[11]_i_2 
       (.I0(\bitCnt_reg_n_0_[0] ),
        .I1(\bitCnt_reg_n_0_[1] ),
        .O(\dataBuf[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    \dataBuf[11]_i_3 
       (.I0(\bitCnt_reg_n_0_[2] ),
        .I1(\bitCnt_reg_n_0_[3] ),
        .I2(\bitCnt_reg_n_0_[5] ),
        .I3(\bitCnt_reg_n_0_[4] ),
        .O(\dataBuf[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F80888080)) 
    \dataBuf[12]_i_1 
       (.I0(sbdatain),
        .I1(CommunicationState__0[2]),
        .I2(direction_i_2_n_0),
        .I3(\dataBuf[14]_i_2_n_0 ),
        .I4(\dataBuf[12]_i_2_n_0 ),
        .I5(\dataBuf_reg_n_0_[12] ),
        .O(\dataBuf[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \dataBuf[12]_i_2 
       (.I0(\bitCnt_reg_n_0_[0] ),
        .I1(\bitCnt_reg_n_0_[1] ),
        .I2(sbclk),
        .I3(sbclkPrev),
        .I4(CommunicationState__0[1]),
        .I5(CommunicationState__0[0]),
        .O(\dataBuf[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F80888080)) 
    \dataBuf[13]_i_1 
       (.I0(sbdatain),
        .I1(CommunicationState__0[2]),
        .I2(direction_i_2_n_0),
        .I3(\dataBuf[14]_i_2_n_0 ),
        .I4(\dataBuf[13]_i_2_n_0 ),
        .I5(\dataBuf_reg_n_0_[13] ),
        .O(\dataBuf[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \dataBuf[13]_i_2 
       (.I0(\bitCnt_reg_n_0_[1] ),
        .I1(\bitCnt_reg_n_0_[0] ),
        .I2(sbclk),
        .I3(sbclkPrev),
        .I4(CommunicationState__0[1]),
        .I5(CommunicationState__0[0]),
        .O(\dataBuf[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F80888080)) 
    \dataBuf[14]_i_1 
       (.I0(sbdatain),
        .I1(CommunicationState__0[2]),
        .I2(direction_i_2_n_0),
        .I3(\dataBuf[14]_i_2_n_0 ),
        .I4(\dataBuf[14]_i_3_n_0 ),
        .I5(\dataBuf_reg_n_0_[14] ),
        .O(\dataBuf[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \dataBuf[14]_i_2 
       (.I0(\bitCnt_reg_n_0_[3] ),
        .I1(\bitCnt_reg_n_0_[5] ),
        .I2(\bitCnt_reg_n_0_[4] ),
        .I3(\bitCnt_reg_n_0_[2] ),
        .O(\dataBuf[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \dataBuf[14]_i_3 
       (.I0(\bitCnt_reg_n_0_[0] ),
        .I1(\bitCnt_reg_n_0_[1] ),
        .I2(sbclk),
        .I3(sbclkPrev),
        .I4(CommunicationState__0[1]),
        .I5(CommunicationState__0[0]),
        .O(\dataBuf[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F80888080)) 
    \dataBuf[15]_i_1 
       (.I0(sbdatain),
        .I1(CommunicationState__0[2]),
        .I2(direction_i_2_n_0),
        .I3(\dataBuf[15]_i_2_n_0 ),
        .I4(\dataBuf[15]_i_3_n_0 ),
        .I5(\dataBuf_reg_n_0_[15] ),
        .O(\dataBuf[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7FFFFFFFFF)) 
    \dataBuf[15]_i_2 
       (.I0(\bitCnt_reg_n_0_[1] ),
        .I1(\bitCnt_reg_n_0_[0] ),
        .I2(\bitCnt_reg_n_0_[2] ),
        .I3(\bitCnt_reg_n_0_[4] ),
        .I4(\bitCnt_reg_n_0_[5] ),
        .I5(\bitCnt_reg_n_0_[3] ),
        .O(\dataBuf[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \dataBuf[15]_i_3 
       (.I0(CommunicationState__0[0]),
        .I1(sbclk),
        .I2(sbclkPrev),
        .I3(CommunicationState__0[1]),
        .O(\dataBuf[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBA8888888A)) 
    \dataBuf[1]_i_1 
       (.I0(bufCRC),
        .I1(direction_i_2_n_0),
        .I2(\dataBuf[1]_i_2_n_0 ),
        .I3(CommunicationState__0[0]),
        .I4(CommunicationState__0[1]),
        .I5(\dataBuf_reg_n_0_[1] ),
        .O(\dataBuf[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \dataBuf[1]_i_2 
       (.I0(\dataBuf[2]_i_2_n_0 ),
        .I1(\bitCnt_reg_n_0_[1] ),
        .I2(\bitCnt_reg_n_0_[0] ),
        .I3(sbclk),
        .I4(sbclkPrev),
        .O(\dataBuf[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F80888080)) 
    \dataBuf[2]_i_1 
       (.I0(sbdatain),
        .I1(CommunicationState__0[2]),
        .I2(direction_i_2_n_0),
        .I3(\dataBuf[2]_i_2_n_0 ),
        .I4(\dataBuf[14]_i_3_n_0 ),
        .I5(\dataBuf_reg_n_0_[2] ),
        .O(\dataBuf[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \dataBuf[2]_i_2 
       (.I0(\bitCnt_reg_n_0_[4] ),
        .I1(\bitCnt_reg_n_0_[5] ),
        .I2(\bitCnt_reg_n_0_[3] ),
        .I3(\bitCnt_reg_n_0_[2] ),
        .O(\dataBuf[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBA8888888A)) 
    \dataBuf[3]_i_1 
       (.I0(bufCRC),
        .I1(direction_i_2_n_0),
        .I2(\dataBuf[3]_i_2_n_0 ),
        .I3(CommunicationState__0[0]),
        .I4(CommunicationState__0[1]),
        .I5(\dataBuf_reg_n_0_[3] ),
        .O(\dataBuf[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFBFFFFFF)) 
    \dataBuf[3]_i_2 
       (.I0(\dataBuf[2]_i_2_n_0 ),
        .I1(sbclk),
        .I2(sbclkPrev),
        .I3(\bitCnt_reg_n_0_[0] ),
        .I4(\bitCnt_reg_n_0_[1] ),
        .O(\dataBuf[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F80888080)) 
    \dataBuf[4]_i_1 
       (.I0(sbdatain),
        .I1(CommunicationState__0[2]),
        .I2(direction_i_2_n_0),
        .I3(\dataBuf[6]_i_2_n_0 ),
        .I4(\dataBuf[12]_i_2_n_0 ),
        .I5(\dataBuf_reg_n_0_[4] ),
        .O(\dataBuf[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F80888080)) 
    \dataBuf[5]_i_1 
       (.I0(sbdatain),
        .I1(CommunicationState__0[2]),
        .I2(direction_i_2_n_0),
        .I3(\dataBuf[6]_i_2_n_0 ),
        .I4(\dataBuf[13]_i_2_n_0 ),
        .I5(\dataBuf_reg_n_0_[5] ),
        .O(\dataBuf[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F80888080)) 
    \dataBuf[6]_i_1 
       (.I0(sbdatain),
        .I1(CommunicationState__0[2]),
        .I2(direction_i_2_n_0),
        .I3(\dataBuf[6]_i_2_n_0 ),
        .I4(\dataBuf[14]_i_3_n_0 ),
        .I5(\dataBuf_reg_n_0_[6] ),
        .O(\dataBuf[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \dataBuf[6]_i_2 
       (.I0(\bitCnt_reg_n_0_[4] ),
        .I1(\bitCnt_reg_n_0_[5] ),
        .I2(\bitCnt_reg_n_0_[2] ),
        .I3(\bitCnt_reg_n_0_[3] ),
        .O(\dataBuf[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBA8888888A)) 
    \dataBuf[7]_i_1 
       (.I0(bufCRC),
        .I1(direction_i_2_n_0),
        .I2(\dataBuf[7]_i_3_n_0 ),
        .I3(CommunicationState__0[0]),
        .I4(CommunicationState__0[1]),
        .I5(\dataBuf_reg_n_0_[7] ),
        .O(\dataBuf[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dataBuf[7]_i_2 
       (.I0(sbdatain),
        .I1(CommunicationState__0[2]),
        .O(bufCRC));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFFDFFF)) 
    \dataBuf[7]_i_3 
       (.I0(sbclk),
        .I1(sbclkPrev),
        .I2(\bitCnt_reg_n_0_[0] ),
        .I3(\bitCnt_reg_n_0_[1] ),
        .I4(\dataBuf[6]_i_2_n_0 ),
        .O(\dataBuf[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F80888080)) 
    \dataBuf[8]_i_1 
       (.I0(sbdatain),
        .I1(CommunicationState__0[2]),
        .I2(direction_i_2_n_0),
        .I3(\dataBuf[11]_i_3_n_0 ),
        .I4(\dataBuf[12]_i_2_n_0 ),
        .I5(\dataBuf_reg_n_0_[8] ),
        .O(\dataBuf[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F80888080)) 
    \dataBuf[9]_i_1 
       (.I0(sbdatain),
        .I1(CommunicationState__0[2]),
        .I2(direction_i_2_n_0),
        .I3(\dataBuf[11]_i_3_n_0 ),
        .I4(\dataBuf[13]_i_2_n_0 ),
        .I5(\dataBuf_reg_n_0_[9] ),
        .O(\dataBuf[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuf_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\dataBuf[0]_i_1_n_0 ),
        .Q(\dataBuf_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuf_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\dataBuf[10]_i_1_n_0 ),
        .Q(\dataBuf_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuf_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\dataBuf[11]_i_1_n_0 ),
        .Q(\dataBuf_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuf_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\dataBuf[12]_i_1_n_0 ),
        .Q(\dataBuf_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuf_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\dataBuf[13]_i_1_n_0 ),
        .Q(\dataBuf_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuf_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\dataBuf[14]_i_1_n_0 ),
        .Q(\dataBuf_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuf_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\dataBuf[15]_i_1_n_0 ),
        .Q(\dataBuf_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuf_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\dataBuf[1]_i_1_n_0 ),
        .Q(\dataBuf_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuf_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\dataBuf[2]_i_1_n_0 ),
        .Q(\dataBuf_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuf_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\dataBuf[3]_i_1_n_0 ),
        .Q(\dataBuf_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuf_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\dataBuf[4]_i_1_n_0 ),
        .Q(\dataBuf_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuf_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\dataBuf[5]_i_1_n_0 ),
        .Q(\dataBuf_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuf_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\dataBuf[6]_i_1_n_0 ),
        .Q(\dataBuf_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuf_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\dataBuf[7]_i_1_n_0 ),
        .Q(\dataBuf_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuf_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\dataBuf[8]_i_1_n_0 ),
        .Q(\dataBuf_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuf_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\dataBuf[9]_i_1_n_0 ),
        .Q(\dataBuf_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dataCRC[0]_i_1 
       (.I0(CommunicationState__0[2]),
        .I1(sbdatain),
        .I2(datain[0]),
        .I3(CommunicationState__0[1]),
        .O(dataCRC[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \dataCRC[10]_i_1 
       (.I0(\dataBuf_reg_n_0_[10] ),
        .I1(CommunicationState__0[2]),
        .I2(datain[10]),
        .I3(CommunicationState__0[1]),
        .O(dataCRC[10]));
  LUT4 #(
    .INIT(16'hF888)) 
    \dataCRC[11]_i_1 
       (.I0(\dataBuf_reg_n_0_[11] ),
        .I1(CommunicationState__0[2]),
        .I2(datain[11]),
        .I3(CommunicationState__0[1]),
        .O(dataCRC[11]));
  LUT4 #(
    .INIT(16'hF888)) 
    \dataCRC[12]_i_1 
       (.I0(\dataBuf_reg_n_0_[12] ),
        .I1(CommunicationState__0[2]),
        .I2(datain[12]),
        .I3(CommunicationState__0[1]),
        .O(dataCRC[12]));
  LUT4 #(
    .INIT(16'hF888)) 
    \dataCRC[13]_i_1 
       (.I0(\dataBuf_reg_n_0_[13] ),
        .I1(CommunicationState__0[2]),
        .I2(datain[13]),
        .I3(CommunicationState__0[1]),
        .O(dataCRC[13]));
  LUT4 #(
    .INIT(16'hF888)) 
    \dataCRC[14]_i_1 
       (.I0(\dataBuf_reg_n_0_[14] ),
        .I1(CommunicationState__0[2]),
        .I2(datain[14]),
        .I3(CommunicationState__0[1]),
        .O(dataCRC[14]));
  LUT6 #(
    .INIT(64'h00050005003F0000)) 
    \dataCRC[15]_i_1 
       (.I0(\dataCRC[15]_i_3_n_0 ),
        .I1(\addressregister[7]_i_2_n_0 ),
        .I2(CommunicationState__0[2]),
        .I3(CommunicationState__0[0]),
        .I4(\addDevRegBuf[4]_i_3_n_0 ),
        .I5(CommunicationState__0[1]),
        .O(\dataCRC[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \dataCRC[15]_i_2 
       (.I0(\dataBuf_reg_n_0_[15] ),
        .I1(CommunicationState__0[2]),
        .I2(datain[15]),
        .I3(CommunicationState__0[1]),
        .O(dataCRC[15]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFBFFFFF)) 
    \dataCRC[15]_i_3 
       (.I0(\dataBuf[14]_i_2_n_0 ),
        .I1(\bitCnt_reg_n_0_[0] ),
        .I2(\bitCnt_reg_n_0_[1] ),
        .I3(sbclk),
        .I4(sbclkPrev),
        .O(\dataCRC[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \dataCRC[1]_i_1 
       (.I0(\dataBuf_reg_n_0_[1] ),
        .I1(CommunicationState__0[2]),
        .I2(datain[1]),
        .I3(CommunicationState__0[1]),
        .O(dataCRC[1]));
  LUT4 #(
    .INIT(16'h0010)) 
    \dataCRC[24]_i_1 
       (.I0(CommunicationState__0[2]),
        .I1(CommunicationState__0[0]),
        .I2(\addDevRegBuf[4]_i_3_n_0 ),
        .I3(CommunicationState__0[1]),
        .O(\dataCRC[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \dataCRC[2]_i_1 
       (.I0(\dataBuf_reg_n_0_[2] ),
        .I1(CommunicationState__0[2]),
        .I2(datain[2]),
        .I3(CommunicationState__0[1]),
        .O(dataCRC[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dataCRC[3]_i_1 
       (.I0(\dataBuf_reg_n_0_[3] ),
        .I1(CommunicationState__0[2]),
        .I2(datain[3]),
        .I3(CommunicationState__0[1]),
        .O(dataCRC[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dataCRC[4]_i_1 
       (.I0(\dataBuf_reg_n_0_[4] ),
        .I1(CommunicationState__0[2]),
        .I2(datain[4]),
        .I3(CommunicationState__0[1]),
        .O(dataCRC[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \dataCRC[5]_i_1 
       (.I0(\dataBuf_reg_n_0_[5] ),
        .I1(CommunicationState__0[2]),
        .I2(datain[5]),
        .I3(CommunicationState__0[1]),
        .O(dataCRC[5]));
  LUT4 #(
    .INIT(16'hF888)) 
    \dataCRC[6]_i_1 
       (.I0(\dataBuf_reg_n_0_[6] ),
        .I1(CommunicationState__0[2]),
        .I2(datain[6]),
        .I3(CommunicationState__0[1]),
        .O(dataCRC[6]));
  LUT4 #(
    .INIT(16'hF888)) 
    \dataCRC[7]_i_1 
       (.I0(\dataBuf_reg_n_0_[7] ),
        .I1(CommunicationState__0[2]),
        .I2(datain[7]),
        .I3(CommunicationState__0[1]),
        .O(dataCRC[7]));
  LUT4 #(
    .INIT(16'hF888)) 
    \dataCRC[8]_i_1 
       (.I0(\dataBuf_reg_n_0_[8] ),
        .I1(CommunicationState__0[2]),
        .I2(datain[8]),
        .I3(CommunicationState__0[1]),
        .O(dataCRC[8]));
  LUT4 #(
    .INIT(16'hF888)) 
    \dataCRC[9]_i_1 
       (.I0(\dataBuf_reg_n_0_[9] ),
        .I1(CommunicationState__0[2]),
        .I2(datain[9]),
        .I3(CommunicationState__0[1]),
        .O(dataCRC[9]));
  FDRE #(
    .INIT(1'b0)) 
    \dataCRC_reg[0] 
       (.C(clk),
        .CE(\dataCRC[15]_i_1_n_0 ),
        .D(dataCRC[0]),
        .Q(\dataCRC_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataCRC_reg[10] 
       (.C(clk),
        .CE(\dataCRC[15]_i_1_n_0 ),
        .D(dataCRC[10]),
        .Q(\dataCRC_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataCRC_reg[11] 
       (.C(clk),
        .CE(\dataCRC[15]_i_1_n_0 ),
        .D(dataCRC[11]),
        .Q(\dataCRC_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataCRC_reg[12] 
       (.C(clk),
        .CE(\dataCRC[15]_i_1_n_0 ),
        .D(dataCRC[12]),
        .Q(\dataCRC_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataCRC_reg[13] 
       (.C(clk),
        .CE(\dataCRC[15]_i_1_n_0 ),
        .D(dataCRC[13]),
        .Q(\dataCRC_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataCRC_reg[14] 
       (.C(clk),
        .CE(\dataCRC[15]_i_1_n_0 ),
        .D(dataCRC[14]),
        .Q(\dataCRC_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataCRC_reg[15] 
       (.C(clk),
        .CE(\dataCRC[15]_i_1_n_0 ),
        .D(dataCRC[15]),
        .Q(\dataCRC_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataCRC_reg[16] 
       (.C(clk),
        .CE(\dataCRC[15]_i_1_n_0 ),
        .D(\addDevRegBuf_reg_n_0_[0] ),
        .Q(\dataCRC_reg_n_0_[16] ),
        .R(\dataCRC[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataCRC_reg[17] 
       (.C(clk),
        .CE(\dataCRC[15]_i_1_n_0 ),
        .D(\addDevRegBuf_reg_n_0_[1] ),
        .Q(\dataCRC_reg_n_0_[17] ),
        .R(\dataCRC[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataCRC_reg[18] 
       (.C(clk),
        .CE(\dataCRC[15]_i_1_n_0 ),
        .D(\addDevRegBuf_reg_n_0_[2] ),
        .Q(\dataCRC_reg_n_0_[18] ),
        .R(\dataCRC[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataCRC_reg[19] 
       (.C(clk),
        .CE(\dataCRC[15]_i_1_n_0 ),
        .D(\addDevRegBuf_reg_n_0_[3] ),
        .Q(\dataCRC_reg_n_0_[19] ),
        .R(\dataCRC[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataCRC_reg[1] 
       (.C(clk),
        .CE(\dataCRC[15]_i_1_n_0 ),
        .D(dataCRC[1]),
        .Q(\dataCRC_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataCRC_reg[20] 
       (.C(clk),
        .CE(\dataCRC[15]_i_1_n_0 ),
        .D(\addDevRegBuf_reg_n_0_[4] ),
        .Q(\dataCRC_reg_n_0_[20] ),
        .R(\dataCRC[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataCRC_reg[21] 
       (.C(clk),
        .CE(\dataCRC[15]_i_1_n_0 ),
        .D(\addDevRegBuf_reg_n_0_[5] ),
        .Q(\dataCRC_reg_n_0_[21] ),
        .R(\dataCRC[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataCRC_reg[22] 
       (.C(clk),
        .CE(\dataCRC[15]_i_1_n_0 ),
        .D(\addDevRegBuf_reg_n_0_[6] ),
        .Q(\dataCRC_reg_n_0_[22] ),
        .R(\dataCRC[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataCRC_reg[23] 
       (.C(clk),
        .CE(\dataCRC[15]_i_1_n_0 ),
        .D(\addDevRegBuf_reg_n_0_[7] ),
        .Q(\dataCRC_reg_n_0_[23] ),
        .R(\dataCRC[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataCRC_reg[24] 
       (.C(clk),
        .CE(\dataCRC[15]_i_1_n_0 ),
        .D(direction_reg_0),
        .Q(\dataCRC_reg_n_0_[24] ),
        .R(\dataCRC[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataCRC_reg[2] 
       (.C(clk),
        .CE(\dataCRC[15]_i_1_n_0 ),
        .D(dataCRC[2]),
        .Q(\dataCRC_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataCRC_reg[3] 
       (.C(clk),
        .CE(\dataCRC[15]_i_1_n_0 ),
        .D(dataCRC[3]),
        .Q(\dataCRC_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataCRC_reg[4] 
       (.C(clk),
        .CE(\dataCRC[15]_i_1_n_0 ),
        .D(dataCRC[4]),
        .Q(\dataCRC_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataCRC_reg[5] 
       (.C(clk),
        .CE(\dataCRC[15]_i_1_n_0 ),
        .D(dataCRC[5]),
        .Q(\dataCRC_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataCRC_reg[6] 
       (.C(clk),
        .CE(\dataCRC[15]_i_1_n_0 ),
        .D(dataCRC[6]),
        .Q(\dataCRC_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataCRC_reg[7] 
       (.C(clk),
        .CE(\dataCRC[15]_i_1_n_0 ),
        .D(dataCRC[7]),
        .Q(\dataCRC_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataCRC_reg[8] 
       (.C(clk),
        .CE(\dataCRC[15]_i_1_n_0 ),
        .D(dataCRC[8]),
        .Q(\dataCRC_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataCRC_reg[9] 
       (.C(clk),
        .CE(\dataCRC[15]_i_1_n_0 ),
        .D(dataCRC[9]),
        .Q(\dataCRC_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h20000000)) 
    \dataout[15]_i_1 
       (.I0(\dataout[15]_i_2_n_0 ),
        .I1(CommunicationState__0[0]),
        .I2(CommunicationState__0[1]),
        .I3(readyCRC),
        .I4(CommunicationState__0[2]),
        .O(\dataout[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00009009)) 
    \dataout[15]_i_2 
       (.I0(\CRC_reg_n_0_[0] ),
        .I1(\bufCRC_reg_n_0_[0] ),
        .I2(p_0_in_0),
        .I3(\bufCRC_reg_n_0_[1] ),
        .I4(\dataout[15]_i_3_n_0 ),
        .O(\dataout[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    \dataout[15]_i_3 
       (.I0(\bufCRC_reg_n_0_[2] ),
        .I1(\CRC_reg_n_0_[2] ),
        .I2(\bufCRC_reg_n_0_[3] ),
        .I3(p_0_in0_in),
        .O(\dataout[15]_i_3_n_0 ));
  FDRE \dataout_reg[0] 
       (.C(clk),
        .CE(\dataout[15]_i_1_n_0 ),
        .D(\dataBuf_reg_n_0_[0] ),
        .Q(dataout[0]),
        .R(1'b0));
  FDRE \dataout_reg[10] 
       (.C(clk),
        .CE(\dataout[15]_i_1_n_0 ),
        .D(\dataBuf_reg_n_0_[10] ),
        .Q(dataout[10]),
        .R(1'b0));
  FDRE \dataout_reg[11] 
       (.C(clk),
        .CE(\dataout[15]_i_1_n_0 ),
        .D(\dataBuf_reg_n_0_[11] ),
        .Q(dataout[11]),
        .R(1'b0));
  FDRE \dataout_reg[12] 
       (.C(clk),
        .CE(\dataout[15]_i_1_n_0 ),
        .D(\dataBuf_reg_n_0_[12] ),
        .Q(dataout[12]),
        .R(1'b0));
  FDRE \dataout_reg[13] 
       (.C(clk),
        .CE(\dataout[15]_i_1_n_0 ),
        .D(\dataBuf_reg_n_0_[13] ),
        .Q(dataout[13]),
        .R(1'b0));
  FDRE \dataout_reg[14] 
       (.C(clk),
        .CE(\dataout[15]_i_1_n_0 ),
        .D(\dataBuf_reg_n_0_[14] ),
        .Q(dataout[14]),
        .R(1'b0));
  FDRE \dataout_reg[15] 
       (.C(clk),
        .CE(\dataout[15]_i_1_n_0 ),
        .D(\dataBuf_reg_n_0_[15] ),
        .Q(dataout[15]),
        .R(1'b0));
  FDRE \dataout_reg[1] 
       (.C(clk),
        .CE(\dataout[15]_i_1_n_0 ),
        .D(\dataBuf_reg_n_0_[1] ),
        .Q(dataout[1]),
        .R(1'b0));
  FDRE \dataout_reg[2] 
       (.C(clk),
        .CE(\dataout[15]_i_1_n_0 ),
        .D(\dataBuf_reg_n_0_[2] ),
        .Q(dataout[2]),
        .R(1'b0));
  FDRE \dataout_reg[3] 
       (.C(clk),
        .CE(\dataout[15]_i_1_n_0 ),
        .D(\dataBuf_reg_n_0_[3] ),
        .Q(dataout[3]),
        .R(1'b0));
  FDRE \dataout_reg[4] 
       (.C(clk),
        .CE(\dataout[15]_i_1_n_0 ),
        .D(\dataBuf_reg_n_0_[4] ),
        .Q(dataout[4]),
        .R(1'b0));
  FDRE \dataout_reg[5] 
       (.C(clk),
        .CE(\dataout[15]_i_1_n_0 ),
        .D(\dataBuf_reg_n_0_[5] ),
        .Q(dataout[5]),
        .R(1'b0));
  FDRE \dataout_reg[6] 
       (.C(clk),
        .CE(\dataout[15]_i_1_n_0 ),
        .D(\dataBuf_reg_n_0_[6] ),
        .Q(dataout[6]),
        .R(1'b0));
  FDRE \dataout_reg[7] 
       (.C(clk),
        .CE(\dataout[15]_i_1_n_0 ),
        .D(\dataBuf_reg_n_0_[7] ),
        .Q(dataout[7]),
        .R(1'b0));
  FDRE \dataout_reg[8] 
       (.C(clk),
        .CE(\dataout[15]_i_1_n_0 ),
        .D(\dataBuf_reg_n_0_[8] ),
        .Q(dataout[8]),
        .R(1'b0));
  FDRE \dataout_reg[9] 
       (.C(clk),
        .CE(\dataout[15]_i_1_n_0 ),
        .D(\dataBuf_reg_n_0_[9] ),
        .Q(dataout[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    dataready_i_1
       (.I0(dataready_i_2_n_0),
        .I1(\dataout[15]_i_1_n_0 ),
        .I2(dataready_i_3_n_0),
        .I3(direction_i_2_n_0),
        .I4(dataready),
        .O(dataready_i_1_n_0));
  LUT5 #(
    .INIT(32'hFF202020)) 
    dataready_i_2
       (.I0(sbclk),
        .I1(sbclkPrev),
        .I2(CommunicationState__0[0]),
        .I3(\dataout[15]_i_2_n_0 ),
        .I4(CommunicationState__0[1]),
        .O(dataready_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    dataready_i_3
       (.I0(direction_reg_0),
        .I1(\bitCnt_reg_n_0_[5] ),
        .I2(\bitCnt_reg_n_0_[0] ),
        .I3(CommunicationState__0[2]),
        .I4(CommunicationState__0[1]),
        .I5(dataready_i_4_n_0),
        .O(dataready_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    dataready_i_4
       (.I0(\addDevRegBuf[4]_i_3_n_0 ),
        .I1(CommunicationState__0[0]),
        .I2(\bitCnt_reg_n_0_[1] ),
        .I3(\bitCnt_reg_n_0_[4] ),
        .I4(\bitCnt_reg_n_0_[2] ),
        .I5(\bitCnt_reg_n_0_[3] ),
        .O(dataready_i_4_n_0));
  FDRE dataready_reg
       (.C(clk),
        .CE(1'b1),
        .D(dataready_i_1_n_0),
        .Q(dataready),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    direction_i_1
       (.I0(sbdatain),
        .I1(direction_i_2_n_0),
        .I2(direction_reg_0),
        .O(direction_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    direction_i_2
       (.I0(CommunicationState__0[0]),
        .I1(sbclk),
        .I2(sbclkPrev),
        .I3(CommunicationState__0[2]),
        .I4(CommunicationState__0[1]),
        .O(direction_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    direction_reg
       (.C(clk),
        .CE(1'b1),
        .D(direction_i_1_n_0),
        .Q(direction_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h00DC)) 
    \lacth[0]_i_1 
       (.I0(readyCRC),
        .I1(\lacth_reg_n_0_[0] ),
        .I2(lacth),
        .I3(resetCRC_reg_n_0),
        .O(\lacth[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lacth_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\lacth[0]_i_1_n_0 ),
        .Q(\lacth_reg_n_0_[0] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h00EA)) 
    readyCRC_i_1
       (.I0(readyCRC),
        .I1(lacth),
        .I2(\lacth_reg_n_0_[0] ),
        .I3(resetCRC_reg_n_0),
        .O(readyCRC_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    readyCRC_reg
       (.C(clk),
        .CE(1'b1),
        .D(readyCRC_i_1_n_0),
        .Q(readyCRC),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF44FFF7FF44FF04)) 
    resetCRC_i_1
       (.I0(resetCRC_i_2_n_0),
        .I1(resetCRC_i_3_n_0),
        .I2(resetCRC_i_4_n_0),
        .I3(resetCRC_i_5_n_0),
        .I4(resetCRC_i_6_n_0),
        .I5(resetCRC_reg_n_0),
        .O(resetCRC_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFD3FFD3FFDFFFD3)) 
    resetCRC_i_2
       (.I0(\dataCRC[15]_i_3_n_0 ),
        .I1(CommunicationState__0[2]),
        .I2(CommunicationState__0[1]),
        .I3(CommunicationState__0[0]),
        .I4(\addDevRegBuf[4]_i_3_n_0 ),
        .I5(\addressregister[7]_i_2_n_0 ),
        .O(resetCRC_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    resetCRC_i_3
       (.I0(sbReset),
        .I1(sbResetPrev),
        .O(resetCRC_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    resetCRC_i_4
       (.I0(CommunicationState__0[0]),
        .I1(CommunicationState__0[1]),
        .I2(CommunicationState__0[2]),
        .O(resetCRC_i_4_n_0));
  LUT6 #(
    .INIT(64'hAAFEAAAAAAFBAAAA)) 
    resetCRC_i_5
       (.I0(direction_i_2_n_0),
        .I1(CommunicationState__0[1]),
        .I2(CommunicationState__0[0]),
        .I3(sbResetPrev),
        .I4(sbReset),
        .I5(CommunicationState__0[2]),
        .O(resetCRC_i_5_n_0));
  LUT6 #(
    .INIT(64'h000000EE000F0000)) 
    resetCRC_i_6
       (.I0(resetCRC_i_3_n_0),
        .I1(resetCRC_i_7_n_0),
        .I2(\dataCRC[15]_i_3_n_0 ),
        .I3(CommunicationState__0[0]),
        .I4(CommunicationState__0[1]),
        .I5(CommunicationState__0[2]),
        .O(resetCRC_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h04)) 
    resetCRC_i_7
       (.I0(sbclkPrev),
        .I1(sbclk),
        .I2(\addressregister[7]_i_2_n_0 ),
        .O(resetCRC_i_7_n_0));
  FDRE #(
    .INIT(1'b1)) 
    resetCRC_reg
       (.C(clk),
        .CE(1'b1),
        .D(resetCRC_i_1_n_0),
        .Q(resetCRC_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hF4FFF400)) 
    sbDataOutBuf_tristate_oe_i_1
       (.I0(\dataout[15]_i_2_n_0 ),
        .I1(CommunicationState__0[2]),
        .I2(sbDataOutBuf_tristate_oe_i_2_n_0),
        .I3(sbDataOutBuf_tristate_oe_i_3_n_0),
        .I4(sbDataOutBuf_tristate_oe_reg_n_0),
        .O(sbDataOutBuf_tristate_oe_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sbDataOutBuf_tristate_oe_i_10
       (.I0(datain[11]),
        .I1(datain[10]),
        .I2(\bitCnt_reg_n_0_[1] ),
        .I3(datain[9]),
        .I4(\bitCnt_reg_n_0_[0] ),
        .I5(datain[8]),
        .O(sbDataOutBuf_tristate_oe_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sbDataOutBuf_tristate_oe_i_11
       (.I0(datain[15]),
        .I1(datain[14]),
        .I2(\bitCnt_reg_n_0_[1] ),
        .I3(datain[13]),
        .I4(\bitCnt_reg_n_0_[0] ),
        .I5(datain[12]),
        .O(sbDataOutBuf_tristate_oe_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h0000FB3B)) 
    sbDataOutBuf_tristate_oe_i_2
       (.I0(sbDataOutBuf_tristate_oe_reg_i_4_n_0),
        .I1(CommunicationState__0[1]),
        .I2(CommunicationState__0[0]),
        .I3(sbDataOutBuf_tristate_oe_i_5_n_0),
        .I4(CommunicationState__0[2]),
        .O(sbDataOutBuf_tristate_oe_i_2_n_0));
  LUT6 #(
    .INIT(64'h008550D500800085)) 
    sbDataOutBuf_tristate_oe_i_3
       (.I0(CommunicationState__0[2]),
        .I1(readyCRC),
        .I2(CommunicationState__0[1]),
        .I3(CommunicationState__0[0]),
        .I4(sbclk),
        .I5(sbclkPrev),
        .O(sbDataOutBuf_tristate_oe_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sbDataOutBuf_tristate_oe_i_5
       (.I0(p_0_in0_in),
        .I1(\CRC_reg_n_0_[2] ),
        .I2(\bitCnt_reg_n_0_[1] ),
        .I3(p_0_in_0),
        .I4(\bitCnt_reg_n_0_[0] ),
        .I5(\CRC_reg_n_0_[0] ),
        .O(sbDataOutBuf_tristate_oe_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sbDataOutBuf_tristate_oe_i_8
       (.I0(datain[3]),
        .I1(datain[2]),
        .I2(\bitCnt_reg_n_0_[1] ),
        .I3(datain[1]),
        .I4(\bitCnt_reg_n_0_[0] ),
        .I5(datain[0]),
        .O(sbDataOutBuf_tristate_oe_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sbDataOutBuf_tristate_oe_i_9
       (.I0(datain[7]),
        .I1(datain[6]),
        .I2(\bitCnt_reg_n_0_[1] ),
        .I3(datain[5]),
        .I4(\bitCnt_reg_n_0_[0] ),
        .I5(datain[4]),
        .O(sbDataOutBuf_tristate_oe_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sbDataOutBuf_tristate_oe_reg
       (.C(clk),
        .CE(1'b1),
        .D(sbDataOutBuf_tristate_oe_i_1_n_0),
        .Q(sbDataOutBuf_tristate_oe_reg_n_0),
        .R(1'b0));
  MUXF8 sbDataOutBuf_tristate_oe_reg_i_4
       (.I0(sbDataOutBuf_tristate_oe_reg_i_6_n_0),
        .I1(sbDataOutBuf_tristate_oe_reg_i_7_n_0),
        .O(sbDataOutBuf_tristate_oe_reg_i_4_n_0),
        .S(\bitCnt_reg_n_0_[3] ));
  MUXF7 sbDataOutBuf_tristate_oe_reg_i_6
       (.I0(sbDataOutBuf_tristate_oe_i_8_n_0),
        .I1(sbDataOutBuf_tristate_oe_i_9_n_0),
        .O(sbDataOutBuf_tristate_oe_reg_i_6_n_0),
        .S(\bitCnt_reg_n_0_[2] ));
  MUXF7 sbDataOutBuf_tristate_oe_reg_i_7
       (.I0(sbDataOutBuf_tristate_oe_i_10_n_0),
        .I1(sbDataOutBuf_tristate_oe_i_11_n_0),
        .O(sbDataOutBuf_tristate_oe_reg_i_7_n_0),
        .S(\bitCnt_reg_n_0_[2] ));
  FDRE #(
    .INIT(1'b0)) 
    sbResetPrev_reg
       (.C(clk),
        .CE(1'b1),
        .D(sbReset),
        .Q(sbResetPrev),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hC382)) 
    sbReset_i_1
       (.I0(sbReset),
        .I1(sbclk),
        .I2(sbclkPrev),
        .I3(sbReset_i_2_n_0),
        .O(sbReset_i_1_n_0));
  LUT6 #(
    .INIT(64'hA888A888A8888888)) 
    sbReset_i_2
       (.I0(count_reg[7]),
        .I1(count_reg[6]),
        .I2(count_reg[5]),
        .I3(count_reg[4]),
        .I4(count_reg[3]),
        .I5(count_reg[2]),
        .O(sbReset_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sbReset_reg
       (.C(clk),
        .CE(1'b1),
        .D(sbReset_i_1_n_0),
        .Q(sbReset),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sbclkPrev_reg
       (.C(clk),
        .CE(1'b1),
        .D(sbclk),
        .Q(sbclkPrev),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    sbdataout_INST_0
       (.I0(sbDataOutBuf_tristate_oe_reg_n_0),
        .I1(sbdataout_INST_0_i_1_0),
        .O(sbdataout));
  LUT6 #(
    .INIT(64'hFFF1FFFFFFF10000)) 
    sbdataout_INST_0_i_2
       (.I0(\bitCnt[5]_i_3_n_0 ),
        .I1(sbdataout),
        .I2(sbdataout_INST_0_i_3_n_0),
        .I3(sbdataout_INST_0_i_4_n_0),
        .I4(sbDataOutBuf_tristate_oe_i_3_n_0),
        .I5(sbdataout_INST_0_i_1_0),
        .O(sbdataout_INST_0_i_1));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    sbdataout_INST_0_i_3
       (.I0(readyCRC),
        .I1(CommunicationState__0[2]),
        .O(sbdataout_INST_0_i_3_n_0));
  LUT4 #(
    .INIT(16'h0040)) 
    sbdataout_INST_0_i_4
       (.I0(sbclk),
        .I1(sbclkPrev),
        .I2(CommunicationState__0[1]),
        .I3(CommunicationState__0[2]),
        .O(sbdataout_INST_0_i_4_n_0));
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
