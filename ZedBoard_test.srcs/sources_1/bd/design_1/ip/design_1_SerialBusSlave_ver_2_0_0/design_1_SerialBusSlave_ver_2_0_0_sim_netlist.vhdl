-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri Oct  9 13:56:21 2026
-- Host        : STAS-W10 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/GITEA/GitHub/ES/Zedboard/ZedBoard_test.srcs/sources_1/bd/design_1/ip/design_1_SerialBusSlave_ver_2_0_0/design_1_SerialBusSlave_ver_2_0_0_sim_netlist.vhdl
-- Design      : design_1_SerialBusSlave_ver_2_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SerialBusSlave_ver_2_0_0_SerialBusSlave_ver_2_0 is
  port (
    direction_reg_0 : out STD_LOGIC;
    dataready : out STD_LOGIC;
    sbdataout_INST_0_i_1 : out STD_LOGIC;
    sbdataout : out STD_LOGIC;
    addressregister : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dataout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sbclk : in STD_LOGIC;
    clk : in STD_LOGIC;
    sbdatain : in STD_LOGIC;
    sbdataout_INST_0_i_1_0 : in STD_LOGIC;
    datain : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_SerialBusSlave_ver_2_0_0_SerialBusSlave_ver_2_0 : entity is "SerialBusSlave_ver_2_0";
end design_1_SerialBusSlave_ver_2_0_0_SerialBusSlave_ver_2_0;

architecture STRUCTURE of design_1_SerialBusSlave_ver_2_0_0_SerialBusSlave_ver_2_0 is
  signal CRC0 : STD_LOGIC;
  signal CRC02_out : STD_LOGIC;
  signal \CRC[0]_i_10_n_0\ : STD_LOGIC;
  signal \CRC[0]_i_11_n_0\ : STD_LOGIC;
  signal \CRC[0]_i_1_n_0\ : STD_LOGIC;
  signal \CRC[0]_i_4_n_0\ : STD_LOGIC;
  signal \CRC[0]_i_5_n_0\ : STD_LOGIC;
  signal \CRC[0]_i_6_n_0\ : STD_LOGIC;
  signal \CRC[0]_i_7_n_0\ : STD_LOGIC;
  signal \CRC[0]_i_8_n_0\ : STD_LOGIC;
  signal \CRC[0]_i_9_n_0\ : STD_LOGIC;
  signal \CRC[3]_i_1_n_0\ : STD_LOGIC;
  signal \CRC_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \CRC_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \CRC_reg_n_0_[0]\ : STD_LOGIC;
  signal \CRC_reg_n_0_[2]\ : STD_LOGIC;
  signal \CommunicationState__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \FSM_sequential_CommunicationState[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_CommunicationState[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_CommunicationState[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_CommunicationState[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_CommunicationState[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_CommunicationState[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_CommunicationState[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_CommunicationState[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_CommunicationState[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_CommunicationState[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_CommunicationState[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_CommunicationState[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_CommunicationState[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_CommunicationState[2]_i_8_n_0\ : STD_LOGIC;
  signal addDevRegBuf : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \addDevRegBuf[0]_i_1_n_0\ : STD_LOGIC;
  signal \addDevRegBuf[1]_i_1_n_0\ : STD_LOGIC;
  signal \addDevRegBuf[2]_i_1_n_0\ : STD_LOGIC;
  signal \addDevRegBuf[2]_i_2_n_0\ : STD_LOGIC;
  signal \addDevRegBuf[3]_i_1_n_0\ : STD_LOGIC;
  signal \addDevRegBuf[4]_i_1_n_0\ : STD_LOGIC;
  signal \addDevRegBuf[4]_i_3_n_0\ : STD_LOGIC;
  signal \addDevRegBuf[5]_i_1_n_0\ : STD_LOGIC;
  signal \addDevRegBuf[5]_i_2_n_0\ : STD_LOGIC;
  signal \addDevRegBuf[6]_i_1_n_0\ : STD_LOGIC;
  signal \addDevRegBuf[6]_i_2_n_0\ : STD_LOGIC;
  signal \addDevRegBuf[6]_i_3_n_0\ : STD_LOGIC;
  signal \addDevRegBuf[7]_i_1_n_0\ : STD_LOGIC;
  signal \addDevRegBuf_reg_n_0_[0]\ : STD_LOGIC;
  signal \addDevRegBuf_reg_n_0_[1]\ : STD_LOGIC;
  signal \addDevRegBuf_reg_n_0_[2]\ : STD_LOGIC;
  signal \addDevRegBuf_reg_n_0_[3]\ : STD_LOGIC;
  signal \addDevRegBuf_reg_n_0_[4]\ : STD_LOGIC;
  signal \addDevRegBuf_reg_n_0_[5]\ : STD_LOGIC;
  signal \addDevRegBuf_reg_n_0_[6]\ : STD_LOGIC;
  signal \addDevRegBuf_reg_n_0_[7]\ : STD_LOGIC;
  signal \addressregister[7]_i_1_n_0\ : STD_LOGIC;
  signal \addressregister[7]_i_2_n_0\ : STD_LOGIC;
  signal bitCnt : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \bitCnt[0]__0_i_1_n_0\ : STD_LOGIC;
  signal \bitCnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \bitCnt[1]__0_i_1_n_0\ : STD_LOGIC;
  signal \bitCnt[2]__0_i_1_n_0\ : STD_LOGIC;
  signal \bitCnt[3]__0_i_1_n_0\ : STD_LOGIC;
  signal \bitCnt[4]__0_i_1_n_0\ : STD_LOGIC;
  signal \bitCnt[4]__0_i_2_n_0\ : STD_LOGIC;
  signal \bitCnt[4]__0_i_4_n_0\ : STD_LOGIC;
  signal \bitCnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \bitCnt[5]__0_i_1_n_0\ : STD_LOGIC;
  signal \bitCnt[5]__0_i_2_n_0\ : STD_LOGIC;
  signal \bitCnt[5]__0_i_3_n_0\ : STD_LOGIC;
  signal \bitCnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \bitCnt[5]_i_3_n_0\ : STD_LOGIC;
  signal \bitCnt[5]_i_4_n_0\ : STD_LOGIC;
  signal \bitCnt[5]_i_5_n_0\ : STD_LOGIC;
  signal \bitCnt_reg[0]__0_n_0\ : STD_LOGIC;
  signal \bitCnt_reg[1]__0_n_0\ : STD_LOGIC;
  signal \bitCnt_reg[2]__0_n_0\ : STD_LOGIC;
  signal \bitCnt_reg[3]__0_n_0\ : STD_LOGIC;
  signal \bitCnt_reg[4]__0_n_0\ : STD_LOGIC;
  signal \bitCnt_reg[5]__0_n_0\ : STD_LOGIC;
  signal \bitCnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \bitCnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \bitCnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \bitCnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \bitCnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \bitCnt_reg_n_0_[5]\ : STD_LOGIC;
  signal bufCRC : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \bufCRC[0]_i_1_n_0\ : STD_LOGIC;
  signal \bufCRC[0]_i_2_n_0\ : STD_LOGIC;
  signal \bufCRC[1]_i_1_n_0\ : STD_LOGIC;
  signal \bufCRC[2]_i_1_n_0\ : STD_LOGIC;
  signal \bufCRC[3]_i_1_n_0\ : STD_LOGIC;
  signal \bufCRC[3]_i_2_n_0\ : STD_LOGIC;
  signal \bufCRC_reg_n_0_[0]\ : STD_LOGIC;
  signal \bufCRC_reg_n_0_[1]\ : STD_LOGIC;
  signal \bufCRC_reg_n_0_[2]\ : STD_LOGIC;
  signal \bufCRC_reg_n_0_[3]\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \cntTimeout[0]_i_1_n_0\ : STD_LOGIC;
  signal \cntTimeout[1]_i_1_n_0\ : STD_LOGIC;
  signal \cntTimeout[2]_i_1_n_0\ : STD_LOGIC;
  signal \cntTimeout[3]_i_1_n_0\ : STD_LOGIC;
  signal \cntTimeout[4]_i_1_n_0\ : STD_LOGIC;
  signal \cntTimeout[5]_i_1_n_0\ : STD_LOGIC;
  signal \cntTimeout[5]_i_2_n_0\ : STD_LOGIC;
  signal \cntTimeout[6]_i_1_n_0\ : STD_LOGIC;
  signal \cntTimeout[7]_i_1_n_0\ : STD_LOGIC;
  signal \cntTimeout[8]_i_1_n_0\ : STD_LOGIC;
  signal \cntTimeout[9]_i_1_n_0\ : STD_LOGIC;
  signal \cntTimeout[9]_i_2_n_0\ : STD_LOGIC;
  signal \cntTimeout[9]_i_3_n_0\ : STD_LOGIC;
  signal \cntTimeout[9]_i_4_n_0\ : STD_LOGIC;
  signal \cntTimeout[9]_i_5_n_0\ : STD_LOGIC;
  signal \cntTimeout_reg_n_0_[0]\ : STD_LOGIC;
  signal \cntTimeout_reg_n_0_[1]\ : STD_LOGIC;
  signal \cntTimeout_reg_n_0_[2]\ : STD_LOGIC;
  signal \cntTimeout_reg_n_0_[3]\ : STD_LOGIC;
  signal \cntTimeout_reg_n_0_[4]\ : STD_LOGIC;
  signal \cntTimeout_reg_n_0_[5]\ : STD_LOGIC;
  signal \cntTimeout_reg_n_0_[6]\ : STD_LOGIC;
  signal \cntTimeout_reg_n_0_[7]\ : STD_LOGIC;
  signal \cntTimeout_reg_n_0_[8]\ : STD_LOGIC;
  signal \cntTimeout_reg_n_0_[9]\ : STD_LOGIC;
  signal \count[7]_i_2_n_0\ : STD_LOGIC;
  signal \count[7]_i_4_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \dataBuf[0]_i_1_n_0\ : STD_LOGIC;
  signal \dataBuf[10]_i_1_n_0\ : STD_LOGIC;
  signal \dataBuf[11]_i_1_n_0\ : STD_LOGIC;
  signal \dataBuf[11]_i_2_n_0\ : STD_LOGIC;
  signal \dataBuf[11]_i_3_n_0\ : STD_LOGIC;
  signal \dataBuf[12]_i_1_n_0\ : STD_LOGIC;
  signal \dataBuf[12]_i_2_n_0\ : STD_LOGIC;
  signal \dataBuf[13]_i_1_n_0\ : STD_LOGIC;
  signal \dataBuf[13]_i_2_n_0\ : STD_LOGIC;
  signal \dataBuf[14]_i_1_n_0\ : STD_LOGIC;
  signal \dataBuf[14]_i_2_n_0\ : STD_LOGIC;
  signal \dataBuf[14]_i_3_n_0\ : STD_LOGIC;
  signal \dataBuf[15]_i_1_n_0\ : STD_LOGIC;
  signal \dataBuf[15]_i_2_n_0\ : STD_LOGIC;
  signal \dataBuf[15]_i_3_n_0\ : STD_LOGIC;
  signal \dataBuf[1]_i_1_n_0\ : STD_LOGIC;
  signal \dataBuf[1]_i_2_n_0\ : STD_LOGIC;
  signal \dataBuf[2]_i_1_n_0\ : STD_LOGIC;
  signal \dataBuf[2]_i_2_n_0\ : STD_LOGIC;
  signal \dataBuf[3]_i_1_n_0\ : STD_LOGIC;
  signal \dataBuf[3]_i_2_n_0\ : STD_LOGIC;
  signal \dataBuf[4]_i_1_n_0\ : STD_LOGIC;
  signal \dataBuf[5]_i_1_n_0\ : STD_LOGIC;
  signal \dataBuf[6]_i_1_n_0\ : STD_LOGIC;
  signal \dataBuf[6]_i_2_n_0\ : STD_LOGIC;
  signal \dataBuf[7]_i_1_n_0\ : STD_LOGIC;
  signal \dataBuf[7]_i_3_n_0\ : STD_LOGIC;
  signal \dataBuf[8]_i_1_n_0\ : STD_LOGIC;
  signal \dataBuf[9]_i_1_n_0\ : STD_LOGIC;
  signal \dataBuf_reg_n_0_[0]\ : STD_LOGIC;
  signal \dataBuf_reg_n_0_[10]\ : STD_LOGIC;
  signal \dataBuf_reg_n_0_[11]\ : STD_LOGIC;
  signal \dataBuf_reg_n_0_[12]\ : STD_LOGIC;
  signal \dataBuf_reg_n_0_[13]\ : STD_LOGIC;
  signal \dataBuf_reg_n_0_[14]\ : STD_LOGIC;
  signal \dataBuf_reg_n_0_[15]\ : STD_LOGIC;
  signal \dataBuf_reg_n_0_[1]\ : STD_LOGIC;
  signal \dataBuf_reg_n_0_[2]\ : STD_LOGIC;
  signal \dataBuf_reg_n_0_[3]\ : STD_LOGIC;
  signal \dataBuf_reg_n_0_[4]\ : STD_LOGIC;
  signal \dataBuf_reg_n_0_[5]\ : STD_LOGIC;
  signal \dataBuf_reg_n_0_[6]\ : STD_LOGIC;
  signal \dataBuf_reg_n_0_[7]\ : STD_LOGIC;
  signal \dataBuf_reg_n_0_[8]\ : STD_LOGIC;
  signal \dataBuf_reg_n_0_[9]\ : STD_LOGIC;
  signal dataCRC : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \dataCRC[15]_i_1_n_0\ : STD_LOGIC;
  signal \dataCRC[15]_i_3_n_0\ : STD_LOGIC;
  signal \dataCRC[24]_i_1_n_0\ : STD_LOGIC;
  signal \dataCRC_reg_n_0_[0]\ : STD_LOGIC;
  signal \dataCRC_reg_n_0_[10]\ : STD_LOGIC;
  signal \dataCRC_reg_n_0_[11]\ : STD_LOGIC;
  signal \dataCRC_reg_n_0_[12]\ : STD_LOGIC;
  signal \dataCRC_reg_n_0_[13]\ : STD_LOGIC;
  signal \dataCRC_reg_n_0_[14]\ : STD_LOGIC;
  signal \dataCRC_reg_n_0_[15]\ : STD_LOGIC;
  signal \dataCRC_reg_n_0_[16]\ : STD_LOGIC;
  signal \dataCRC_reg_n_0_[17]\ : STD_LOGIC;
  signal \dataCRC_reg_n_0_[18]\ : STD_LOGIC;
  signal \dataCRC_reg_n_0_[19]\ : STD_LOGIC;
  signal \dataCRC_reg_n_0_[1]\ : STD_LOGIC;
  signal \dataCRC_reg_n_0_[20]\ : STD_LOGIC;
  signal \dataCRC_reg_n_0_[21]\ : STD_LOGIC;
  signal \dataCRC_reg_n_0_[22]\ : STD_LOGIC;
  signal \dataCRC_reg_n_0_[23]\ : STD_LOGIC;
  signal \dataCRC_reg_n_0_[24]\ : STD_LOGIC;
  signal \dataCRC_reg_n_0_[2]\ : STD_LOGIC;
  signal \dataCRC_reg_n_0_[3]\ : STD_LOGIC;
  signal \dataCRC_reg_n_0_[4]\ : STD_LOGIC;
  signal \dataCRC_reg_n_0_[5]\ : STD_LOGIC;
  signal \dataCRC_reg_n_0_[6]\ : STD_LOGIC;
  signal \dataCRC_reg_n_0_[7]\ : STD_LOGIC;
  signal \dataCRC_reg_n_0_[8]\ : STD_LOGIC;
  signal \dataCRC_reg_n_0_[9]\ : STD_LOGIC;
  signal \dataout[15]_i_1_n_0\ : STD_LOGIC;
  signal \dataout[15]_i_2_n_0\ : STD_LOGIC;
  signal \dataout[15]_i_3_n_0\ : STD_LOGIC;
  signal \^dataready\ : STD_LOGIC;
  signal dataready_i_1_n_0 : STD_LOGIC;
  signal dataready_i_2_n_0 : STD_LOGIC;
  signal dataready_i_3_n_0 : STD_LOGIC;
  signal dataready_i_4_n_0 : STD_LOGIC;
  signal direction_i_1_n_0 : STD_LOGIC;
  signal direction_i_2_n_0 : STD_LOGIC;
  signal \^direction_reg_0\ : STD_LOGIC;
  signal lacth : STD_LOGIC;
  signal \lacth[0]_i_1_n_0\ : STD_LOGIC;
  signal \lacth_reg_n_0_[0]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in0_in : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC;
  signal readyCRC : STD_LOGIC;
  signal readyCRC_i_1_n_0 : STD_LOGIC;
  signal resetCRC_i_1_n_0 : STD_LOGIC;
  signal resetCRC_i_2_n_0 : STD_LOGIC;
  signal resetCRC_i_3_n_0 : STD_LOGIC;
  signal resetCRC_i_4_n_0 : STD_LOGIC;
  signal resetCRC_i_5_n_0 : STD_LOGIC;
  signal resetCRC_i_6_n_0 : STD_LOGIC;
  signal resetCRC_i_7_n_0 : STD_LOGIC;
  signal resetCRC_reg_n_0 : STD_LOGIC;
  signal sbDataOutBuf_tristate_oe_i_10_n_0 : STD_LOGIC;
  signal sbDataOutBuf_tristate_oe_i_11_n_0 : STD_LOGIC;
  signal sbDataOutBuf_tristate_oe_i_1_n_0 : STD_LOGIC;
  signal sbDataOutBuf_tristate_oe_i_2_n_0 : STD_LOGIC;
  signal sbDataOutBuf_tristate_oe_i_3_n_0 : STD_LOGIC;
  signal sbDataOutBuf_tristate_oe_i_5_n_0 : STD_LOGIC;
  signal sbDataOutBuf_tristate_oe_i_8_n_0 : STD_LOGIC;
  signal sbDataOutBuf_tristate_oe_i_9_n_0 : STD_LOGIC;
  signal sbDataOutBuf_tristate_oe_reg_i_4_n_0 : STD_LOGIC;
  signal sbDataOutBuf_tristate_oe_reg_i_6_n_0 : STD_LOGIC;
  signal sbDataOutBuf_tristate_oe_reg_i_7_n_0 : STD_LOGIC;
  signal sbDataOutBuf_tristate_oe_reg_n_0 : STD_LOGIC;
  signal sbReset : STD_LOGIC;
  signal sbResetPrev : STD_LOGIC;
  signal sbReset_i_1_n_0 : STD_LOGIC;
  signal sbReset_i_2_n_0 : STD_LOGIC;
  signal sbclkPrev : STD_LOGIC;
  signal \^sbdataout\ : STD_LOGIC;
  signal sbdataout_INST_0_i_3_n_0 : STD_LOGIC;
  signal sbdataout_INST_0_i_4_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \CRC[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \CRC[3]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \FSM_sequential_CommunicationState[2]_i_7\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FSM_sequential_CommunicationState[2]_i_8\ : label is "soft_lutpair14";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_CommunicationState_reg[0]\ : label is "receiveaddress:001,receivedata:100,transmitdata:010,transmitcrc:011,receivecrc:101,receivecheck:110,waiting:000,timeout:111";
  attribute FSM_ENCODED_STATES of \FSM_sequential_CommunicationState_reg[1]\ : label is "receiveaddress:001,receivedata:100,transmitdata:010,transmitcrc:011,receivecrc:101,receivecheck:110,waiting:000,timeout:111";
  attribute FSM_ENCODED_STATES of \FSM_sequential_CommunicationState_reg[2]\ : label is "receiveaddress:001,receivedata:100,transmitdata:010,transmitcrc:011,receivecrc:101,receivecheck:110,waiting:000,timeout:111";
  attribute SOFT_HLUTNM of \addDevRegBuf[2]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \addDevRegBuf[4]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \addDevRegBuf[4]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \addDevRegBuf[5]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \addDevRegBuf[6]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bitCnt[0]__0_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \bitCnt[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \bitCnt[1]__0_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \bitCnt[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \bitCnt[3]__0_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bitCnt[4]__0_i_4\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \bitCnt[4]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \bitCnt[5]__0_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \bitCnt[5]__0_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bitCnt[5]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \bitCnt[5]_i_5\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \bufCRC[0]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \bufCRC[3]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cntTimeout[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \cntTimeout[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cntTimeout[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cntTimeout[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cntTimeout[8]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \count[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \count[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[7]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[7]_i_4\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \dataBuf[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \dataBuf[11]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \dataBuf[11]_i_3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \dataBuf[14]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \dataBuf[15]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \dataBuf[1]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \dataBuf[2]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \dataBuf[3]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \dataBuf[6]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \dataBuf[7]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \dataBuf[7]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \dataCRC[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \dataCRC[15]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \dataCRC[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \dataCRC[4]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \dataCRC[5]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \dataout[15]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \dataout[15]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of direction_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \lacth[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of readyCRC_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of resetCRC_i_3 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of resetCRC_i_4 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of resetCRC_i_7 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of sbDataOutBuf_tristate_oe_i_2 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of sbReset_i_1 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of sbdataout_INST_0_i_3 : label is "soft_lutpair18";
begin
  dataready <= \^dataready\;
  direction_reg_0 <= \^direction_reg_0\;
  sbdataout <= \^sbdataout\;
\CRC[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555999AAA9A"
    )
        port map (
      I0 => p_0_in_0,
      I1 => \bitCnt_reg[4]__0_n_0\,
      I2 => \CRC_reg[0]_i_2_n_0\,
      I3 => \bitCnt_reg[3]__0_n_0\,
      I4 => \CRC_reg[0]_i_3_n_0\,
      I5 => \CRC[0]_i_4_n_0\,
      O => \CRC[0]_i_1_n_0\
    );
\CRC[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dataCRC_reg_n_0_[19]\,
      I1 => \dataCRC_reg_n_0_[18]\,
      I2 => \bitCnt_reg[1]__0_n_0\,
      I3 => \dataCRC_reg_n_0_[17]\,
      I4 => \bitCnt_reg[0]__0_n_0\,
      I5 => \dataCRC_reg_n_0_[16]\,
      O => \CRC[0]_i_10_n_0\
    );
\CRC[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => \lacth_reg_n_0_[0]\,
      I1 => \bitCnt_reg[3]__0_n_0\,
      I2 => \bitCnt_reg[4]__0_n_0\,
      I3 => \dataCRC_reg_n_0_[24]\,
      O => \CRC[0]_i_11_n_0\
    );
\CRC[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00B00080"
    )
        port map (
      I0 => \CRC[0]_i_9_n_0\,
      I1 => \bitCnt_reg[2]__0_n_0\,
      I2 => \bitCnt_reg[4]__0_n_0\,
      I3 => \bitCnt_reg[3]__0_n_0\,
      I4 => \CRC[0]_i_10_n_0\,
      I5 => \CRC[0]_i_11_n_0\,
      O => \CRC[0]_i_4_n_0\
    );
\CRC[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dataCRC_reg_n_0_[3]\,
      I1 => \dataCRC_reg_n_0_[2]\,
      I2 => \bitCnt_reg[1]__0_n_0\,
      I3 => \dataCRC_reg_n_0_[1]\,
      I4 => \bitCnt_reg[0]__0_n_0\,
      I5 => \dataCRC_reg_n_0_[0]\,
      O => \CRC[0]_i_5_n_0\
    );
\CRC[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dataCRC_reg_n_0_[7]\,
      I1 => \dataCRC_reg_n_0_[6]\,
      I2 => \bitCnt_reg[1]__0_n_0\,
      I3 => \dataCRC_reg_n_0_[5]\,
      I4 => \bitCnt_reg[0]__0_n_0\,
      I5 => \dataCRC_reg_n_0_[4]\,
      O => \CRC[0]_i_6_n_0\
    );
\CRC[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dataCRC_reg_n_0_[11]\,
      I1 => \dataCRC_reg_n_0_[10]\,
      I2 => \bitCnt_reg[1]__0_n_0\,
      I3 => \dataCRC_reg_n_0_[9]\,
      I4 => \bitCnt_reg[0]__0_n_0\,
      I5 => \dataCRC_reg_n_0_[8]\,
      O => \CRC[0]_i_7_n_0\
    );
\CRC[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dataCRC_reg_n_0_[15]\,
      I1 => \dataCRC_reg_n_0_[14]\,
      I2 => \bitCnt_reg[1]__0_n_0\,
      I3 => \dataCRC_reg_n_0_[13]\,
      I4 => \bitCnt_reg[0]__0_n_0\,
      I5 => \dataCRC_reg_n_0_[12]\,
      O => \CRC[0]_i_8_n_0\
    );
\CRC[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dataCRC_reg_n_0_[23]\,
      I1 => \dataCRC_reg_n_0_[22]\,
      I2 => \bitCnt_reg[1]__0_n_0\,
      I3 => \dataCRC_reg_n_0_[21]\,
      I4 => \bitCnt_reg[0]__0_n_0\,
      I5 => \dataCRC_reg_n_0_[20]\,
      O => \CRC[0]_i_9_n_0\
    );
\CRC[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in_0,
      I1 => \CRC_reg_n_0_[0]\,
      O => CRC0
    );
\CRC[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => readyCRC,
      I1 => lacth,
      O => \CRC[3]_i_1_n_0\
    );
\CRC[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \CRC_reg_n_0_[2]\,
      I1 => p_0_in0_in,
      O => CRC02_out
    );
\CRC_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \CRC[3]_i_1_n_0\,
      D => \CRC[0]_i_1_n_0\,
      Q => \CRC_reg_n_0_[0]\,
      R => resetCRC_reg_n_0
    );
\CRC_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \CRC[0]_i_5_n_0\,
      I1 => \CRC[0]_i_6_n_0\,
      O => \CRC_reg[0]_i_2_n_0\,
      S => \bitCnt_reg[2]__0_n_0\
    );
\CRC_reg[0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \CRC[0]_i_7_n_0\,
      I1 => \CRC[0]_i_8_n_0\,
      O => \CRC_reg[0]_i_3_n_0\,
      S => \bitCnt_reg[2]__0_n_0\
    );
\CRC_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \CRC[3]_i_1_n_0\,
      D => \CRC_reg_n_0_[0]\,
      Q => p_0_in_0,
      R => resetCRC_reg_n_0
    );
\CRC_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \CRC[3]_i_1_n_0\,
      D => CRC0,
      Q => \CRC_reg_n_0_[2]\,
      R => resetCRC_reg_n_0
    );
\CRC_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \CRC[3]_i_1_n_0\,
      D => CRC02_out,
      Q => p_0_in0_in,
      R => resetCRC_reg_n_0
    );
\FSM_sequential_CommunicationState[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCFCFFDDDD0D00"
    )
        port map (
      I0 => \FSM_sequential_CommunicationState[2]_i_2_n_0\,
      I1 => \FSM_sequential_CommunicationState[0]_i_2_n_0\,
      I2 => \FSM_sequential_CommunicationState[1]_i_4_n_0\,
      I3 => \FSM_sequential_CommunicationState[2]_i_5_n_0\,
      I4 => \FSM_sequential_CommunicationState[2]_i_6_n_0\,
      I5 => \CommunicationState__0\(0),
      O => \FSM_sequential_CommunicationState[0]_i_1_n_0\
    );
\FSM_sequential_CommunicationState[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000003000050"
    )
        port map (
      I0 => \CommunicationState__0\(0),
      I1 => \addressregister[7]_i_2_n_0\,
      I2 => sbclk,
      I3 => sbclkPrev,
      I4 => \CommunicationState__0\(1),
      I5 => \CommunicationState__0\(2),
      O => \FSM_sequential_CommunicationState[0]_i_2_n_0\
    );
\FSM_sequential_CommunicationState[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEFEFFEEEE0E00"
    )
        port map (
      I0 => \FSM_sequential_CommunicationState[1]_i_2_n_0\,
      I1 => \FSM_sequential_CommunicationState[1]_i_3_n_0\,
      I2 => \FSM_sequential_CommunicationState[1]_i_4_n_0\,
      I3 => \FSM_sequential_CommunicationState[2]_i_5_n_0\,
      I4 => \FSM_sequential_CommunicationState[2]_i_6_n_0\,
      I5 => \CommunicationState__0\(1),
      O => \FSM_sequential_CommunicationState[1]_i_1_n_0\
    );
\FSM_sequential_CommunicationState[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00400040F0000000"
    )
        port map (
      I0 => \addressregister[7]_i_2_n_0\,
      I1 => \addDevRegBuf[4]_i_3_n_0\,
      I2 => \CommunicationState__0\(2),
      I3 => \CommunicationState__0\(1),
      I4 => readyCRC,
      I5 => \CommunicationState__0\(0),
      O => \FSM_sequential_CommunicationState[1]_i_2_n_0\
    );
\FSM_sequential_CommunicationState[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAAB"
    )
        port map (
      I0 => \FSM_sequential_CommunicationState[2]_i_8_n_0\,
      I1 => dataready_i_4_n_0,
      I2 => \bitCnt[5]_i_3_n_0\,
      I3 => \bitCnt_reg_n_0_[0]\,
      I4 => \bitCnt_reg_n_0_[5]\,
      I5 => \^direction_reg_0\,
      O => \FSM_sequential_CommunicationState[1]_i_3_n_0\
    );
\FSM_sequential_CommunicationState[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B0BBFFFFFFFF"
    )
        port map (
      I0 => sbResetPrev,
      I1 => sbReset,
      I2 => \addressregister[7]_i_2_n_0\,
      I3 => \addDevRegBuf[4]_i_3_n_0\,
      I4 => \CommunicationState__0\(1),
      I5 => \CommunicationState__0\(2),
      O => \FSM_sequential_CommunicationState[1]_i_4_n_0\
    );
\FSM_sequential_CommunicationState[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55775577F500FF00"
    )
        port map (
      I0 => \FSM_sequential_CommunicationState[2]_i_2_n_0\,
      I1 => \FSM_sequential_CommunicationState[2]_i_3_n_0\,
      I2 => \FSM_sequential_CommunicationState[2]_i_4_n_0\,
      I3 => \CommunicationState__0\(2),
      I4 => \FSM_sequential_CommunicationState[2]_i_5_n_0\,
      I5 => \FSM_sequential_CommunicationState[2]_i_6_n_0\,
      O => \FSM_sequential_CommunicationState[2]_i_1_n_0\
    );
\FSM_sequential_CommunicationState[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFBFFFB0FFBFFF"
    )
        port map (
      I0 => \CommunicationState__0\(0),
      I1 => readyCRC,
      I2 => \CommunicationState__0\(1),
      I3 => \CommunicationState__0\(2),
      I4 => \addDevRegBuf[4]_i_3_n_0\,
      I5 => \addressregister[7]_i_2_n_0\,
      O => \FSM_sequential_CommunicationState[2]_i_2_n_0\
    );
\FSM_sequential_CommunicationState[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFEF"
    )
        port map (
      I0 => \bitCnt_reg_n_0_[5]\,
      I1 => \bitCnt_reg_n_0_[0]\,
      I2 => \^direction_reg_0\,
      I3 => \CommunicationState__0\(1),
      I4 => dataready_i_4_n_0,
      I5 => \FSM_sequential_CommunicationState[2]_i_7_n_0\,
      O => \FSM_sequential_CommunicationState[2]_i_3_n_0\
    );
\FSM_sequential_CommunicationState[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5545554500005545"
    )
        port map (
      I0 => \CommunicationState__0\(1),
      I1 => sbclkPrev,
      I2 => sbclk,
      I3 => \addressregister[7]_i_2_n_0\,
      I4 => sbReset,
      I5 => sbResetPrev,
      O => \FSM_sequential_CommunicationState[2]_i_4_n_0\
    );
\FSM_sequential_CommunicationState[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"74FF74FFFFFF74FF"
    )
        port map (
      I0 => \cntTimeout[9]_i_3_n_0\,
      I1 => \CommunicationState__0\(0),
      I2 => readyCRC,
      I3 => \CommunicationState__0\(1),
      I4 => sbReset,
      I5 => sbResetPrev,
      O => \FSM_sequential_CommunicationState[2]_i_5_n_0\
    );
\FSM_sequential_CommunicationState[2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFBA"
    )
        port map (
      I0 => direction_i_2_n_0,
      I1 => \CommunicationState__0\(2),
      I2 => resetCRC_i_3_n_0,
      I3 => \addressregister[7]_i_1_n_0\,
      I4 => \FSM_sequential_CommunicationState[2]_i_8_n_0\,
      O => \FSM_sequential_CommunicationState[2]_i_6_n_0\
    );
\FSM_sequential_CommunicationState[2]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \CommunicationState__0\(0),
      I1 => \CommunicationState__0\(1),
      I2 => sbclkPrev,
      I3 => sbclk,
      I4 => \addressregister[7]_i_2_n_0\,
      O => \FSM_sequential_CommunicationState[2]_i_7_n_0\
    );
\FSM_sequential_CommunicationState[2]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \CommunicationState__0\(2),
      I1 => \CommunicationState__0\(1),
      I2 => sbclkPrev,
      I3 => sbclk,
      I4 => \addressregister[7]_i_2_n_0\,
      O => \FSM_sequential_CommunicationState[2]_i_8_n_0\
    );
\FSM_sequential_CommunicationState_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_CommunicationState[0]_i_1_n_0\,
      Q => \CommunicationState__0\(0),
      R => '0'
    );
\FSM_sequential_CommunicationState_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_CommunicationState[1]_i_1_n_0\,
      Q => \CommunicationState__0\(1),
      R => '0'
    );
\FSM_sequential_CommunicationState_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_CommunicationState[2]_i_1_n_0\,
      Q => \CommunicationState__0\(2),
      R => '0'
    );
\addDevRegBuf[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF3FBF300000800"
    )
        port map (
      I0 => sbdatain,
      I1 => \addDevRegBuf[4]_i_3_n_0\,
      I2 => \bitCnt[5]_i_3_n_0\,
      I3 => \CommunicationState__0\(0),
      I4 => \addressregister[7]_i_2_n_0\,
      I5 => \addDevRegBuf_reg_n_0_[0]\,
      O => \addDevRegBuf[0]_i_1_n_0\
    );
\addDevRegBuf[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F8F8880808088"
    )
        port map (
      I0 => sbdatain,
      I1 => \CommunicationState__0\(0),
      I2 => direction_i_2_n_0,
      I3 => \dataBuf[1]_i_2_n_0\,
      I4 => \bitCnt[5]_i_3_n_0\,
      I5 => \addDevRegBuf_reg_n_0_[1]\,
      O => \addDevRegBuf[1]_i_1_n_0\
    );
\addDevRegBuf[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F8F8880808088"
    )
        port map (
      I0 => sbdatain,
      I1 => \CommunicationState__0\(0),
      I2 => direction_i_2_n_0,
      I3 => \addDevRegBuf[2]_i_2_n_0\,
      I4 => \bitCnt[5]_i_3_n_0\,
      I5 => \addDevRegBuf_reg_n_0_[2]\,
      O => \addDevRegBuf[2]_i_1_n_0\
    );
\addDevRegBuf[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => \dataBuf[2]_i_2_n_0\,
      I1 => \bitCnt_reg_n_0_[0]\,
      I2 => \bitCnt_reg_n_0_[1]\,
      I3 => sbclk,
      I4 => sbclkPrev,
      O => \addDevRegBuf[2]_i_2_n_0\
    );
\addDevRegBuf[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F8F8880808088"
    )
        port map (
      I0 => sbdatain,
      I1 => \CommunicationState__0\(0),
      I2 => direction_i_2_n_0,
      I3 => \dataBuf[3]_i_2_n_0\,
      I4 => \bitCnt[5]_i_3_n_0\,
      I5 => \addDevRegBuf_reg_n_0_[3]\,
      O => \addDevRegBuf[3]_i_1_n_0\
    );
\addDevRegBuf[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBBBBB8A888888"
    )
        port map (
      I0 => addDevRegBuf(7),
      I1 => direction_i_2_n_0,
      I2 => \addDevRegBuf[6]_i_2_n_0\,
      I3 => \addDevRegBuf[4]_i_3_n_0\,
      I4 => \bitCnt[5]_i_5_n_0\,
      I5 => \addDevRegBuf_reg_n_0_[4]\,
      O => \addDevRegBuf[4]_i_1_n_0\
    );
\addDevRegBuf[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sbdatain,
      I1 => \CommunicationState__0\(0),
      O => addDevRegBuf(7)
    );
\addDevRegBuf[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sbclk,
      I1 => sbclkPrev,
      O => \addDevRegBuf[4]_i_3_n_0\
    );
\addDevRegBuf[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F8F80888080"
    )
        port map (
      I0 => sbdatain,
      I1 => \CommunicationState__0\(0),
      I2 => direction_i_2_n_0,
      I3 => \addDevRegBuf[6]_i_2_n_0\,
      I4 => \addDevRegBuf[5]_i_2_n_0\,
      I5 => \addDevRegBuf_reg_n_0_[5]\,
      O => \addDevRegBuf[5]_i_1_n_0\
    );
\addDevRegBuf[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => sbclkPrev,
      I1 => sbclk,
      I2 => \bitCnt_reg_n_0_[0]\,
      I3 => \bitCnt_reg_n_0_[1]\,
      O => \addDevRegBuf[5]_i_2_n_0\
    );
\addDevRegBuf[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F8F80888080"
    )
        port map (
      I0 => sbdatain,
      I1 => \CommunicationState__0\(0),
      I2 => direction_i_2_n_0,
      I3 => \addDevRegBuf[6]_i_2_n_0\,
      I4 => \addDevRegBuf[6]_i_3_n_0\,
      I5 => \addDevRegBuf_reg_n_0_[6]\,
      O => \addDevRegBuf[6]_i_1_n_0\
    );
\addDevRegBuf[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => \CommunicationState__0\(1),
      I1 => \CommunicationState__0\(2),
      I2 => \bitCnt_reg_n_0_[3]\,
      I3 => \bitCnt_reg_n_0_[2]\,
      I4 => \bitCnt_reg_n_0_[5]\,
      I5 => \bitCnt_reg_n_0_[4]\,
      O => \addDevRegBuf[6]_i_2_n_0\
    );
\addDevRegBuf[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => sbclkPrev,
      I1 => sbclk,
      I2 => \bitCnt_reg_n_0_[1]\,
      I3 => \bitCnt_reg_n_0_[0]\,
      O => \addDevRegBuf[6]_i_3_n_0\
    );
\addDevRegBuf[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F8F8880808088"
    )
        port map (
      I0 => sbdatain,
      I1 => \CommunicationState__0\(0),
      I2 => direction_i_2_n_0,
      I3 => \dataBuf[7]_i_3_n_0\,
      I4 => \bitCnt[5]_i_3_n_0\,
      I5 => \addDevRegBuf_reg_n_0_[7]\,
      O => \addDevRegBuf[7]_i_1_n_0\
    );
\addDevRegBuf_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \addDevRegBuf[0]_i_1_n_0\,
      Q => \addDevRegBuf_reg_n_0_[0]\,
      R => '0'
    );
\addDevRegBuf_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \addDevRegBuf[1]_i_1_n_0\,
      Q => \addDevRegBuf_reg_n_0_[1]\,
      R => '0'
    );
\addDevRegBuf_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \addDevRegBuf[2]_i_1_n_0\,
      Q => \addDevRegBuf_reg_n_0_[2]\,
      R => '0'
    );
\addDevRegBuf_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \addDevRegBuf[3]_i_1_n_0\,
      Q => \addDevRegBuf_reg_n_0_[3]\,
      R => '0'
    );
\addDevRegBuf_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \addDevRegBuf[4]_i_1_n_0\,
      Q => \addDevRegBuf_reg_n_0_[4]\,
      R => '0'
    );
\addDevRegBuf_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \addDevRegBuf[5]_i_1_n_0\,
      Q => \addDevRegBuf_reg_n_0_[5]\,
      R => '0'
    );
\addDevRegBuf_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \addDevRegBuf[6]_i_1_n_0\,
      Q => \addDevRegBuf_reg_n_0_[6]\,
      R => '0'
    );
\addDevRegBuf_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \addDevRegBuf[7]_i_1_n_0\,
      Q => \addDevRegBuf_reg_n_0_[7]\,
      R => '0'
    );
\addressregister[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \CommunicationState__0\(0),
      I1 => sbclkPrev,
      I2 => sbclk,
      I3 => \CommunicationState__0\(2),
      I4 => \CommunicationState__0\(1),
      I5 => \addressregister[7]_i_2_n_0\,
      O => \addressregister[7]_i_1_n_0\
    );
\addressregister[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \bitCnt_reg_n_0_[2]\,
      I1 => \bitCnt_reg_n_0_[3]\,
      I2 => \bitCnt_reg_n_0_[5]\,
      I3 => \bitCnt_reg_n_0_[4]\,
      I4 => \bitCnt_reg_n_0_[1]\,
      I5 => \bitCnt_reg_n_0_[0]\,
      O => \addressregister[7]_i_2_n_0\
    );
\addressregister_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \addressregister[7]_i_1_n_0\,
      D => sbdatain,
      Q => addressregister(0),
      R => '0'
    );
\addressregister_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \addressregister[7]_i_1_n_0\,
      D => \addDevRegBuf_reg_n_0_[1]\,
      Q => addressregister(1),
      R => '0'
    );
\addressregister_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \addressregister[7]_i_1_n_0\,
      D => \addDevRegBuf_reg_n_0_[2]\,
      Q => addressregister(2),
      R => '0'
    );
\addressregister_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \addressregister[7]_i_1_n_0\,
      D => \addDevRegBuf_reg_n_0_[3]\,
      Q => addressregister(3),
      R => '0'
    );
\addressregister_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \addressregister[7]_i_1_n_0\,
      D => \addDevRegBuf_reg_n_0_[4]\,
      Q => addressregister(4),
      R => '0'
    );
\addressregister_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \addressregister[7]_i_1_n_0\,
      D => \addDevRegBuf_reg_n_0_[5]\,
      Q => addressregister(5),
      R => '0'
    );
\addressregister_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \addressregister[7]_i_1_n_0\,
      D => \addDevRegBuf_reg_n_0_[6]\,
      Q => addressregister(6),
      R => '0'
    );
\addressregister_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \addressregister[7]_i_1_n_0\,
      D => \addDevRegBuf_reg_n_0_[7]\,
      Q => addressregister(7),
      R => '0'
    );
\bitCnt[0]__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \bitCnt[4]__0_i_4_n_0\,
      I1 => \bitCnt_reg[0]__0_n_0\,
      O => \bitCnt[0]__0_i_1_n_0\
    );
\bitCnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => \CommunicationState__0\(2),
      I1 => \CommunicationState__0\(1),
      I2 => \CommunicationState__0\(0),
      I3 => \bitCnt_reg_n_0_[0]\,
      O => \bitCnt[0]_i_1_n_0\
    );
\bitCnt[1]__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F9"
    )
        port map (
      I0 => \bitCnt_reg[1]__0_n_0\,
      I1 => \bitCnt_reg[0]__0_n_0\,
      I2 => \bitCnt[4]__0_i_4_n_0\,
      O => \bitCnt[1]__0_i_1_n_0\
    );
\bitCnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0101FF"
    )
        port map (
      I0 => \CommunicationState__0\(2),
      I1 => \CommunicationState__0\(1),
      I2 => \CommunicationState__0\(0),
      I3 => \bitCnt_reg_n_0_[1]\,
      I4 => \bitCnt_reg_n_0_[0]\,
      O => bitCnt(1)
    );
\bitCnt[2]__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AAA6"
    )
        port map (
      I0 => \bitCnt_reg[2]__0_n_0\,
      I1 => \bitCnt[5]__0_i_2_n_0\,
      I2 => \bitCnt_reg[0]__0_n_0\,
      I3 => \bitCnt_reg[1]__0_n_0\,
      I4 => \bitCnt[4]__0_i_4_n_0\,
      I5 => resetCRC_reg_n_0,
      O => \bitCnt[2]__0_i_1_n_0\
    );
\bitCnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC3DDD7CCC35555"
    )
        port map (
      I0 => \bitCnt[5]_i_3_n_0\,
      I1 => \bitCnt_reg_n_0_[2]\,
      I2 => \bitCnt_reg_n_0_[1]\,
      I3 => \bitCnt_reg_n_0_[0]\,
      I4 => \CommunicationState__0\(0),
      I5 => \addressregister[7]_i_2_n_0\,
      O => bitCnt(2)
    );
\bitCnt[3]__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE01"
    )
        port map (
      I0 => \bitCnt_reg[1]__0_n_0\,
      I1 => \bitCnt_reg[0]__0_n_0\,
      I2 => \bitCnt_reg[2]__0_n_0\,
      I3 => \bitCnt_reg[3]__0_n_0\,
      I4 => \bitCnt[4]__0_i_4_n_0\,
      O => \bitCnt[3]__0_i_1_n_0\
    );
\bitCnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C3CC8288C3CC0000"
    )
        port map (
      I0 => \addressregister[7]_i_2_n_0\,
      I1 => \bitCnt_reg_n_0_[3]\,
      I2 => \bitCnt_reg_n_0_[2]\,
      I3 => \bitCnt[5]_i_5_n_0\,
      I4 => \CommunicationState__0\(0),
      I5 => \bitCnt[5]_i_3_n_0\,
      O => bitCnt(3)
    );
\bitCnt[4]__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => lacth,
      I1 => \lacth_reg_n_0_[0]\,
      I2 => readyCRC,
      O => \bitCnt[4]__0_i_1_n_0\
    );
\bitCnt[4]__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFE0001"
    )
        port map (
      I0 => \bitCnt_reg[2]__0_n_0\,
      I1 => \bitCnt_reg[0]__0_n_0\,
      I2 => \bitCnt_reg[1]__0_n_0\,
      I3 => \bitCnt_reg[3]__0_n_0\,
      I4 => \bitCnt_reg[4]__0_n_0\,
      I5 => \bitCnt[4]__0_i_4_n_0\,
      O => \bitCnt[4]__0_i_2_n_0\
    );
\bitCnt[4]__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \bitCnt_reg[1]__0_n_0\,
      I1 => \bitCnt_reg[0]__0_n_0\,
      I2 => \bitCnt_reg[2]__0_n_0\,
      I3 => \bitCnt_reg[5]__0_n_0\,
      I4 => \bitCnt_reg[3]__0_n_0\,
      I5 => \bitCnt_reg[4]__0_n_0\,
      O => lacth
    );
\bitCnt[4]__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => readyCRC,
      I1 => \lacth_reg_n_0_[0]\,
      I2 => lacth,
      O => \bitCnt[4]__0_i_4_n_0\
    );
\bitCnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000002"
    )
        port map (
      I0 => \bitCnt[4]_i_2_n_0\,
      I1 => \bitCnt_reg_n_0_[1]\,
      I2 => \bitCnt_reg_n_0_[0]\,
      I3 => \bitCnt_reg_n_0_[3]\,
      I4 => \bitCnt_reg_n_0_[2]\,
      I5 => \bitCnt_reg_n_0_[4]\,
      O => bitCnt(4)
    );
\bitCnt[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEE0"
    )
        port map (
      I0 => \CommunicationState__0\(2),
      I1 => \CommunicationState__0\(1),
      I2 => \CommunicationState__0\(0),
      I3 => \addressregister[7]_i_2_n_0\,
      O => \bitCnt[4]_i_2_n_0\
    );
\bitCnt[5]__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AA6A"
    )
        port map (
      I0 => \bitCnt_reg[5]__0_n_0\,
      I1 => \bitCnt[5]__0_i_2_n_0\,
      I2 => \bitCnt[5]__0_i_3_n_0\,
      I3 => \bitCnt_reg[4]__0_n_0\,
      I4 => \bitCnt[4]__0_i_4_n_0\,
      I5 => resetCRC_reg_n_0,
      O => \bitCnt[5]__0_i_1_n_0\
    );
\bitCnt[5]__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => readyCRC,
      I1 => lacth,
      I2 => \lacth_reg_n_0_[0]\,
      O => \bitCnt[5]__0_i_2_n_0\
    );
\bitCnt[5]__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \bitCnt_reg[2]__0_n_0\,
      I1 => \bitCnt_reg[0]__0_n_0\,
      I2 => \bitCnt_reg[1]__0_n_0\,
      I3 => \bitCnt_reg[3]__0_n_0\,
      O => \bitCnt[5]__0_i_3_n_0\
    );
\bitCnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000B0000B000F0"
    )
        port map (
      I0 => \addressregister[7]_i_2_n_0\,
      I1 => \CommunicationState__0\(0),
      I2 => sbclk,
      I3 => sbclkPrev,
      I4 => \CommunicationState__0\(2),
      I5 => \CommunicationState__0\(1),
      O => \bitCnt[5]_i_1_n_0\
    );
\bitCnt[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE0EEEE00080000"
    )
        port map (
      I0 => \CommunicationState__0\(0),
      I1 => \bitCnt[5]_i_3_n_0\,
      I2 => \bitCnt_reg_n_0_[4]\,
      I3 => \bitCnt[5]_i_4_n_0\,
      I4 => \bitCnt[5]_i_5_n_0\,
      I5 => \bitCnt_reg_n_0_[5]\,
      O => bitCnt(5)
    );
\bitCnt[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \CommunicationState__0\(2),
      I1 => \CommunicationState__0\(1),
      O => \bitCnt[5]_i_3_n_0\
    );
\bitCnt[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \bitCnt_reg_n_0_[2]\,
      I1 => \bitCnt_reg_n_0_[3]\,
      O => \bitCnt[5]_i_4_n_0\
    );
\bitCnt[5]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bitCnt_reg_n_0_[0]\,
      I1 => \bitCnt_reg_n_0_[1]\,
      O => \bitCnt[5]_i_5_n_0\
    );
\bitCnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bitCnt[5]_i_1_n_0\,
      D => \bitCnt[0]_i_1_n_0\,
      Q => \bitCnt_reg_n_0_[0]\,
      R => '0'
    );
\bitCnt_reg[0]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bitCnt[4]__0_i_1_n_0\,
      D => \bitCnt[0]__0_i_1_n_0\,
      Q => \bitCnt_reg[0]__0_n_0\,
      R => resetCRC_reg_n_0
    );
\bitCnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bitCnt[5]_i_1_n_0\,
      D => bitCnt(1),
      Q => \bitCnt_reg_n_0_[1]\,
      R => '0'
    );
\bitCnt_reg[1]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bitCnt[4]__0_i_1_n_0\,
      D => \bitCnt[1]__0_i_1_n_0\,
      Q => \bitCnt_reg[1]__0_n_0\,
      R => resetCRC_reg_n_0
    );
\bitCnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \bitCnt[5]_i_1_n_0\,
      D => bitCnt(2),
      Q => \bitCnt_reg_n_0_[2]\,
      R => '0'
    );
\bitCnt_reg[2]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bitCnt[2]__0_i_1_n_0\,
      Q => \bitCnt_reg[2]__0_n_0\,
      R => '0'
    );
\bitCnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bitCnt[5]_i_1_n_0\,
      D => bitCnt(3),
      Q => \bitCnt_reg_n_0_[3]\,
      R => '0'
    );
\bitCnt_reg[3]__0\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bitCnt[4]__0_i_1_n_0\,
      D => \bitCnt[3]__0_i_1_n_0\,
      Q => \bitCnt_reg[3]__0_n_0\,
      S => resetCRC_reg_n_0
    );
\bitCnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bitCnt[5]_i_1_n_0\,
      D => bitCnt(4),
      Q => \bitCnt_reg_n_0_[4]\,
      R => '0'
    );
\bitCnt_reg[4]__0\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bitCnt[4]__0_i_1_n_0\,
      D => \bitCnt[4]__0_i_2_n_0\,
      Q => \bitCnt_reg[4]__0_n_0\,
      S => resetCRC_reg_n_0
    );
\bitCnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bitCnt[5]_i_1_n_0\,
      D => bitCnt(5),
      Q => \bitCnt_reg_n_0_[5]\,
      R => '0'
    );
\bitCnt_reg[5]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bitCnt[5]__0_i_1_n_0\,
      Q => \bitCnt_reg[5]__0_n_0\,
      R => '0'
    );
\bufCRC[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBABF80808A80"
    )
        port map (
      I0 => bufCRC(2),
      I1 => \bufCRC[0]_i_2_n_0\,
      I2 => \CommunicationState__0\(0),
      I3 => \addDevRegBuf[4]_i_3_n_0\,
      I4 => \bitCnt[5]_i_3_n_0\,
      I5 => \bufCRC_reg_n_0_[0]\,
      O => \bufCRC[0]_i_1_n_0\
    );
\bufCRC[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \addressregister[7]_i_2_n_0\,
      I1 => sbclk,
      I2 => sbclkPrev,
      I3 => \CommunicationState__0\(2),
      I4 => \CommunicationState__0\(1),
      O => \bufCRC[0]_i_2_n_0\
    );
\bufCRC[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F8F80888080"
    )
        port map (
      I0 => sbdatain,
      I1 => \CommunicationState__0\(2),
      I2 => direction_i_2_n_0,
      I3 => \dataBuf[1]_i_2_n_0\,
      I4 => \bufCRC[3]_i_2_n_0\,
      I5 => \bufCRC_reg_n_0_[1]\,
      O => \bufCRC[1]_i_1_n_0\
    );
\bufCRC[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBBBBB8A888888"
    )
        port map (
      I0 => bufCRC(2),
      I1 => direction_i_2_n_0,
      I2 => \dataBuf[2]_i_2_n_0\,
      I3 => \addDevRegBuf[6]_i_3_n_0\,
      I4 => \bufCRC[3]_i_2_n_0\,
      I5 => \bufCRC_reg_n_0_[2]\,
      O => \bufCRC[2]_i_1_n_0\
    );
\bufCRC[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F8F80888080"
    )
        port map (
      I0 => sbdatain,
      I1 => \CommunicationState__0\(2),
      I2 => direction_i_2_n_0,
      I3 => \dataBuf[3]_i_2_n_0\,
      I4 => \bufCRC[3]_i_2_n_0\,
      I5 => \bufCRC_reg_n_0_[3]\,
      O => \bufCRC[3]_i_1_n_0\
    );
\bufCRC[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \CommunicationState__0\(0),
      I1 => \CommunicationState__0\(2),
      I2 => \CommunicationState__0\(1),
      O => \bufCRC[3]_i_2_n_0\
    );
\bufCRC_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bufCRC[0]_i_1_n_0\,
      Q => \bufCRC_reg_n_0_[0]\,
      R => '0'
    );
\bufCRC_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bufCRC[1]_i_1_n_0\,
      Q => \bufCRC_reg_n_0_[1]\,
      R => '0'
    );
\bufCRC_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bufCRC[2]_i_1_n_0\,
      Q => \bufCRC_reg_n_0_[2]\,
      R => '0'
    );
\bufCRC_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bufCRC[3]_i_1_n_0\,
      Q => \bufCRC_reg_n_0_[3]\,
      R => '0'
    );
\cntTimeout[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \CommunicationState__0\(2),
      I1 => \cntTimeout_reg_n_0_[0]\,
      O => \cntTimeout[0]_i_1_n_0\
    );
\cntTimeout[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F80"
    )
        port map (
      I0 => \cntTimeout_reg_n_0_[0]\,
      I1 => \CommunicationState__0\(2),
      I2 => \cntTimeout[9]_i_1_n_0\,
      I3 => \cntTimeout_reg_n_0_[1]\,
      O => \cntTimeout[1]_i_1_n_0\
    );
\cntTimeout[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \CommunicationState__0\(2),
      I1 => \cntTimeout_reg_n_0_[2]\,
      I2 => \cntTimeout_reg_n_0_[0]\,
      I3 => \cntTimeout_reg_n_0_[1]\,
      O => \cntTimeout[2]_i_1_n_0\
    );
\cntTimeout[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => \CommunicationState__0\(2),
      I1 => \cntTimeout_reg_n_0_[3]\,
      I2 => \cntTimeout_reg_n_0_[0]\,
      I3 => \cntTimeout_reg_n_0_[1]\,
      I4 => \cntTimeout_reg_n_0_[2]\,
      O => \cntTimeout[3]_i_1_n_0\
    );
\cntTimeout[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \CommunicationState__0\(2),
      I1 => \cntTimeout_reg_n_0_[4]\,
      I2 => \cntTimeout_reg_n_0_[3]\,
      I3 => \cntTimeout_reg_n_0_[2]\,
      I4 => \cntTimeout_reg_n_0_[1]\,
      I5 => \cntTimeout_reg_n_0_[0]\,
      O => \cntTimeout[4]_i_1_n_0\
    );
\cntTimeout[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cntTimeout[9]_i_1_n_0\,
      I1 => \CommunicationState__0\(2),
      O => \cntTimeout[5]_i_1_n_0\
    );
\cntTimeout[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \cntTimeout_reg_n_0_[5]\,
      I1 => \cntTimeout_reg_n_0_[4]\,
      I2 => \cntTimeout_reg_n_0_[0]\,
      I3 => \cntTimeout_reg_n_0_[1]\,
      I4 => \cntTimeout_reg_n_0_[2]\,
      I5 => \cntTimeout_reg_n_0_[3]\,
      O => \cntTimeout[5]_i_2_n_0\
    );
\cntTimeout[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \CommunicationState__0\(2),
      I1 => \cntTimeout_reg_n_0_[6]\,
      I2 => \cntTimeout[9]_i_4_n_0\,
      O => \cntTimeout[6]_i_1_n_0\
    );
\cntTimeout[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8828"
    )
        port map (
      I0 => \CommunicationState__0\(2),
      I1 => \cntTimeout_reg_n_0_[7]\,
      I2 => \cntTimeout_reg_n_0_[6]\,
      I3 => \cntTimeout[9]_i_4_n_0\,
      O => \cntTimeout[7]_i_1_n_0\
    );
\cntTimeout[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82888888"
    )
        port map (
      I0 => \CommunicationState__0\(2),
      I1 => \cntTimeout_reg_n_0_[8]\,
      I2 => \cntTimeout[9]_i_4_n_0\,
      I3 => \cntTimeout_reg_n_0_[6]\,
      I4 => \cntTimeout_reg_n_0_[7]\,
      O => \cntTimeout[8]_i_1_n_0\
    );
\cntTimeout[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000400000004"
    )
        port map (
      I0 => sbclkPrev,
      I1 => sbclk,
      I2 => \CommunicationState__0\(2),
      I3 => \CommunicationState__0\(1),
      I4 => \CommunicationState__0\(0),
      I5 => \cntTimeout[9]_i_3_n_0\,
      O => \cntTimeout[9]_i_1_n_0\
    );
\cntTimeout[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888828888888"
    )
        port map (
      I0 => \CommunicationState__0\(2),
      I1 => \cntTimeout_reg_n_0_[9]\,
      I2 => \cntTimeout_reg_n_0_[8]\,
      I3 => \cntTimeout_reg_n_0_[7]\,
      I4 => \cntTimeout_reg_n_0_[6]\,
      I5 => \cntTimeout[9]_i_4_n_0\,
      O => \cntTimeout[9]_i_2_n_0\
    );
\cntTimeout[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0100FFFF"
    )
        port map (
      I0 => \cntTimeout_reg_n_0_[6]\,
      I1 => \cntTimeout_reg_n_0_[8]\,
      I2 => \cntTimeout_reg_n_0_[7]\,
      I3 => \cntTimeout[9]_i_5_n_0\,
      I4 => \cntTimeout_reg_n_0_[9]\,
      O => \cntTimeout[9]_i_3_n_0\
    );
\cntTimeout[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \cntTimeout_reg_n_0_[4]\,
      I1 => \cntTimeout_reg_n_0_[0]\,
      I2 => \cntTimeout_reg_n_0_[1]\,
      I3 => \cntTimeout_reg_n_0_[2]\,
      I4 => \cntTimeout_reg_n_0_[3]\,
      I5 => \cntTimeout_reg_n_0_[5]\,
      O => \cntTimeout[9]_i_4_n_0\
    );
\cntTimeout[9]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0111FFFF"
    )
        port map (
      I0 => \cntTimeout_reg_n_0_[3]\,
      I1 => \cntTimeout_reg_n_0_[4]\,
      I2 => \cntTimeout_reg_n_0_[1]\,
      I3 => \cntTimeout_reg_n_0_[2]\,
      I4 => \cntTimeout_reg_n_0_[5]\,
      O => \cntTimeout[9]_i_5_n_0\
    );
\cntTimeout_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cntTimeout[9]_i_1_n_0\,
      D => \cntTimeout[0]_i_1_n_0\,
      Q => \cntTimeout_reg_n_0_[0]\,
      R => '0'
    );
\cntTimeout_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cntTimeout[1]_i_1_n_0\,
      Q => \cntTimeout_reg_n_0_[1]\,
      R => '0'
    );
\cntTimeout_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cntTimeout[9]_i_1_n_0\,
      D => \cntTimeout[2]_i_1_n_0\,
      Q => \cntTimeout_reg_n_0_[2]\,
      R => '0'
    );
\cntTimeout_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cntTimeout[9]_i_1_n_0\,
      D => \cntTimeout[3]_i_1_n_0\,
      Q => \cntTimeout_reg_n_0_[3]\,
      R => '0'
    );
\cntTimeout_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cntTimeout[9]_i_1_n_0\,
      D => \cntTimeout[4]_i_1_n_0\,
      Q => \cntTimeout_reg_n_0_[4]\,
      R => '0'
    );
\cntTimeout_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cntTimeout[9]_i_1_n_0\,
      D => \cntTimeout[5]_i_2_n_0\,
      Q => \cntTimeout_reg_n_0_[5]\,
      R => \cntTimeout[5]_i_1_n_0\
    );
\cntTimeout_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cntTimeout[9]_i_1_n_0\,
      D => \cntTimeout[6]_i_1_n_0\,
      Q => \cntTimeout_reg_n_0_[6]\,
      R => '0'
    );
\cntTimeout_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cntTimeout[9]_i_1_n_0\,
      D => \cntTimeout[7]_i_1_n_0\,
      Q => \cntTimeout_reg_n_0_[7]\,
      R => '0'
    );
\cntTimeout_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cntTimeout[9]_i_1_n_0\,
      D => \cntTimeout[8]_i_1_n_0\,
      Q => \cntTimeout_reg_n_0_[8]\,
      R => '0'
    );
\cntTimeout_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cntTimeout[9]_i_1_n_0\,
      D => \cntTimeout[9]_i_2_n_0\,
      Q => \cntTimeout_reg_n_0_[9]\,
      R => '0'
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      O => p_0_in(0)
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \count_reg_n_0_[1]\,
      O => p_0_in(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => count_reg(2),
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[1]\,
      O => p_0_in(2)
    );
\count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => count_reg(3),
      I1 => \count_reg_n_0_[1]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => count_reg(2),
      O => p_0_in(3)
    );
\count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(2),
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[1]\,
      I4 => count_reg(3),
      O => p_0_in(4)
    );
\count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => count_reg(5),
      I1 => count_reg(3),
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[0]\,
      I4 => count_reg(2),
      I5 => count_reg(4),
      O => p_0_in(5)
    );
\count[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => count_reg(5),
      I1 => count_reg(4),
      I2 => \count[7]_i_4_n_0\,
      I3 => count_reg(6),
      O => p_0_in(6)
    );
\count[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sbclk,
      I1 => sbclkPrev,
      O => clear
    );
\count[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00001FFFFFFFFFFF"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(3),
      I2 => count_reg(4),
      I3 => count_reg(5),
      I4 => count_reg(6),
      I5 => count_reg(7),
      O => \count[7]_i_2_n_0\
    );
\count[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6AAAAA"
    )
        port map (
      I0 => count_reg(7),
      I1 => count_reg(5),
      I2 => count_reg(4),
      I3 => \count[7]_i_4_n_0\,
      I4 => count_reg(6),
      O => p_0_in(7)
    );
\count[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => count_reg(2),
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => count_reg(3),
      O => \count[7]_i_4_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \count[7]_i_2_n_0\,
      D => p_0_in(0),
      Q => \count_reg_n_0_[0]\,
      R => clear
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[7]_i_2_n_0\,
      D => p_0_in(1),
      Q => \count_reg_n_0_[1]\,
      R => clear
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \count[7]_i_2_n_0\,
      D => p_0_in(2),
      Q => count_reg(2),
      R => clear
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[7]_i_2_n_0\,
      D => p_0_in(3),
      Q => count_reg(3),
      R => clear
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[7]_i_2_n_0\,
      D => p_0_in(4),
      Q => count_reg(4),
      R => clear
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[7]_i_2_n_0\,
      D => p_0_in(5),
      Q => count_reg(5),
      R => clear
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[7]_i_2_n_0\,
      D => p_0_in(6),
      Q => count_reg(6),
      R => clear
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[7]_i_2_n_0\,
      D => p_0_in(7),
      Q => count_reg(7),
      R => clear
    );
\dataBuf[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3B30080"
    )
        port map (
      I0 => sbdatain,
      I1 => \dataBuf[15]_i_3_n_0\,
      I2 => \CommunicationState__0\(2),
      I3 => \addressregister[7]_i_2_n_0\,
      I4 => \dataBuf_reg_n_0_[0]\,
      O => \dataBuf[0]_i_1_n_0\
    );
\dataBuf[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F8F80888080"
    )
        port map (
      I0 => sbdatain,
      I1 => \CommunicationState__0\(2),
      I2 => direction_i_2_n_0,
      I3 => \dataBuf[11]_i_3_n_0\,
      I4 => \dataBuf[14]_i_3_n_0\,
      I5 => \dataBuf_reg_n_0_[10]\,
      O => \dataBuf[10]_i_1_n_0\
    );
\dataBuf[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFB333300080000"
    )
        port map (
      I0 => sbdatain,
      I1 => \dataBuf[15]_i_3_n_0\,
      I2 => \dataBuf[11]_i_2_n_0\,
      I3 => \dataBuf[11]_i_3_n_0\,
      I4 => \CommunicationState__0\(2),
      I5 => \dataBuf_reg_n_0_[11]\,
      O => \dataBuf[11]_i_1_n_0\
    );
\dataBuf[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \bitCnt_reg_n_0_[0]\,
      I1 => \bitCnt_reg_n_0_[1]\,
      O => \dataBuf[11]_i_2_n_0\
    );
\dataBuf[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => \bitCnt_reg_n_0_[2]\,
      I1 => \bitCnt_reg_n_0_[3]\,
      I2 => \bitCnt_reg_n_0_[5]\,
      I3 => \bitCnt_reg_n_0_[4]\,
      O => \dataBuf[11]_i_3_n_0\
    );
\dataBuf[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F8F80888080"
    )
        port map (
      I0 => sbdatain,
      I1 => \CommunicationState__0\(2),
      I2 => direction_i_2_n_0,
      I3 => \dataBuf[14]_i_2_n_0\,
      I4 => \dataBuf[12]_i_2_n_0\,
      I5 => \dataBuf_reg_n_0_[12]\,
      O => \dataBuf[12]_i_1_n_0\
    );
\dataBuf[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \bitCnt_reg_n_0_[0]\,
      I1 => \bitCnt_reg_n_0_[1]\,
      I2 => sbclk,
      I3 => sbclkPrev,
      I4 => \CommunicationState__0\(1),
      I5 => \CommunicationState__0\(0),
      O => \dataBuf[12]_i_2_n_0\
    );
\dataBuf[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F8F80888080"
    )
        port map (
      I0 => sbdatain,
      I1 => \CommunicationState__0\(2),
      I2 => direction_i_2_n_0,
      I3 => \dataBuf[14]_i_2_n_0\,
      I4 => \dataBuf[13]_i_2_n_0\,
      I5 => \dataBuf_reg_n_0_[13]\,
      O => \dataBuf[13]_i_1_n_0\
    );
\dataBuf[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => \bitCnt_reg_n_0_[1]\,
      I1 => \bitCnt_reg_n_0_[0]\,
      I2 => sbclk,
      I3 => sbclkPrev,
      I4 => \CommunicationState__0\(1),
      I5 => \CommunicationState__0\(0),
      O => \dataBuf[13]_i_2_n_0\
    );
\dataBuf[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F8F80888080"
    )
        port map (
      I0 => sbdatain,
      I1 => \CommunicationState__0\(2),
      I2 => direction_i_2_n_0,
      I3 => \dataBuf[14]_i_2_n_0\,
      I4 => \dataBuf[14]_i_3_n_0\,
      I5 => \dataBuf_reg_n_0_[14]\,
      O => \dataBuf[14]_i_1_n_0\
    );
\dataBuf[14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFF"
    )
        port map (
      I0 => \bitCnt_reg_n_0_[3]\,
      I1 => \bitCnt_reg_n_0_[5]\,
      I2 => \bitCnt_reg_n_0_[4]\,
      I3 => \bitCnt_reg_n_0_[2]\,
      O => \dataBuf[14]_i_2_n_0\
    );
\dataBuf[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => \bitCnt_reg_n_0_[0]\,
      I1 => \bitCnt_reg_n_0_[1]\,
      I2 => sbclk,
      I3 => sbclkPrev,
      I4 => \CommunicationState__0\(1),
      I5 => \CommunicationState__0\(0),
      O => \dataBuf[14]_i_3_n_0\
    );
\dataBuf[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F8F80888080"
    )
        port map (
      I0 => sbdatain,
      I1 => \CommunicationState__0\(2),
      I2 => direction_i_2_n_0,
      I3 => \dataBuf[15]_i_2_n_0\,
      I4 => \dataBuf[15]_i_3_n_0\,
      I5 => \dataBuf_reg_n_0_[15]\,
      O => \dataBuf[15]_i_1_n_0\
    );
\dataBuf[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7FFFFFFFFF"
    )
        port map (
      I0 => \bitCnt_reg_n_0_[1]\,
      I1 => \bitCnt_reg_n_0_[0]\,
      I2 => \bitCnt_reg_n_0_[2]\,
      I3 => \bitCnt_reg_n_0_[4]\,
      I4 => \bitCnt_reg_n_0_[5]\,
      I5 => \bitCnt_reg_n_0_[3]\,
      O => \dataBuf[15]_i_2_n_0\
    );
\dataBuf[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \CommunicationState__0\(0),
      I1 => sbclk,
      I2 => sbclkPrev,
      I3 => \CommunicationState__0\(1),
      O => \dataBuf[15]_i_3_n_0\
    );
\dataBuf[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBA8888888A"
    )
        port map (
      I0 => bufCRC(2),
      I1 => direction_i_2_n_0,
      I2 => \dataBuf[1]_i_2_n_0\,
      I3 => \CommunicationState__0\(0),
      I4 => \CommunicationState__0\(1),
      I5 => \dataBuf_reg_n_0_[1]\,
      O => \dataBuf[1]_i_1_n_0\
    );
\dataBuf[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => \dataBuf[2]_i_2_n_0\,
      I1 => \bitCnt_reg_n_0_[1]\,
      I2 => \bitCnt_reg_n_0_[0]\,
      I3 => sbclk,
      I4 => sbclkPrev,
      O => \dataBuf[1]_i_2_n_0\
    );
\dataBuf[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F8F80888080"
    )
        port map (
      I0 => sbdatain,
      I1 => \CommunicationState__0\(2),
      I2 => direction_i_2_n_0,
      I3 => \dataBuf[2]_i_2_n_0\,
      I4 => \dataBuf[14]_i_3_n_0\,
      I5 => \dataBuf_reg_n_0_[2]\,
      O => \dataBuf[2]_i_1_n_0\
    );
\dataBuf[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bitCnt_reg_n_0_[4]\,
      I1 => \bitCnt_reg_n_0_[5]\,
      I2 => \bitCnt_reg_n_0_[3]\,
      I3 => \bitCnt_reg_n_0_[2]\,
      O => \dataBuf[2]_i_2_n_0\
    );
\dataBuf[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBA8888888A"
    )
        port map (
      I0 => bufCRC(2),
      I1 => direction_i_2_n_0,
      I2 => \dataBuf[3]_i_2_n_0\,
      I3 => \CommunicationState__0\(0),
      I4 => \CommunicationState__0\(1),
      I5 => \dataBuf_reg_n_0_[3]\,
      O => \dataBuf[3]_i_1_n_0\
    );
\dataBuf[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFFFFFF"
    )
        port map (
      I0 => \dataBuf[2]_i_2_n_0\,
      I1 => sbclk,
      I2 => sbclkPrev,
      I3 => \bitCnt_reg_n_0_[0]\,
      I4 => \bitCnt_reg_n_0_[1]\,
      O => \dataBuf[3]_i_2_n_0\
    );
\dataBuf[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F8F80888080"
    )
        port map (
      I0 => sbdatain,
      I1 => \CommunicationState__0\(2),
      I2 => direction_i_2_n_0,
      I3 => \dataBuf[6]_i_2_n_0\,
      I4 => \dataBuf[12]_i_2_n_0\,
      I5 => \dataBuf_reg_n_0_[4]\,
      O => \dataBuf[4]_i_1_n_0\
    );
\dataBuf[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F8F80888080"
    )
        port map (
      I0 => sbdatain,
      I1 => \CommunicationState__0\(2),
      I2 => direction_i_2_n_0,
      I3 => \dataBuf[6]_i_2_n_0\,
      I4 => \dataBuf[13]_i_2_n_0\,
      I5 => \dataBuf_reg_n_0_[5]\,
      O => \dataBuf[5]_i_1_n_0\
    );
\dataBuf[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F8F80888080"
    )
        port map (
      I0 => sbdatain,
      I1 => \CommunicationState__0\(2),
      I2 => direction_i_2_n_0,
      I3 => \dataBuf[6]_i_2_n_0\,
      I4 => \dataBuf[14]_i_3_n_0\,
      I5 => \dataBuf_reg_n_0_[6]\,
      O => \dataBuf[6]_i_1_n_0\
    );
\dataBuf[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \bitCnt_reg_n_0_[4]\,
      I1 => \bitCnt_reg_n_0_[5]\,
      I2 => \bitCnt_reg_n_0_[2]\,
      I3 => \bitCnt_reg_n_0_[3]\,
      O => \dataBuf[6]_i_2_n_0\
    );
\dataBuf[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBA8888888A"
    )
        port map (
      I0 => bufCRC(2),
      I1 => direction_i_2_n_0,
      I2 => \dataBuf[7]_i_3_n_0\,
      I3 => \CommunicationState__0\(0),
      I4 => \CommunicationState__0\(1),
      I5 => \dataBuf_reg_n_0_[7]\,
      O => \dataBuf[7]_i_1_n_0\
    );
\dataBuf[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sbdatain,
      I1 => \CommunicationState__0\(2),
      O => bufCRC(2)
    );
\dataBuf[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFDFFF"
    )
        port map (
      I0 => sbclk,
      I1 => sbclkPrev,
      I2 => \bitCnt_reg_n_0_[0]\,
      I3 => \bitCnt_reg_n_0_[1]\,
      I4 => \dataBuf[6]_i_2_n_0\,
      O => \dataBuf[7]_i_3_n_0\
    );
\dataBuf[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F8F80888080"
    )
        port map (
      I0 => sbdatain,
      I1 => \CommunicationState__0\(2),
      I2 => direction_i_2_n_0,
      I3 => \dataBuf[11]_i_3_n_0\,
      I4 => \dataBuf[12]_i_2_n_0\,
      I5 => \dataBuf_reg_n_0_[8]\,
      O => \dataBuf[8]_i_1_n_0\
    );
\dataBuf[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F8F80888080"
    )
        port map (
      I0 => sbdatain,
      I1 => \CommunicationState__0\(2),
      I2 => direction_i_2_n_0,
      I3 => \dataBuf[11]_i_3_n_0\,
      I4 => \dataBuf[13]_i_2_n_0\,
      I5 => \dataBuf_reg_n_0_[9]\,
      O => \dataBuf[9]_i_1_n_0\
    );
\dataBuf_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \dataBuf[0]_i_1_n_0\,
      Q => \dataBuf_reg_n_0_[0]\,
      R => '0'
    );
\dataBuf_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \dataBuf[10]_i_1_n_0\,
      Q => \dataBuf_reg_n_0_[10]\,
      R => '0'
    );
\dataBuf_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \dataBuf[11]_i_1_n_0\,
      Q => \dataBuf_reg_n_0_[11]\,
      R => '0'
    );
\dataBuf_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \dataBuf[12]_i_1_n_0\,
      Q => \dataBuf_reg_n_0_[12]\,
      R => '0'
    );
\dataBuf_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \dataBuf[13]_i_1_n_0\,
      Q => \dataBuf_reg_n_0_[13]\,
      R => '0'
    );
\dataBuf_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \dataBuf[14]_i_1_n_0\,
      Q => \dataBuf_reg_n_0_[14]\,
      R => '0'
    );
\dataBuf_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \dataBuf[15]_i_1_n_0\,
      Q => \dataBuf_reg_n_0_[15]\,
      R => '0'
    );
\dataBuf_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \dataBuf[1]_i_1_n_0\,
      Q => \dataBuf_reg_n_0_[1]\,
      R => '0'
    );
\dataBuf_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \dataBuf[2]_i_1_n_0\,
      Q => \dataBuf_reg_n_0_[2]\,
      R => '0'
    );
\dataBuf_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \dataBuf[3]_i_1_n_0\,
      Q => \dataBuf_reg_n_0_[3]\,
      R => '0'
    );
\dataBuf_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \dataBuf[4]_i_1_n_0\,
      Q => \dataBuf_reg_n_0_[4]\,
      R => '0'
    );
\dataBuf_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \dataBuf[5]_i_1_n_0\,
      Q => \dataBuf_reg_n_0_[5]\,
      R => '0'
    );
\dataBuf_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \dataBuf[6]_i_1_n_0\,
      Q => \dataBuf_reg_n_0_[6]\,
      R => '0'
    );
\dataBuf_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \dataBuf[7]_i_1_n_0\,
      Q => \dataBuf_reg_n_0_[7]\,
      R => '0'
    );
\dataBuf_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \dataBuf[8]_i_1_n_0\,
      Q => \dataBuf_reg_n_0_[8]\,
      R => '0'
    );
\dataBuf_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \dataBuf[9]_i_1_n_0\,
      Q => \dataBuf_reg_n_0_[9]\,
      R => '0'
    );
\dataCRC[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \CommunicationState__0\(2),
      I1 => sbdatain,
      I2 => datain(0),
      I3 => \CommunicationState__0\(1),
      O => dataCRC(0)
    );
\dataCRC[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \dataBuf_reg_n_0_[10]\,
      I1 => \CommunicationState__0\(2),
      I2 => datain(10),
      I3 => \CommunicationState__0\(1),
      O => dataCRC(10)
    );
\dataCRC[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \dataBuf_reg_n_0_[11]\,
      I1 => \CommunicationState__0\(2),
      I2 => datain(11),
      I3 => \CommunicationState__0\(1),
      O => dataCRC(11)
    );
\dataCRC[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \dataBuf_reg_n_0_[12]\,
      I1 => \CommunicationState__0\(2),
      I2 => datain(12),
      I3 => \CommunicationState__0\(1),
      O => dataCRC(12)
    );
\dataCRC[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \dataBuf_reg_n_0_[13]\,
      I1 => \CommunicationState__0\(2),
      I2 => datain(13),
      I3 => \CommunicationState__0\(1),
      O => dataCRC(13)
    );
\dataCRC[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \dataBuf_reg_n_0_[14]\,
      I1 => \CommunicationState__0\(2),
      I2 => datain(14),
      I3 => \CommunicationState__0\(1),
      O => dataCRC(14)
    );
\dataCRC[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00050005003F0000"
    )
        port map (
      I0 => \dataCRC[15]_i_3_n_0\,
      I1 => \addressregister[7]_i_2_n_0\,
      I2 => \CommunicationState__0\(2),
      I3 => \CommunicationState__0\(0),
      I4 => \addDevRegBuf[4]_i_3_n_0\,
      I5 => \CommunicationState__0\(1),
      O => \dataCRC[15]_i_1_n_0\
    );
\dataCRC[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \dataBuf_reg_n_0_[15]\,
      I1 => \CommunicationState__0\(2),
      I2 => datain(15),
      I3 => \CommunicationState__0\(1),
      O => dataCRC(15)
    );
\dataCRC[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFFFFF"
    )
        port map (
      I0 => \dataBuf[14]_i_2_n_0\,
      I1 => \bitCnt_reg_n_0_[0]\,
      I2 => \bitCnt_reg_n_0_[1]\,
      I3 => sbclk,
      I4 => sbclkPrev,
      O => \dataCRC[15]_i_3_n_0\
    );
\dataCRC[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \dataBuf_reg_n_0_[1]\,
      I1 => \CommunicationState__0\(2),
      I2 => datain(1),
      I3 => \CommunicationState__0\(1),
      O => dataCRC(1)
    );
\dataCRC[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \CommunicationState__0\(2),
      I1 => \CommunicationState__0\(0),
      I2 => \addDevRegBuf[4]_i_3_n_0\,
      I3 => \CommunicationState__0\(1),
      O => \dataCRC[24]_i_1_n_0\
    );
\dataCRC[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \dataBuf_reg_n_0_[2]\,
      I1 => \CommunicationState__0\(2),
      I2 => datain(2),
      I3 => \CommunicationState__0\(1),
      O => dataCRC(2)
    );
\dataCRC[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \dataBuf_reg_n_0_[3]\,
      I1 => \CommunicationState__0\(2),
      I2 => datain(3),
      I3 => \CommunicationState__0\(1),
      O => dataCRC(3)
    );
\dataCRC[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \dataBuf_reg_n_0_[4]\,
      I1 => \CommunicationState__0\(2),
      I2 => datain(4),
      I3 => \CommunicationState__0\(1),
      O => dataCRC(4)
    );
\dataCRC[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \dataBuf_reg_n_0_[5]\,
      I1 => \CommunicationState__0\(2),
      I2 => datain(5),
      I3 => \CommunicationState__0\(1),
      O => dataCRC(5)
    );
\dataCRC[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \dataBuf_reg_n_0_[6]\,
      I1 => \CommunicationState__0\(2),
      I2 => datain(6),
      I3 => \CommunicationState__0\(1),
      O => dataCRC(6)
    );
\dataCRC[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \dataBuf_reg_n_0_[7]\,
      I1 => \CommunicationState__0\(2),
      I2 => datain(7),
      I3 => \CommunicationState__0\(1),
      O => dataCRC(7)
    );
\dataCRC[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \dataBuf_reg_n_0_[8]\,
      I1 => \CommunicationState__0\(2),
      I2 => datain(8),
      I3 => \CommunicationState__0\(1),
      O => dataCRC(8)
    );
\dataCRC[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \dataBuf_reg_n_0_[9]\,
      I1 => \CommunicationState__0\(2),
      I2 => datain(9),
      I3 => \CommunicationState__0\(1),
      O => dataCRC(9)
    );
\dataCRC_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataCRC[15]_i_1_n_0\,
      D => dataCRC(0),
      Q => \dataCRC_reg_n_0_[0]\,
      R => '0'
    );
\dataCRC_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataCRC[15]_i_1_n_0\,
      D => dataCRC(10),
      Q => \dataCRC_reg_n_0_[10]\,
      R => '0'
    );
\dataCRC_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataCRC[15]_i_1_n_0\,
      D => dataCRC(11),
      Q => \dataCRC_reg_n_0_[11]\,
      R => '0'
    );
\dataCRC_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataCRC[15]_i_1_n_0\,
      D => dataCRC(12),
      Q => \dataCRC_reg_n_0_[12]\,
      R => '0'
    );
\dataCRC_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataCRC[15]_i_1_n_0\,
      D => dataCRC(13),
      Q => \dataCRC_reg_n_0_[13]\,
      R => '0'
    );
\dataCRC_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataCRC[15]_i_1_n_0\,
      D => dataCRC(14),
      Q => \dataCRC_reg_n_0_[14]\,
      R => '0'
    );
\dataCRC_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataCRC[15]_i_1_n_0\,
      D => dataCRC(15),
      Q => \dataCRC_reg_n_0_[15]\,
      R => '0'
    );
\dataCRC_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataCRC[15]_i_1_n_0\,
      D => \addDevRegBuf_reg_n_0_[0]\,
      Q => \dataCRC_reg_n_0_[16]\,
      R => \dataCRC[24]_i_1_n_0\
    );
\dataCRC_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataCRC[15]_i_1_n_0\,
      D => \addDevRegBuf_reg_n_0_[1]\,
      Q => \dataCRC_reg_n_0_[17]\,
      R => \dataCRC[24]_i_1_n_0\
    );
\dataCRC_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataCRC[15]_i_1_n_0\,
      D => \addDevRegBuf_reg_n_0_[2]\,
      Q => \dataCRC_reg_n_0_[18]\,
      R => \dataCRC[24]_i_1_n_0\
    );
\dataCRC_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataCRC[15]_i_1_n_0\,
      D => \addDevRegBuf_reg_n_0_[3]\,
      Q => \dataCRC_reg_n_0_[19]\,
      R => \dataCRC[24]_i_1_n_0\
    );
\dataCRC_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataCRC[15]_i_1_n_0\,
      D => dataCRC(1),
      Q => \dataCRC_reg_n_0_[1]\,
      R => '0'
    );
\dataCRC_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataCRC[15]_i_1_n_0\,
      D => \addDevRegBuf_reg_n_0_[4]\,
      Q => \dataCRC_reg_n_0_[20]\,
      R => \dataCRC[24]_i_1_n_0\
    );
\dataCRC_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataCRC[15]_i_1_n_0\,
      D => \addDevRegBuf_reg_n_0_[5]\,
      Q => \dataCRC_reg_n_0_[21]\,
      R => \dataCRC[24]_i_1_n_0\
    );
\dataCRC_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataCRC[15]_i_1_n_0\,
      D => \addDevRegBuf_reg_n_0_[6]\,
      Q => \dataCRC_reg_n_0_[22]\,
      R => \dataCRC[24]_i_1_n_0\
    );
\dataCRC_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataCRC[15]_i_1_n_0\,
      D => \addDevRegBuf_reg_n_0_[7]\,
      Q => \dataCRC_reg_n_0_[23]\,
      R => \dataCRC[24]_i_1_n_0\
    );
\dataCRC_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataCRC[15]_i_1_n_0\,
      D => \^direction_reg_0\,
      Q => \dataCRC_reg_n_0_[24]\,
      R => \dataCRC[24]_i_1_n_0\
    );
\dataCRC_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataCRC[15]_i_1_n_0\,
      D => dataCRC(2),
      Q => \dataCRC_reg_n_0_[2]\,
      R => '0'
    );
\dataCRC_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataCRC[15]_i_1_n_0\,
      D => dataCRC(3),
      Q => \dataCRC_reg_n_0_[3]\,
      R => '0'
    );
\dataCRC_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataCRC[15]_i_1_n_0\,
      D => dataCRC(4),
      Q => \dataCRC_reg_n_0_[4]\,
      R => '0'
    );
\dataCRC_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataCRC[15]_i_1_n_0\,
      D => dataCRC(5),
      Q => \dataCRC_reg_n_0_[5]\,
      R => '0'
    );
\dataCRC_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataCRC[15]_i_1_n_0\,
      D => dataCRC(6),
      Q => \dataCRC_reg_n_0_[6]\,
      R => '0'
    );
\dataCRC_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataCRC[15]_i_1_n_0\,
      D => dataCRC(7),
      Q => \dataCRC_reg_n_0_[7]\,
      R => '0'
    );
\dataCRC_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataCRC[15]_i_1_n_0\,
      D => dataCRC(8),
      Q => \dataCRC_reg_n_0_[8]\,
      R => '0'
    );
\dataCRC_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataCRC[15]_i_1_n_0\,
      D => dataCRC(9),
      Q => \dataCRC_reg_n_0_[9]\,
      R => '0'
    );
\dataout[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \dataout[15]_i_2_n_0\,
      I1 => \CommunicationState__0\(0),
      I2 => \CommunicationState__0\(1),
      I3 => readyCRC,
      I4 => \CommunicationState__0\(2),
      O => \dataout[15]_i_1_n_0\
    );
\dataout[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00009009"
    )
        port map (
      I0 => \CRC_reg_n_0_[0]\,
      I1 => \bufCRC_reg_n_0_[0]\,
      I2 => p_0_in_0,
      I3 => \bufCRC_reg_n_0_[1]\,
      I4 => \dataout[15]_i_3_n_0\,
      O => \dataout[15]_i_2_n_0\
    );
\dataout[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \bufCRC_reg_n_0_[2]\,
      I1 => \CRC_reg_n_0_[2]\,
      I2 => \bufCRC_reg_n_0_[3]\,
      I3 => p_0_in0_in,
      O => \dataout[15]_i_3_n_0\
    );
\dataout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dataout[15]_i_1_n_0\,
      D => \dataBuf_reg_n_0_[0]\,
      Q => dataout(0),
      R => '0'
    );
\dataout_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dataout[15]_i_1_n_0\,
      D => \dataBuf_reg_n_0_[10]\,
      Q => dataout(10),
      R => '0'
    );
\dataout_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dataout[15]_i_1_n_0\,
      D => \dataBuf_reg_n_0_[11]\,
      Q => dataout(11),
      R => '0'
    );
\dataout_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dataout[15]_i_1_n_0\,
      D => \dataBuf_reg_n_0_[12]\,
      Q => dataout(12),
      R => '0'
    );
\dataout_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dataout[15]_i_1_n_0\,
      D => \dataBuf_reg_n_0_[13]\,
      Q => dataout(13),
      R => '0'
    );
\dataout_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dataout[15]_i_1_n_0\,
      D => \dataBuf_reg_n_0_[14]\,
      Q => dataout(14),
      R => '0'
    );
\dataout_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dataout[15]_i_1_n_0\,
      D => \dataBuf_reg_n_0_[15]\,
      Q => dataout(15),
      R => '0'
    );
\dataout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dataout[15]_i_1_n_0\,
      D => \dataBuf_reg_n_0_[1]\,
      Q => dataout(1),
      R => '0'
    );
\dataout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dataout[15]_i_1_n_0\,
      D => \dataBuf_reg_n_0_[2]\,
      Q => dataout(2),
      R => '0'
    );
\dataout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dataout[15]_i_1_n_0\,
      D => \dataBuf_reg_n_0_[3]\,
      Q => dataout(3),
      R => '0'
    );
\dataout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dataout[15]_i_1_n_0\,
      D => \dataBuf_reg_n_0_[4]\,
      Q => dataout(4),
      R => '0'
    );
\dataout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dataout[15]_i_1_n_0\,
      D => \dataBuf_reg_n_0_[5]\,
      Q => dataout(5),
      R => '0'
    );
\dataout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dataout[15]_i_1_n_0\,
      D => \dataBuf_reg_n_0_[6]\,
      Q => dataout(6),
      R => '0'
    );
\dataout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dataout[15]_i_1_n_0\,
      D => \dataBuf_reg_n_0_[7]\,
      Q => dataout(7),
      R => '0'
    );
\dataout_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dataout[15]_i_1_n_0\,
      D => \dataBuf_reg_n_0_[8]\,
      Q => dataout(8),
      R => '0'
    );
\dataout_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dataout[15]_i_1_n_0\,
      D => \dataBuf_reg_n_0_[9]\,
      Q => dataout(9),
      R => '0'
    );
dataready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => dataready_i_2_n_0,
      I1 => \dataout[15]_i_1_n_0\,
      I2 => dataready_i_3_n_0,
      I3 => direction_i_2_n_0,
      I4 => \^dataready\,
      O => dataready_i_1_n_0
    );
dataready_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF202020"
    )
        port map (
      I0 => sbclk,
      I1 => sbclkPrev,
      I2 => \CommunicationState__0\(0),
      I3 => \dataout[15]_i_2_n_0\,
      I4 => \CommunicationState__0\(1),
      O => dataready_i_2_n_0
    );
dataready_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^direction_reg_0\,
      I1 => \bitCnt_reg_n_0_[5]\,
      I2 => \bitCnt_reg_n_0_[0]\,
      I3 => \CommunicationState__0\(2),
      I4 => \CommunicationState__0\(1),
      I5 => dataready_i_4_n_0,
      O => dataready_i_3_n_0
    );
dataready_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => \addDevRegBuf[4]_i_3_n_0\,
      I1 => \CommunicationState__0\(0),
      I2 => \bitCnt_reg_n_0_[1]\,
      I3 => \bitCnt_reg_n_0_[4]\,
      I4 => \bitCnt_reg_n_0_[2]\,
      I5 => \bitCnt_reg_n_0_[3]\,
      O => dataready_i_4_n_0
    );
dataready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => dataready_i_1_n_0,
      Q => \^dataready\,
      R => '0'
    );
direction_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sbdatain,
      I1 => direction_i_2_n_0,
      I2 => \^direction_reg_0\,
      O => direction_i_1_n_0
    );
direction_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \CommunicationState__0\(0),
      I1 => sbclk,
      I2 => sbclkPrev,
      I3 => \CommunicationState__0\(2),
      I4 => \CommunicationState__0\(1),
      O => direction_i_2_n_0
    );
direction_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => direction_i_1_n_0,
      Q => \^direction_reg_0\,
      R => '0'
    );
\lacth[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00DC"
    )
        port map (
      I0 => readyCRC,
      I1 => \lacth_reg_n_0_[0]\,
      I2 => lacth,
      I3 => resetCRC_reg_n_0,
      O => \lacth[0]_i_1_n_0\
    );
\lacth_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \lacth[0]_i_1_n_0\,
      Q => \lacth_reg_n_0_[0]\,
      R => '0'
    );
readyCRC_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00EA"
    )
        port map (
      I0 => readyCRC,
      I1 => lacth,
      I2 => \lacth_reg_n_0_[0]\,
      I3 => resetCRC_reg_n_0,
      O => readyCRC_i_1_n_0
    );
readyCRC_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => readyCRC_i_1_n_0,
      Q => readyCRC,
      R => '0'
    );
resetCRC_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF44FFF7FF44FF04"
    )
        port map (
      I0 => resetCRC_i_2_n_0,
      I1 => resetCRC_i_3_n_0,
      I2 => resetCRC_i_4_n_0,
      I3 => resetCRC_i_5_n_0,
      I4 => resetCRC_i_6_n_0,
      I5 => resetCRC_reg_n_0,
      O => resetCRC_i_1_n_0
    );
resetCRC_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFD3FFD3FFDFFFD3"
    )
        port map (
      I0 => \dataCRC[15]_i_3_n_0\,
      I1 => \CommunicationState__0\(2),
      I2 => \CommunicationState__0\(1),
      I3 => \CommunicationState__0\(0),
      I4 => \addDevRegBuf[4]_i_3_n_0\,
      I5 => \addressregister[7]_i_2_n_0\,
      O => resetCRC_i_2_n_0
    );
resetCRC_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sbReset,
      I1 => sbResetPrev,
      O => resetCRC_i_3_n_0
    );
resetCRC_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \CommunicationState__0\(0),
      I1 => \CommunicationState__0\(1),
      I2 => \CommunicationState__0\(2),
      O => resetCRC_i_4_n_0
    );
resetCRC_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFEAAAAAAFBAAAA"
    )
        port map (
      I0 => direction_i_2_n_0,
      I1 => \CommunicationState__0\(1),
      I2 => \CommunicationState__0\(0),
      I3 => sbResetPrev,
      I4 => sbReset,
      I5 => \CommunicationState__0\(2),
      O => resetCRC_i_5_n_0
    );
resetCRC_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000EE000F0000"
    )
        port map (
      I0 => resetCRC_i_3_n_0,
      I1 => resetCRC_i_7_n_0,
      I2 => \dataCRC[15]_i_3_n_0\,
      I3 => \CommunicationState__0\(0),
      I4 => \CommunicationState__0\(1),
      I5 => \CommunicationState__0\(2),
      O => resetCRC_i_6_n_0
    );
resetCRC_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => sbclkPrev,
      I1 => sbclk,
      I2 => \addressregister[7]_i_2_n_0\,
      O => resetCRC_i_7_n_0
    );
resetCRC_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => resetCRC_i_1_n_0,
      Q => resetCRC_reg_n_0,
      R => '0'
    );
sbDataOutBuf_tristate_oe_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4FFF400"
    )
        port map (
      I0 => \dataout[15]_i_2_n_0\,
      I1 => \CommunicationState__0\(2),
      I2 => sbDataOutBuf_tristate_oe_i_2_n_0,
      I3 => sbDataOutBuf_tristate_oe_i_3_n_0,
      I4 => sbDataOutBuf_tristate_oe_reg_n_0,
      O => sbDataOutBuf_tristate_oe_i_1_n_0
    );
sbDataOutBuf_tristate_oe_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => datain(11),
      I1 => datain(10),
      I2 => \bitCnt_reg_n_0_[1]\,
      I3 => datain(9),
      I4 => \bitCnt_reg_n_0_[0]\,
      I5 => datain(8),
      O => sbDataOutBuf_tristate_oe_i_10_n_0
    );
sbDataOutBuf_tristate_oe_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => datain(15),
      I1 => datain(14),
      I2 => \bitCnt_reg_n_0_[1]\,
      I3 => datain(13),
      I4 => \bitCnt_reg_n_0_[0]\,
      I5 => datain(12),
      O => sbDataOutBuf_tristate_oe_i_11_n_0
    );
sbDataOutBuf_tristate_oe_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FB3B"
    )
        port map (
      I0 => sbDataOutBuf_tristate_oe_reg_i_4_n_0,
      I1 => \CommunicationState__0\(1),
      I2 => \CommunicationState__0\(0),
      I3 => sbDataOutBuf_tristate_oe_i_5_n_0,
      I4 => \CommunicationState__0\(2),
      O => sbDataOutBuf_tristate_oe_i_2_n_0
    );
sbDataOutBuf_tristate_oe_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008550D500800085"
    )
        port map (
      I0 => \CommunicationState__0\(2),
      I1 => readyCRC,
      I2 => \CommunicationState__0\(1),
      I3 => \CommunicationState__0\(0),
      I4 => sbclk,
      I5 => sbclkPrev,
      O => sbDataOutBuf_tristate_oe_i_3_n_0
    );
sbDataOutBuf_tristate_oe_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => \CRC_reg_n_0_[2]\,
      I2 => \bitCnt_reg_n_0_[1]\,
      I3 => p_0_in_0,
      I4 => \bitCnt_reg_n_0_[0]\,
      I5 => \CRC_reg_n_0_[0]\,
      O => sbDataOutBuf_tristate_oe_i_5_n_0
    );
sbDataOutBuf_tristate_oe_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => datain(3),
      I1 => datain(2),
      I2 => \bitCnt_reg_n_0_[1]\,
      I3 => datain(1),
      I4 => \bitCnt_reg_n_0_[0]\,
      I5 => datain(0),
      O => sbDataOutBuf_tristate_oe_i_8_n_0
    );
sbDataOutBuf_tristate_oe_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => datain(7),
      I1 => datain(6),
      I2 => \bitCnt_reg_n_0_[1]\,
      I3 => datain(5),
      I4 => \bitCnt_reg_n_0_[0]\,
      I5 => datain(4),
      O => sbDataOutBuf_tristate_oe_i_9_n_0
    );
sbDataOutBuf_tristate_oe_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sbDataOutBuf_tristate_oe_i_1_n_0,
      Q => sbDataOutBuf_tristate_oe_reg_n_0,
      R => '0'
    );
sbDataOutBuf_tristate_oe_reg_i_4: unisim.vcomponents.MUXF8
     port map (
      I0 => sbDataOutBuf_tristate_oe_reg_i_6_n_0,
      I1 => sbDataOutBuf_tristate_oe_reg_i_7_n_0,
      O => sbDataOutBuf_tristate_oe_reg_i_4_n_0,
      S => \bitCnt_reg_n_0_[3]\
    );
sbDataOutBuf_tristate_oe_reg_i_6: unisim.vcomponents.MUXF7
     port map (
      I0 => sbDataOutBuf_tristate_oe_i_8_n_0,
      I1 => sbDataOutBuf_tristate_oe_i_9_n_0,
      O => sbDataOutBuf_tristate_oe_reg_i_6_n_0,
      S => \bitCnt_reg_n_0_[2]\
    );
sbDataOutBuf_tristate_oe_reg_i_7: unisim.vcomponents.MUXF7
     port map (
      I0 => sbDataOutBuf_tristate_oe_i_10_n_0,
      I1 => sbDataOutBuf_tristate_oe_i_11_n_0,
      O => sbDataOutBuf_tristate_oe_reg_i_7_n_0,
      S => \bitCnt_reg_n_0_[2]\
    );
sbResetPrev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sbReset,
      Q => sbResetPrev,
      R => '0'
    );
sbReset_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C382"
    )
        port map (
      I0 => sbReset,
      I1 => sbclk,
      I2 => sbclkPrev,
      I3 => sbReset_i_2_n_0,
      O => sbReset_i_1_n_0
    );
sbReset_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888A888A8888888"
    )
        port map (
      I0 => count_reg(7),
      I1 => count_reg(6),
      I2 => count_reg(5),
      I3 => count_reg(4),
      I4 => count_reg(3),
      I5 => count_reg(2),
      O => sbReset_i_2_n_0
    );
sbReset_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sbReset_i_1_n_0,
      Q => sbReset,
      R => '0'
    );
sbclkPrev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sbclk,
      Q => sbclkPrev,
      R => '0'
    );
sbdataout_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sbDataOutBuf_tristate_oe_reg_n_0,
      I1 => sbdataout_INST_0_i_1_0,
      O => \^sbdataout\
    );
sbdataout_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF1FFFFFFF10000"
    )
        port map (
      I0 => \bitCnt[5]_i_3_n_0\,
      I1 => \^sbdataout\,
      I2 => sbdataout_INST_0_i_3_n_0,
      I3 => sbdataout_INST_0_i_4_n_0,
      I4 => sbDataOutBuf_tristate_oe_i_3_n_0,
      I5 => sbdataout_INST_0_i_1_0,
      O => sbdataout_INST_0_i_1
    );
sbdataout_INST_0_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => readyCRC,
      I1 => \CommunicationState__0\(2),
      O => sbdataout_INST_0_i_3_n_0
    );
sbdataout_INST_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => sbclk,
      I1 => sbclkPrev,
      I2 => \CommunicationState__0\(1),
      I3 => \CommunicationState__0\(2),
      O => sbdataout_INST_0_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SerialBusSlave_ver_2_0_0 is
  port (
    clk : in STD_LOGIC;
    sbclk : in STD_LOGIC;
    sbdatain : in STD_LOGIC;
    sbdataout : out STD_LOGIC;
    addressregister : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dataout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    datain : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rw : out STD_LOGIC;
    dataready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_SerialBusSlave_ver_2_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_SerialBusSlave_ver_2_0_0 : entity is "design_1_SerialBusSlave_ver_2_0_0,SerialBusSlave_ver_2_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_SerialBusSlave_ver_2_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_SerialBusSlave_ver_2_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of design_1_SerialBusSlave_ver_2_0_0 : entity is "SerialBusSlave_ver_2_0,Vivado 2019.1";
end design_1_SerialBusSlave_ver_2_0_0;

architecture STRUCTURE of design_1_SerialBusSlave_ver_2_0_0 is
  signal U0_n_2 : STD_LOGIC;
  signal sbdataout_INST_0_i_1_n_0 : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0";
begin
U0: entity work.design_1_SerialBusSlave_ver_2_0_0_SerialBusSlave_ver_2_0
     port map (
      addressregister(7 downto 0) => addressregister(7 downto 0),
      clk => clk,
      datain(15 downto 0) => datain(15 downto 0),
      dataout(15 downto 0) => dataout(15 downto 0),
      dataready => dataready,
      direction_reg_0 => rw,
      sbclk => sbclk,
      sbdatain => sbdatain,
      sbdataout => sbdataout,
      sbdataout_INST_0_i_1 => U0_n_2,
      sbdataout_INST_0_i_1_0 => sbdataout_INST_0_i_1_n_0
    );
sbdataout_INST_0_i_1: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => U0_n_2,
      Q => sbdataout_INST_0_i_1_n_0,
      R => '0'
    );
end STRUCTURE;
