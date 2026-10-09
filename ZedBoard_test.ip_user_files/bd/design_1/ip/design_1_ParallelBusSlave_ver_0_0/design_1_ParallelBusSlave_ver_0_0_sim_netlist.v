// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Oct  9 15:47:10 2026
// Host        : STAS-W10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/GITEA/GitHub/ES/Zedboard/ZedBoard_test.srcs/sources_1/bd/design_1/ip/design_1_ParallelBusSlave_ver_0_0/design_1_ParallelBusSlave_ver_0_0_sim_netlist.v
// Design      : design_1_ParallelBusSlave_ver_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_ParallelBusSlave_ver_0_0,ParallelBusSlave_ver_2_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "ParallelBusSlave_ver_2_0,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module design_1_ParallelBusSlave_ver_0_0
   (clk,
    pbclk,
    pbdata,
    pbce,
    pback,
    addressregister,
    datain,
    dataready);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input clk;
  input pbclk;
  inout [15:0]pbdata;
  input pbce;
  output pback;
  output [7:0]addressregister;
  input [15:0]datain;
  output dataready;

  wire U0_n_1;
  wire U0_n_13;
  wire U0_n_2;
  wire U0_n_4;
  wire [7:0]addressregister;
  wire clk;
  wire [15:0]datain;
  wire dataready;
  wire pback;
  wire pback_INST_0_i_1_n_0;
  wire pbce;
  wire pbclk;
  wire [15:0]pbdata;
  wire \pbdata[15]_INST_0_i_1_n_0 ;

  design_1_ParallelBusSlave_ver_0_0_ParallelBusSlave_ver_2_0 U0
       (.E(U0_n_4),
        .\FSM_sequential_CommunicationState_reg[1]_0 (U0_n_1),
        .SS(U0_n_2),
        .addressregister(addressregister),
        .clk(clk),
        .datain(datain),
        .dataready(dataready),
        .pback(pback),
        .pback_INST_0_i_1(pback_INST_0_i_1_n_0),
        .pbce(pbce),
        .pbce_0(U0_n_13),
        .pbclk(pbclk),
        .pbdata(pbdata),
        .pbdata_0_sp_1(\pbdata[15]_INST_0_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    pback_INST_0_i_1
       (.C(clk),
        .CE(1'b1),
        .D(U0_n_1),
        .Q(pback_INST_0_i_1_n_0),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \pbdata[15]_INST_0_i_1 
       (.C(clk),
        .CE(U0_n_4),
        .D(U0_n_13),
        .Q(\pbdata[15]_INST_0_i_1_n_0 ),
        .S(U0_n_2));
endmodule

(* ORIG_REF_NAME = "ParallelBusSlave_ver_2_0" *) 
module design_1_ParallelBusSlave_ver_0_0_ParallelBusSlave_ver_2_0
   (dataready,
    \FSM_sequential_CommunicationState_reg[1]_0 ,
    SS,
    pback,
    E,
    addressregister,
    pbce_0,
    pbdata,
    clk,
    pbce,
    pback_INST_0_i_1,
    pbclk,
    pbdata_0_sp_1,
    datain);
  output dataready;
  output \FSM_sequential_CommunicationState_reg[1]_0 ;
  output [0:0]SS;
  output pback;
  output [0:0]E;
  output [7:0]addressregister;
  output pbce_0;
  inout [15:0]pbdata;
  input clk;
  input pbce;
  input pback_INST_0_i_1;
  input pbclk;
  input pbdata_0_sp_1;
  input [15:0]datain;

  wire [2:0]CommunicationState;
  wire [0:0]E;
  wire \FSM_sequential_CommunicationState[0]_i_1_n_0 ;
  wire \FSM_sequential_CommunicationState[1]_i_1_n_0 ;
  wire \FSM_sequential_CommunicationState[2]_i_1_n_0 ;
  wire \FSM_sequential_CommunicationState_reg[1]_0 ;
  wire [0:0]SS;
  wire [7:0]addressregister;
  wire \addressregister[7]_i_1_n_0 ;
  wire \addressregister[7]_i_3_n_0 ;
  wire \addressregister[7]_i_4_n_0 ;
  wire \addressregister[7]_i_5_n_0 ;
  wire \addressregister[7]_i_6_n_0 ;
  wire \addressregister[7]_i_7_n_0 ;
  wire \addressregister[7]_i_8_n_0 ;
  wire \addressregister[7]_i_9_n_0 ;
  wire clk;
  wire count;
  wire \count[0]_i_1_n_0 ;
  wire \count[0]_i_2_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[1]_i_2_n_0 ;
  wire \count[1]_i_3_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[2]_i_2_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire [15:0]dataBuf;
  wire \dataBuf[15]_i_1_n_0 ;
  wire [15:0]datain;
  wire dataready;
  wire dataready_i_1_n_0;
  wire eqOp;
  wire pbAckBuf_tristate_oe_i_1_n_0;
  wire pbAckBuf_tristate_oe_i_2_n_0;
  wire pbAckBuf_tristate_oe_reg_n_0;
  wire pback;
  wire pback_INST_0_i_1;
  wire pback_INST_0_i_3_n_0;
  wire pbce;
  wire pbce_0;
  wire pbclk;
  wire [15:0]pbdata;
  wire pbdata_0_sn_1;
  wire \pbdata_tristate_oe[0]_i_1_n_0 ;
  wire \pbdata_tristate_oe[10]_i_1_n_0 ;
  wire \pbdata_tristate_oe[11]_i_1_n_0 ;
  wire \pbdata_tristate_oe[12]_i_1_n_0 ;
  wire \pbdata_tristate_oe[13]_i_1_n_0 ;
  wire \pbdata_tristate_oe[14]_i_1_n_0 ;
  wire \pbdata_tristate_oe[15]_i_3_n_0 ;
  wire \pbdata_tristate_oe[1]_i_1_n_0 ;
  wire \pbdata_tristate_oe[2]_i_1_n_0 ;
  wire \pbdata_tristate_oe[3]_i_1_n_0 ;
  wire \pbdata_tristate_oe[4]_i_1_n_0 ;
  wire \pbdata_tristate_oe[5]_i_1_n_0 ;
  wire \pbdata_tristate_oe[6]_i_1_n_0 ;
  wire \pbdata_tristate_oe[7]_i_1_n_0 ;
  wire \pbdata_tristate_oe[8]_i_1_n_0 ;
  wire \pbdata_tristate_oe[9]_i_1_n_0 ;
  wire \pbdata_tristate_oe_reg_n_0_[0] ;
  wire \pbdata_tristate_oe_reg_n_0_[10] ;
  wire \pbdata_tristate_oe_reg_n_0_[11] ;
  wire \pbdata_tristate_oe_reg_n_0_[12] ;
  wire \pbdata_tristate_oe_reg_n_0_[13] ;
  wire \pbdata_tristate_oe_reg_n_0_[14] ;
  wire \pbdata_tristate_oe_reg_n_0_[15] ;
  wire \pbdata_tristate_oe_reg_n_0_[1] ;
  wire \pbdata_tristate_oe_reg_n_0_[2] ;
  wire \pbdata_tristate_oe_reg_n_0_[3] ;
  wire \pbdata_tristate_oe_reg_n_0_[4] ;
  wire \pbdata_tristate_oe_reg_n_0_[5] ;
  wire \pbdata_tristate_oe_reg_n_0_[6] ;
  wire \pbdata_tristate_oe_reg_n_0_[7] ;
  wire \pbdata_tristate_oe_reg_n_0_[8] ;
  wire \pbdata_tristate_oe_reg_n_0_[9] ;

  assign pbdata_0_sn_1 = pbdata_0_sp_1;
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFF000E2)) 
    \FSM_sequential_CommunicationState[0]_i_1 
       (.I0(eqOp),
        .I1(CommunicationState[1]),
        .I2(pbclk),
        .I3(CommunicationState[2]),
        .I4(CommunicationState[0]),
        .O(\FSM_sequential_CommunicationState[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hA9AA)) 
    \FSM_sequential_CommunicationState[1]_i_1 
       (.I0(CommunicationState[1]),
        .I1(pbclk),
        .I2(CommunicationState[2]),
        .I3(CommunicationState[0]),
        .O(\FSM_sequential_CommunicationState[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFF0CFF11)) 
    \FSM_sequential_CommunicationState[2]_i_1 
       (.I0(eqOp),
        .I1(CommunicationState[1]),
        .I2(pbclk),
        .I3(CommunicationState[2]),
        .I4(CommunicationState[0]),
        .O(\FSM_sequential_CommunicationState[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "receiveaddress:000,transmitdata:010,transmitcheck:011,waiting:100,getdata:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CommunicationState_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_CommunicationState[0]_i_1_n_0 ),
        .Q(CommunicationState[0]),
        .R(pbce));
  (* FSM_ENCODED_STATES = "receiveaddress:000,transmitdata:010,transmitcheck:011,waiting:100,getdata:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CommunicationState_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_CommunicationState[1]_i_1_n_0 ),
        .Q(CommunicationState[1]),
        .R(pbce));
  (* FSM_ENCODED_STATES = "receiveaddress:000,transmitdata:010,transmitcheck:011,waiting:100,getdata:001" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_sequential_CommunicationState_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_CommunicationState[2]_i_1_n_0 ),
        .Q(CommunicationState[2]),
        .R(pbce));
  LUT5 #(
    .INIT(32'h00000100)) 
    \addressregister[7]_i_1 
       (.I0(CommunicationState[2]),
        .I1(CommunicationState[0]),
        .I2(CommunicationState[1]),
        .I3(eqOp),
        .I4(pbce),
        .O(\addressregister[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000660)) 
    \addressregister[7]_i_2 
       (.I0(pbdata[6]),
        .I1(pbdata[14]),
        .I2(pbdata[7]),
        .I3(pbdata[15]),
        .I4(\addressregister[7]_i_3_n_0 ),
        .O(eqOp));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \addressregister[7]_i_3 
       (.I0(\addressregister[7]_i_4_n_0 ),
        .I1(\addressregister[7]_i_5_n_0 ),
        .I2(\addressregister[7]_i_6_n_0 ),
        .I3(\addressregister[7]_i_7_n_0 ),
        .I4(\addressregister[7]_i_8_n_0 ),
        .I5(\addressregister[7]_i_9_n_0 ),
        .O(\addressregister[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addressregister[7]_i_4 
       (.I0(pbdata[5]),
        .I1(pbdata[13]),
        .O(\addressregister[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addressregister[7]_i_5 
       (.I0(pbdata[4]),
        .I1(pbdata[12]),
        .O(\addressregister[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addressregister[7]_i_6 
       (.I0(pbdata[3]),
        .I1(pbdata[11]),
        .O(\addressregister[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addressregister[7]_i_7 
       (.I0(pbdata[1]),
        .I1(pbdata[9]),
        .O(\addressregister[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addressregister[7]_i_8 
       (.I0(pbdata[2]),
        .I1(pbdata[10]),
        .O(\addressregister[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addressregister[7]_i_9 
       (.I0(pbdata[0]),
        .I1(pbdata[8]),
        .O(\addressregister[7]_i_9_n_0 ));
  FDRE \addressregister_reg[0] 
       (.C(clk),
        .CE(\addressregister[7]_i_1_n_0 ),
        .D(pbdata[8]),
        .Q(addressregister[0]),
        .R(1'b0));
  FDRE \addressregister_reg[1] 
       (.C(clk),
        .CE(\addressregister[7]_i_1_n_0 ),
        .D(pbdata[9]),
        .Q(addressregister[1]),
        .R(1'b0));
  FDRE \addressregister_reg[2] 
       (.C(clk),
        .CE(\addressregister[7]_i_1_n_0 ),
        .D(pbdata[10]),
        .Q(addressregister[2]),
        .R(1'b0));
  FDRE \addressregister_reg[3] 
       (.C(clk),
        .CE(\addressregister[7]_i_1_n_0 ),
        .D(pbdata[11]),
        .Q(addressregister[3]),
        .R(1'b0));
  FDRE \addressregister_reg[4] 
       (.C(clk),
        .CE(\addressregister[7]_i_1_n_0 ),
        .D(pbdata[12]),
        .Q(addressregister[4]),
        .R(1'b0));
  FDRE \addressregister_reg[5] 
       (.C(clk),
        .CE(\addressregister[7]_i_1_n_0 ),
        .D(pbdata[13]),
        .Q(addressregister[5]),
        .R(1'b0));
  FDRE \addressregister_reg[6] 
       (.C(clk),
        .CE(\addressregister[7]_i_1_n_0 ),
        .D(pbdata[14]),
        .Q(addressregister[6]),
        .R(1'b0));
  FDRE \addressregister_reg[7] 
       (.C(clk),
        .CE(\addressregister[7]_i_1_n_0 ),
        .D(pbdata[15]),
        .Q(addressregister[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFB03B00004004)) 
    \count[0]_i_1 
       (.I0(\count[0]_i_2_n_0 ),
        .I1(CommunicationState[1]),
        .I2(pbclk),
        .I3(CommunicationState[0]),
        .I4(CommunicationState[2]),
        .I5(\count_reg_n_0_[0] ),
        .O(\count[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \count[0]_i_2 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .O(\count[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBAFFEA00)) 
    \count[1]_i_1 
       (.I0(\count[1]_i_2_n_0 ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count[1]_i_3_n_0 ),
        .I3(count),
        .I4(\count_reg_n_0_[1] ),
        .O(\count[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \count[1]_i_2 
       (.I0(CommunicationState[1]),
        .I1(pbclk),
        .I2(CommunicationState[2]),
        .O(\count[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4004)) 
    \count[1]_i_3 
       (.I0(CommunicationState[2]),
        .I1(CommunicationState[1]),
        .I2(pbclk),
        .I3(CommunicationState[0]),
        .O(\count[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00004FC4)) 
    \count[1]_i_4 
       (.I0(\count[0]_i_2_n_0 ),
        .I1(CommunicationState[1]),
        .I2(pbclk),
        .I3(CommunicationState[0]),
        .I4(CommunicationState[2]),
        .O(count));
  LUT6 #(
    .INIT(64'hAAAAAAAABA000ABA)) 
    \count[2]_i_1 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count[2]_i_2_n_0 ),
        .I2(CommunicationState[1]),
        .I3(pbclk),
        .I4(CommunicationState[0]),
        .I5(CommunicationState[2]),
        .O(\count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \count[2]_i_2 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[1] ),
        .O(\count[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(\count_reg_n_0_[0] ),
        .R(pbce));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[1]_i_1_n_0 ),
        .Q(\count_reg_n_0_[1] ),
        .R(pbce));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[2]_i_1_n_0 ),
        .Q(\count_reg_n_0_[2] ),
        .R(pbce));
  LUT5 #(
    .INIT(32'h00000004)) 
    \dataBuf[15]_i_1 
       (.I0(pbclk),
        .I1(CommunicationState[0]),
        .I2(pbce),
        .I3(CommunicationState[2]),
        .I4(CommunicationState[1]),
        .O(\dataBuf[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuf_reg[0] 
       (.C(clk),
        .CE(\dataBuf[15]_i_1_n_0 ),
        .D(datain[0]),
        .Q(dataBuf[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuf_reg[10] 
       (.C(clk),
        .CE(\dataBuf[15]_i_1_n_0 ),
        .D(datain[10]),
        .Q(dataBuf[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuf_reg[11] 
       (.C(clk),
        .CE(\dataBuf[15]_i_1_n_0 ),
        .D(datain[11]),
        .Q(dataBuf[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuf_reg[12] 
       (.C(clk),
        .CE(\dataBuf[15]_i_1_n_0 ),
        .D(datain[12]),
        .Q(dataBuf[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuf_reg[13] 
       (.C(clk),
        .CE(\dataBuf[15]_i_1_n_0 ),
        .D(datain[13]),
        .Q(dataBuf[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuf_reg[14] 
       (.C(clk),
        .CE(\dataBuf[15]_i_1_n_0 ),
        .D(datain[14]),
        .Q(dataBuf[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuf_reg[15] 
       (.C(clk),
        .CE(\dataBuf[15]_i_1_n_0 ),
        .D(datain[15]),
        .Q(dataBuf[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuf_reg[1] 
       (.C(clk),
        .CE(\dataBuf[15]_i_1_n_0 ),
        .D(datain[1]),
        .Q(dataBuf[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuf_reg[2] 
       (.C(clk),
        .CE(\dataBuf[15]_i_1_n_0 ),
        .D(datain[2]),
        .Q(dataBuf[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuf_reg[3] 
       (.C(clk),
        .CE(\dataBuf[15]_i_1_n_0 ),
        .D(datain[3]),
        .Q(dataBuf[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuf_reg[4] 
       (.C(clk),
        .CE(\dataBuf[15]_i_1_n_0 ),
        .D(datain[4]),
        .Q(dataBuf[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuf_reg[5] 
       (.C(clk),
        .CE(\dataBuf[15]_i_1_n_0 ),
        .D(datain[5]),
        .Q(dataBuf[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuf_reg[6] 
       (.C(clk),
        .CE(\dataBuf[15]_i_1_n_0 ),
        .D(datain[6]),
        .Q(dataBuf[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuf_reg[7] 
       (.C(clk),
        .CE(\dataBuf[15]_i_1_n_0 ),
        .D(datain[7]),
        .Q(dataBuf[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuf_reg[8] 
       (.C(clk),
        .CE(\dataBuf[15]_i_1_n_0 ),
        .D(datain[8]),
        .Q(dataBuf[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuf_reg[9] 
       (.C(clk),
        .CE(\dataBuf[15]_i_1_n_0 ),
        .D(datain[9]),
        .Q(dataBuf[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AAABAAAA)) 
    dataready_i_1
       (.I0(dataready),
        .I1(CommunicationState[2]),
        .I2(CommunicationState[0]),
        .I3(CommunicationState[1]),
        .I4(eqOp),
        .I5(pbce),
        .O(dataready_i_1_n_0));
  FDRE dataready_reg
       (.C(clk),
        .CE(1'b1),
        .D(dataready_i_1_n_0),
        .Q(dataready),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hABAAFFFFABAA0000)) 
    pbAckBuf_tristate_oe_i_1
       (.I0(pbce),
        .I1(CommunicationState[2]),
        .I2(CommunicationState[0]),
        .I3(CommunicationState[1]),
        .I4(pbAckBuf_tristate_oe_i_2_n_0),
        .I5(pbAckBuf_tristate_oe_reg_n_0),
        .O(pbAckBuf_tristate_oe_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAEBAABBAAAAAABB)) 
    pbAckBuf_tristate_oe_i_2
       (.I0(pbce),
        .I1(CommunicationState[0]),
        .I2(pbclk),
        .I3(CommunicationState[2]),
        .I4(CommunicationState[1]),
        .I5(\count[0]_i_2_n_0 ),
        .O(pbAckBuf_tristate_oe_i_2_n_0));
  FDRE pbAckBuf_tristate_oe_reg
       (.C(clk),
        .CE(1'b1),
        .D(pbAckBuf_tristate_oe_i_1_n_0),
        .Q(pbAckBuf_tristate_oe_reg_n_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    pback_INST_0
       (.I0(pbAckBuf_tristate_oe_reg_n_0),
        .I1(pback_INST_0_i_1),
        .O(pback));
  LUT6 #(
    .INIT(64'hBBBAFFFFBBBA0000)) 
    pback_INST_0_i_2
       (.I0(SS),
        .I1(pback_INST_0_i_3_n_0),
        .I2(CommunicationState[1]),
        .I3(eqOp),
        .I4(pbAckBuf_tristate_oe_i_2_n_0),
        .I5(pback_INST_0_i_1),
        .O(\FSM_sequential_CommunicationState_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFF4)) 
    pback_INST_0_i_3
       (.I0(pbclk),
        .I1(CommunicationState[0]),
        .I2(CommunicationState[2]),
        .I3(pbce),
        .O(pback_INST_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pbdata[0]_INST_0 
       (.I0(\pbdata_tristate_oe_reg_n_0_[0] ),
        .I1(pbdata_0_sn_1),
        .O(pbdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pbdata[10]_INST_0 
       (.I0(\pbdata_tristate_oe_reg_n_0_[10] ),
        .I1(pbdata_0_sn_1),
        .O(pbdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pbdata[11]_INST_0 
       (.I0(\pbdata_tristate_oe_reg_n_0_[11] ),
        .I1(pbdata_0_sn_1),
        .O(pbdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pbdata[12]_INST_0 
       (.I0(\pbdata_tristate_oe_reg_n_0_[12] ),
        .I1(pbdata_0_sn_1),
        .O(pbdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pbdata[13]_INST_0 
       (.I0(\pbdata_tristate_oe_reg_n_0_[13] ),
        .I1(pbdata_0_sn_1),
        .O(pbdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pbdata[14]_INST_0 
       (.I0(\pbdata_tristate_oe_reg_n_0_[14] ),
        .I1(pbdata_0_sn_1),
        .O(pbdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pbdata[15]_INST_0 
       (.I0(\pbdata_tristate_oe_reg_n_0_[15] ),
        .I1(pbdata_0_sn_1),
        .O(pbdata[15]));
  LUT6 #(
    .INIT(64'h4744444444444744)) 
    \pbdata[15]_INST_0_i_2 
       (.I0(pback),
        .I1(pbce),
        .I2(CommunicationState[2]),
        .I3(CommunicationState[1]),
        .I4(pbclk),
        .I5(CommunicationState[0]),
        .O(pbce_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pbdata[1]_INST_0 
       (.I0(\pbdata_tristate_oe_reg_n_0_[1] ),
        .I1(pbdata_0_sn_1),
        .O(pbdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pbdata[2]_INST_0 
       (.I0(\pbdata_tristate_oe_reg_n_0_[2] ),
        .I1(pbdata_0_sn_1),
        .O(pbdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pbdata[3]_INST_0 
       (.I0(\pbdata_tristate_oe_reg_n_0_[3] ),
        .I1(pbdata_0_sn_1),
        .O(pbdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pbdata[4]_INST_0 
       (.I0(\pbdata_tristate_oe_reg_n_0_[4] ),
        .I1(pbdata_0_sn_1),
        .O(pbdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pbdata[5]_INST_0 
       (.I0(\pbdata_tristate_oe_reg_n_0_[5] ),
        .I1(pbdata_0_sn_1),
        .O(pbdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pbdata[6]_INST_0 
       (.I0(\pbdata_tristate_oe_reg_n_0_[6] ),
        .I1(pbdata_0_sn_1),
        .O(pbdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pbdata[7]_INST_0 
       (.I0(\pbdata_tristate_oe_reg_n_0_[7] ),
        .I1(pbdata_0_sn_1),
        .O(pbdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pbdata[8]_INST_0 
       (.I0(\pbdata_tristate_oe_reg_n_0_[8] ),
        .I1(pbdata_0_sn_1),
        .O(pbdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pbdata[9]_INST_0 
       (.I0(\pbdata_tristate_oe_reg_n_0_[9] ),
        .I1(pbdata_0_sn_1),
        .O(pbdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \pbdata_tristate_oe[0]_i_1 
       (.I0(dataBuf[0]),
        .I1(CommunicationState[0]),
        .I2(CommunicationState[2]),
        .O(\pbdata_tristate_oe[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \pbdata_tristate_oe[10]_i_1 
       (.I0(dataBuf[10]),
        .I1(CommunicationState[0]),
        .I2(CommunicationState[2]),
        .O(\pbdata_tristate_oe[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \pbdata_tristate_oe[11]_i_1 
       (.I0(dataBuf[11]),
        .I1(CommunicationState[0]),
        .I2(CommunicationState[2]),
        .O(\pbdata_tristate_oe[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \pbdata_tristate_oe[12]_i_1 
       (.I0(dataBuf[12]),
        .I1(CommunicationState[0]),
        .I2(CommunicationState[2]),
        .O(\pbdata_tristate_oe[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \pbdata_tristate_oe[13]_i_1 
       (.I0(dataBuf[13]),
        .I1(CommunicationState[0]),
        .I2(CommunicationState[2]),
        .O(\pbdata_tristate_oe[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \pbdata_tristate_oe[14]_i_1 
       (.I0(dataBuf[14]),
        .I1(CommunicationState[0]),
        .I2(CommunicationState[2]),
        .O(\pbdata_tristate_oe[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pbdata_tristate_oe[15]_i_1 
       (.I0(pbce),
        .I1(pback),
        .O(SS));
  LUT5 #(
    .INIT(32'hAAAAEBAA)) 
    \pbdata_tristate_oe[15]_i_2 
       (.I0(pbce),
        .I1(CommunicationState[0]),
        .I2(pbclk),
        .I3(CommunicationState[1]),
        .I4(CommunicationState[2]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \pbdata_tristate_oe[15]_i_3 
       (.I0(dataBuf[15]),
        .I1(CommunicationState[0]),
        .I2(CommunicationState[2]),
        .O(\pbdata_tristate_oe[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \pbdata_tristate_oe[1]_i_1 
       (.I0(dataBuf[1]),
        .I1(CommunicationState[0]),
        .I2(CommunicationState[2]),
        .O(\pbdata_tristate_oe[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \pbdata_tristate_oe[2]_i_1 
       (.I0(dataBuf[2]),
        .I1(CommunicationState[0]),
        .I2(CommunicationState[2]),
        .O(\pbdata_tristate_oe[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \pbdata_tristate_oe[3]_i_1 
       (.I0(dataBuf[3]),
        .I1(CommunicationState[0]),
        .I2(CommunicationState[2]),
        .O(\pbdata_tristate_oe[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \pbdata_tristate_oe[4]_i_1 
       (.I0(dataBuf[4]),
        .I1(CommunicationState[0]),
        .I2(CommunicationState[2]),
        .O(\pbdata_tristate_oe[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \pbdata_tristate_oe[5]_i_1 
       (.I0(dataBuf[5]),
        .I1(CommunicationState[0]),
        .I2(CommunicationState[2]),
        .O(\pbdata_tristate_oe[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \pbdata_tristate_oe[6]_i_1 
       (.I0(dataBuf[6]),
        .I1(CommunicationState[0]),
        .I2(CommunicationState[2]),
        .O(\pbdata_tristate_oe[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \pbdata_tristate_oe[7]_i_1 
       (.I0(dataBuf[7]),
        .I1(CommunicationState[0]),
        .I2(CommunicationState[2]),
        .O(\pbdata_tristate_oe[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \pbdata_tristate_oe[8]_i_1 
       (.I0(dataBuf[8]),
        .I1(CommunicationState[0]),
        .I2(CommunicationState[2]),
        .O(\pbdata_tristate_oe[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \pbdata_tristate_oe[9]_i_1 
       (.I0(dataBuf[9]),
        .I1(CommunicationState[0]),
        .I2(CommunicationState[2]),
        .O(\pbdata_tristate_oe[9]_i_1_n_0 ));
  FDSE \pbdata_tristate_oe_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\pbdata_tristate_oe[0]_i_1_n_0 ),
        .Q(\pbdata_tristate_oe_reg_n_0_[0] ),
        .S(SS));
  FDSE \pbdata_tristate_oe_reg[10] 
       (.C(clk),
        .CE(E),
        .D(\pbdata_tristate_oe[10]_i_1_n_0 ),
        .Q(\pbdata_tristate_oe_reg_n_0_[10] ),
        .S(SS));
  FDSE \pbdata_tristate_oe_reg[11] 
       (.C(clk),
        .CE(E),
        .D(\pbdata_tristate_oe[11]_i_1_n_0 ),
        .Q(\pbdata_tristate_oe_reg_n_0_[11] ),
        .S(SS));
  FDSE \pbdata_tristate_oe_reg[12] 
       (.C(clk),
        .CE(E),
        .D(\pbdata_tristate_oe[12]_i_1_n_0 ),
        .Q(\pbdata_tristate_oe_reg_n_0_[12] ),
        .S(SS));
  FDSE \pbdata_tristate_oe_reg[13] 
       (.C(clk),
        .CE(E),
        .D(\pbdata_tristate_oe[13]_i_1_n_0 ),
        .Q(\pbdata_tristate_oe_reg_n_0_[13] ),
        .S(SS));
  FDSE \pbdata_tristate_oe_reg[14] 
       (.C(clk),
        .CE(E),
        .D(\pbdata_tristate_oe[14]_i_1_n_0 ),
        .Q(\pbdata_tristate_oe_reg_n_0_[14] ),
        .S(SS));
  FDSE \pbdata_tristate_oe_reg[15] 
       (.C(clk),
        .CE(E),
        .D(\pbdata_tristate_oe[15]_i_3_n_0 ),
        .Q(\pbdata_tristate_oe_reg_n_0_[15] ),
        .S(SS));
  FDSE \pbdata_tristate_oe_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\pbdata_tristate_oe[1]_i_1_n_0 ),
        .Q(\pbdata_tristate_oe_reg_n_0_[1] ),
        .S(SS));
  FDSE \pbdata_tristate_oe_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\pbdata_tristate_oe[2]_i_1_n_0 ),
        .Q(\pbdata_tristate_oe_reg_n_0_[2] ),
        .S(SS));
  FDSE \pbdata_tristate_oe_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\pbdata_tristate_oe[3]_i_1_n_0 ),
        .Q(\pbdata_tristate_oe_reg_n_0_[3] ),
        .S(SS));
  FDSE \pbdata_tristate_oe_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\pbdata_tristate_oe[4]_i_1_n_0 ),
        .Q(\pbdata_tristate_oe_reg_n_0_[4] ),
        .S(SS));
  FDSE \pbdata_tristate_oe_reg[5] 
       (.C(clk),
        .CE(E),
        .D(\pbdata_tristate_oe[5]_i_1_n_0 ),
        .Q(\pbdata_tristate_oe_reg_n_0_[5] ),
        .S(SS));
  FDSE \pbdata_tristate_oe_reg[6] 
       (.C(clk),
        .CE(E),
        .D(\pbdata_tristate_oe[6]_i_1_n_0 ),
        .Q(\pbdata_tristate_oe_reg_n_0_[6] ),
        .S(SS));
  FDSE \pbdata_tristate_oe_reg[7] 
       (.C(clk),
        .CE(E),
        .D(\pbdata_tristate_oe[7]_i_1_n_0 ),
        .Q(\pbdata_tristate_oe_reg_n_0_[7] ),
        .S(SS));
  FDSE \pbdata_tristate_oe_reg[8] 
       (.C(clk),
        .CE(E),
        .D(\pbdata_tristate_oe[8]_i_1_n_0 ),
        .Q(\pbdata_tristate_oe_reg_n_0_[8] ),
        .S(SS));
  FDSE \pbdata_tristate_oe_reg[9] 
       (.C(clk),
        .CE(E),
        .D(\pbdata_tristate_oe[9]_i_1_n_0 ),
        .Q(\pbdata_tristate_oe_reg_n_0_[9] ),
        .S(SS));
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
