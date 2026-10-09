-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri Oct  9 15:47:10 2026
-- Host        : STAS-W10 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/GITEA/GitHub/ES/Zedboard/ZedBoard_test.srcs/sources_1/bd/design_1/ip/design_1_ParallelBusSlave_ver_0_0/design_1_ParallelBusSlave_ver_0_0_sim_netlist.vhdl
-- Design      : design_1_ParallelBusSlave_ver_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ParallelBusSlave_ver_0_0_ParallelBusSlave_ver_2_0 is
  port (
    dataready : out STD_LOGIC;
    \FSM_sequential_CommunicationState_reg[1]_0\ : out STD_LOGIC;
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    pback : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    addressregister : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pbce_0 : out STD_LOGIC;
    pbdata : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    pbce : in STD_LOGIC;
    pback_INST_0_i_1 : in STD_LOGIC;
    pbclk : in STD_LOGIC;
    pbdata_0_sp_1 : in STD_LOGIC;
    datain : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ParallelBusSlave_ver_0_0_ParallelBusSlave_ver_2_0 : entity is "ParallelBusSlave_ver_2_0";
end design_1_ParallelBusSlave_ver_0_0_ParallelBusSlave_ver_2_0;

architecture STRUCTURE of design_1_ParallelBusSlave_ver_0_0_ParallelBusSlave_ver_2_0 is
  signal CommunicationState : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_sequential_CommunicationState[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_CommunicationState[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_CommunicationState[2]_i_1_n_0\ : STD_LOGIC;
  signal \^ss\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \addressregister[7]_i_1_n_0\ : STD_LOGIC;
  signal \addressregister[7]_i_3_n_0\ : STD_LOGIC;
  signal \addressregister[7]_i_4_n_0\ : STD_LOGIC;
  signal \addressregister[7]_i_5_n_0\ : STD_LOGIC;
  signal \addressregister[7]_i_6_n_0\ : STD_LOGIC;
  signal \addressregister[7]_i_7_n_0\ : STD_LOGIC;
  signal \addressregister[7]_i_8_n_0\ : STD_LOGIC;
  signal \addressregister[7]_i_9_n_0\ : STD_LOGIC;
  signal count : STD_LOGIC;
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[0]_i_2_n_0\ : STD_LOGIC;
  signal \count[1]_i_1_n_0\ : STD_LOGIC;
  signal \count[1]_i_2_n_0\ : STD_LOGIC;
  signal \count[1]_i_3_n_0\ : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal dataBuf : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \dataBuf[15]_i_1_n_0\ : STD_LOGIC;
  signal \^dataready\ : STD_LOGIC;
  signal dataready_i_1_n_0 : STD_LOGIC;
  signal eqOp : STD_LOGIC;
  signal pbAckBuf_tristate_oe_i_1_n_0 : STD_LOGIC;
  signal pbAckBuf_tristate_oe_i_2_n_0 : STD_LOGIC;
  signal pbAckBuf_tristate_oe_reg_n_0 : STD_LOGIC;
  signal \^pback\ : STD_LOGIC;
  signal pback_INST_0_i_3_n_0 : STD_LOGIC;
  signal pbdata_0_sn_1 : STD_LOGIC;
  signal \pbdata_tristate_oe[0]_i_1_n_0\ : STD_LOGIC;
  signal \pbdata_tristate_oe[10]_i_1_n_0\ : STD_LOGIC;
  signal \pbdata_tristate_oe[11]_i_1_n_0\ : STD_LOGIC;
  signal \pbdata_tristate_oe[12]_i_1_n_0\ : STD_LOGIC;
  signal \pbdata_tristate_oe[13]_i_1_n_0\ : STD_LOGIC;
  signal \pbdata_tristate_oe[14]_i_1_n_0\ : STD_LOGIC;
  signal \pbdata_tristate_oe[15]_i_3_n_0\ : STD_LOGIC;
  signal \pbdata_tristate_oe[1]_i_1_n_0\ : STD_LOGIC;
  signal \pbdata_tristate_oe[2]_i_1_n_0\ : STD_LOGIC;
  signal \pbdata_tristate_oe[3]_i_1_n_0\ : STD_LOGIC;
  signal \pbdata_tristate_oe[4]_i_1_n_0\ : STD_LOGIC;
  signal \pbdata_tristate_oe[5]_i_1_n_0\ : STD_LOGIC;
  signal \pbdata_tristate_oe[6]_i_1_n_0\ : STD_LOGIC;
  signal \pbdata_tristate_oe[7]_i_1_n_0\ : STD_LOGIC;
  signal \pbdata_tristate_oe[8]_i_1_n_0\ : STD_LOGIC;
  signal \pbdata_tristate_oe[9]_i_1_n_0\ : STD_LOGIC;
  signal \pbdata_tristate_oe_reg_n_0_[0]\ : STD_LOGIC;
  signal \pbdata_tristate_oe_reg_n_0_[10]\ : STD_LOGIC;
  signal \pbdata_tristate_oe_reg_n_0_[11]\ : STD_LOGIC;
  signal \pbdata_tristate_oe_reg_n_0_[12]\ : STD_LOGIC;
  signal \pbdata_tristate_oe_reg_n_0_[13]\ : STD_LOGIC;
  signal \pbdata_tristate_oe_reg_n_0_[14]\ : STD_LOGIC;
  signal \pbdata_tristate_oe_reg_n_0_[15]\ : STD_LOGIC;
  signal \pbdata_tristate_oe_reg_n_0_[1]\ : STD_LOGIC;
  signal \pbdata_tristate_oe_reg_n_0_[2]\ : STD_LOGIC;
  signal \pbdata_tristate_oe_reg_n_0_[3]\ : STD_LOGIC;
  signal \pbdata_tristate_oe_reg_n_0_[4]\ : STD_LOGIC;
  signal \pbdata_tristate_oe_reg_n_0_[5]\ : STD_LOGIC;
  signal \pbdata_tristate_oe_reg_n_0_[6]\ : STD_LOGIC;
  signal \pbdata_tristate_oe_reg_n_0_[7]\ : STD_LOGIC;
  signal \pbdata_tristate_oe_reg_n_0_[8]\ : STD_LOGIC;
  signal \pbdata_tristate_oe_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_CommunicationState[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_CommunicationState[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_CommunicationState[2]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_CommunicationState_reg[0]\ : label is "receiveaddress:000,transmitdata:010,transmitcheck:011,waiting:100,getdata:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_CommunicationState_reg[1]\ : label is "receiveaddress:000,transmitdata:010,transmitcheck:011,waiting:100,getdata:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_CommunicationState_reg[2]\ : label is "receiveaddress:000,transmitdata:010,transmitcheck:011,waiting:100,getdata:001";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[1]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[1]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[2]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of pback_INST_0_i_3 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pbdata[0]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \pbdata[10]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \pbdata[11]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \pbdata[12]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \pbdata[13]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \pbdata[14]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \pbdata[15]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \pbdata[1]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \pbdata[2]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \pbdata[3]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \pbdata[4]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \pbdata[5]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \pbdata[6]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \pbdata[7]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \pbdata[8]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \pbdata[9]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \pbdata_tristate_oe[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \pbdata_tristate_oe[10]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \pbdata_tristate_oe[11]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \pbdata_tristate_oe[12]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \pbdata_tristate_oe[13]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \pbdata_tristate_oe[14]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \pbdata_tristate_oe[15]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \pbdata_tristate_oe[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \pbdata_tristate_oe[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \pbdata_tristate_oe[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \pbdata_tristate_oe[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \pbdata_tristate_oe[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \pbdata_tristate_oe[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \pbdata_tristate_oe[7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \pbdata_tristate_oe[8]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \pbdata_tristate_oe[9]_i_1\ : label is "soft_lutpair10";
begin
  E(0) <= \^e\(0);
  SS(0) <= \^ss\(0);
  dataready <= \^dataready\;
  pback <= \^pback\;
  pbdata_0_sn_1 <= pbdata_0_sp_1;
\FSM_sequential_CommunicationState[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF000E2"
    )
        port map (
      I0 => eqOp,
      I1 => CommunicationState(1),
      I2 => pbclk,
      I3 => CommunicationState(2),
      I4 => CommunicationState(0),
      O => \FSM_sequential_CommunicationState[0]_i_1_n_0\
    );
\FSM_sequential_CommunicationState[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A9AA"
    )
        port map (
      I0 => CommunicationState(1),
      I1 => pbclk,
      I2 => CommunicationState(2),
      I3 => CommunicationState(0),
      O => \FSM_sequential_CommunicationState[1]_i_1_n_0\
    );
\FSM_sequential_CommunicationState[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0CFF11"
    )
        port map (
      I0 => eqOp,
      I1 => CommunicationState(1),
      I2 => pbclk,
      I3 => CommunicationState(2),
      I4 => CommunicationState(0),
      O => \FSM_sequential_CommunicationState[2]_i_1_n_0\
    );
\FSM_sequential_CommunicationState_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_CommunicationState[0]_i_1_n_0\,
      Q => CommunicationState(0),
      R => pbce
    );
\FSM_sequential_CommunicationState_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_CommunicationState[1]_i_1_n_0\,
      Q => CommunicationState(1),
      R => pbce
    );
\FSM_sequential_CommunicationState_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_CommunicationState[2]_i_1_n_0\,
      Q => CommunicationState(2),
      R => pbce
    );
\addressregister[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => CommunicationState(2),
      I1 => CommunicationState(0),
      I2 => CommunicationState(1),
      I3 => eqOp,
      I4 => pbce,
      O => \addressregister[7]_i_1_n_0\
    );
\addressregister[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000660"
    )
        port map (
      I0 => pbdata(6),
      I1 => pbdata(14),
      I2 => pbdata(7),
      I3 => pbdata(15),
      I4 => \addressregister[7]_i_3_n_0\,
      O => eqOp
    );
\addressregister[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \addressregister[7]_i_4_n_0\,
      I1 => \addressregister[7]_i_5_n_0\,
      I2 => \addressregister[7]_i_6_n_0\,
      I3 => \addressregister[7]_i_7_n_0\,
      I4 => \addressregister[7]_i_8_n_0\,
      I5 => \addressregister[7]_i_9_n_0\,
      O => \addressregister[7]_i_3_n_0\
    );
\addressregister[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pbdata(5),
      I1 => pbdata(13),
      O => \addressregister[7]_i_4_n_0\
    );
\addressregister[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pbdata(4),
      I1 => pbdata(12),
      O => \addressregister[7]_i_5_n_0\
    );
\addressregister[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pbdata(3),
      I1 => pbdata(11),
      O => \addressregister[7]_i_6_n_0\
    );
\addressregister[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pbdata(1),
      I1 => pbdata(9),
      O => \addressregister[7]_i_7_n_0\
    );
\addressregister[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pbdata(2),
      I1 => pbdata(10),
      O => \addressregister[7]_i_8_n_0\
    );
\addressregister[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pbdata(0),
      I1 => pbdata(8),
      O => \addressregister[7]_i_9_n_0\
    );
\addressregister_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \addressregister[7]_i_1_n_0\,
      D => pbdata(8),
      Q => addressregister(0),
      R => '0'
    );
\addressregister_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \addressregister[7]_i_1_n_0\,
      D => pbdata(9),
      Q => addressregister(1),
      R => '0'
    );
\addressregister_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \addressregister[7]_i_1_n_0\,
      D => pbdata(10),
      Q => addressregister(2),
      R => '0'
    );
\addressregister_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \addressregister[7]_i_1_n_0\,
      D => pbdata(11),
      Q => addressregister(3),
      R => '0'
    );
\addressregister_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \addressregister[7]_i_1_n_0\,
      D => pbdata(12),
      Q => addressregister(4),
      R => '0'
    );
\addressregister_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \addressregister[7]_i_1_n_0\,
      D => pbdata(13),
      Q => addressregister(5),
      R => '0'
    );
\addressregister_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \addressregister[7]_i_1_n_0\,
      D => pbdata(14),
      Q => addressregister(6),
      R => '0'
    );
\addressregister_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \addressregister[7]_i_1_n_0\,
      D => pbdata(15),
      Q => addressregister(7),
      R => '0'
    );
\count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB03B00004004"
    )
        port map (
      I0 => \count[0]_i_2_n_0\,
      I1 => CommunicationState(1),
      I2 => pbclk,
      I3 => CommunicationState(0),
      I4 => CommunicationState(2),
      I5 => \count_reg_n_0_[0]\,
      O => \count[0]_i_1_n_0\
    );
\count[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[1]\,
      I2 => \count_reg_n_0_[0]\,
      O => \count[0]_i_2_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAFFEA00"
    )
        port map (
      I0 => \count[1]_i_2_n_0\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count[1]_i_3_n_0\,
      I3 => count,
      I4 => \count_reg_n_0_[1]\,
      O => \count[1]_i_1_n_0\
    );
\count[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => CommunicationState(1),
      I1 => pbclk,
      I2 => CommunicationState(2),
      O => \count[1]_i_2_n_0\
    );
\count[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4004"
    )
        port map (
      I0 => CommunicationState(2),
      I1 => CommunicationState(1),
      I2 => pbclk,
      I3 => CommunicationState(0),
      O => \count[1]_i_3_n_0\
    );
\count[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004FC4"
    )
        port map (
      I0 => \count[0]_i_2_n_0\,
      I1 => CommunicationState(1),
      I2 => pbclk,
      I3 => CommunicationState(0),
      I4 => CommunicationState(2),
      O => count
    );
\count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAABA000ABA"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count[2]_i_2_n_0\,
      I2 => CommunicationState(1),
      I3 => pbclk,
      I4 => CommunicationState(0),
      I5 => CommunicationState(2),
      O => \count[2]_i_1_n_0\
    );
\count[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \count_reg_n_0_[1]\,
      O => \count[2]_i_2_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count[0]_i_1_n_0\,
      Q => \count_reg_n_0_[0]\,
      R => pbce
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count[1]_i_1_n_0\,
      Q => \count_reg_n_0_[1]\,
      R => pbce
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count[2]_i_1_n_0\,
      Q => \count_reg_n_0_[2]\,
      R => pbce
    );
\dataBuf[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => pbclk,
      I1 => CommunicationState(0),
      I2 => pbce,
      I3 => CommunicationState(2),
      I4 => CommunicationState(1),
      O => \dataBuf[15]_i_1_n_0\
    );
\dataBuf_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataBuf[15]_i_1_n_0\,
      D => datain(0),
      Q => dataBuf(0),
      R => '0'
    );
\dataBuf_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataBuf[15]_i_1_n_0\,
      D => datain(10),
      Q => dataBuf(10),
      R => '0'
    );
\dataBuf_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataBuf[15]_i_1_n_0\,
      D => datain(11),
      Q => dataBuf(11),
      R => '0'
    );
\dataBuf_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataBuf[15]_i_1_n_0\,
      D => datain(12),
      Q => dataBuf(12),
      R => '0'
    );
\dataBuf_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataBuf[15]_i_1_n_0\,
      D => datain(13),
      Q => dataBuf(13),
      R => '0'
    );
\dataBuf_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataBuf[15]_i_1_n_0\,
      D => datain(14),
      Q => dataBuf(14),
      R => '0'
    );
\dataBuf_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataBuf[15]_i_1_n_0\,
      D => datain(15),
      Q => dataBuf(15),
      R => '0'
    );
\dataBuf_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataBuf[15]_i_1_n_0\,
      D => datain(1),
      Q => dataBuf(1),
      R => '0'
    );
\dataBuf_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataBuf[15]_i_1_n_0\,
      D => datain(2),
      Q => dataBuf(2),
      R => '0'
    );
\dataBuf_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataBuf[15]_i_1_n_0\,
      D => datain(3),
      Q => dataBuf(3),
      R => '0'
    );
\dataBuf_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataBuf[15]_i_1_n_0\,
      D => datain(4),
      Q => dataBuf(4),
      R => '0'
    );
\dataBuf_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataBuf[15]_i_1_n_0\,
      D => datain(5),
      Q => dataBuf(5),
      R => '0'
    );
\dataBuf_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataBuf[15]_i_1_n_0\,
      D => datain(6),
      Q => dataBuf(6),
      R => '0'
    );
\dataBuf_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataBuf[15]_i_1_n_0\,
      D => datain(7),
      Q => dataBuf(7),
      R => '0'
    );
\dataBuf_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataBuf[15]_i_1_n_0\,
      D => datain(8),
      Q => dataBuf(8),
      R => '0'
    );
\dataBuf_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \dataBuf[15]_i_1_n_0\,
      D => datain(9),
      Q => dataBuf(9),
      R => '0'
    );
dataready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAABAAAA"
    )
        port map (
      I0 => \^dataready\,
      I1 => CommunicationState(2),
      I2 => CommunicationState(0),
      I3 => CommunicationState(1),
      I4 => eqOp,
      I5 => pbce,
      O => dataready_i_1_n_0
    );
dataready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => dataready_i_1_n_0,
      Q => \^dataready\,
      R => '0'
    );
pbAckBuf_tristate_oe_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAAFFFFABAA0000"
    )
        port map (
      I0 => pbce,
      I1 => CommunicationState(2),
      I2 => CommunicationState(0),
      I3 => CommunicationState(1),
      I4 => pbAckBuf_tristate_oe_i_2_n_0,
      I5 => pbAckBuf_tristate_oe_reg_n_0,
      O => pbAckBuf_tristate_oe_i_1_n_0
    );
pbAckBuf_tristate_oe_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEBAABBAAAAAABB"
    )
        port map (
      I0 => pbce,
      I1 => CommunicationState(0),
      I2 => pbclk,
      I3 => CommunicationState(2),
      I4 => CommunicationState(1),
      I5 => \count[0]_i_2_n_0\,
      O => pbAckBuf_tristate_oe_i_2_n_0
    );
pbAckBuf_tristate_oe_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pbAckBuf_tristate_oe_i_1_n_0,
      Q => pbAckBuf_tristate_oe_reg_n_0,
      R => '0'
    );
pback_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pbAckBuf_tristate_oe_reg_n_0,
      I1 => pback_INST_0_i_1,
      O => \^pback\
    );
pback_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBAFFFFBBBA0000"
    )
        port map (
      I0 => \^ss\(0),
      I1 => pback_INST_0_i_3_n_0,
      I2 => CommunicationState(1),
      I3 => eqOp,
      I4 => pbAckBuf_tristate_oe_i_2_n_0,
      I5 => pback_INST_0_i_1,
      O => \FSM_sequential_CommunicationState_reg[1]_0\
    );
pback_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF4"
    )
        port map (
      I0 => pbclk,
      I1 => CommunicationState(0),
      I2 => CommunicationState(2),
      I3 => pbce,
      O => pback_INST_0_i_3_n_0
    );
\pbdata[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pbdata_tristate_oe_reg_n_0_[0]\,
      I1 => pbdata_0_sn_1,
      O => pbdata(0)
    );
\pbdata[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pbdata_tristate_oe_reg_n_0_[10]\,
      I1 => pbdata_0_sn_1,
      O => pbdata(10)
    );
\pbdata[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pbdata_tristate_oe_reg_n_0_[11]\,
      I1 => pbdata_0_sn_1,
      O => pbdata(11)
    );
\pbdata[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pbdata_tristate_oe_reg_n_0_[12]\,
      I1 => pbdata_0_sn_1,
      O => pbdata(12)
    );
\pbdata[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pbdata_tristate_oe_reg_n_0_[13]\,
      I1 => pbdata_0_sn_1,
      O => pbdata(13)
    );
\pbdata[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pbdata_tristate_oe_reg_n_0_[14]\,
      I1 => pbdata_0_sn_1,
      O => pbdata(14)
    );
\pbdata[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pbdata_tristate_oe_reg_n_0_[15]\,
      I1 => pbdata_0_sn_1,
      O => pbdata(15)
    );
\pbdata[15]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4744444444444744"
    )
        port map (
      I0 => \^pback\,
      I1 => pbce,
      I2 => CommunicationState(2),
      I3 => CommunicationState(1),
      I4 => pbclk,
      I5 => CommunicationState(0),
      O => pbce_0
    );
\pbdata[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pbdata_tristate_oe_reg_n_0_[1]\,
      I1 => pbdata_0_sn_1,
      O => pbdata(1)
    );
\pbdata[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pbdata_tristate_oe_reg_n_0_[2]\,
      I1 => pbdata_0_sn_1,
      O => pbdata(2)
    );
\pbdata[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pbdata_tristate_oe_reg_n_0_[3]\,
      I1 => pbdata_0_sn_1,
      O => pbdata(3)
    );
\pbdata[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pbdata_tristate_oe_reg_n_0_[4]\,
      I1 => pbdata_0_sn_1,
      O => pbdata(4)
    );
\pbdata[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pbdata_tristate_oe_reg_n_0_[5]\,
      I1 => pbdata_0_sn_1,
      O => pbdata(5)
    );
\pbdata[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pbdata_tristate_oe_reg_n_0_[6]\,
      I1 => pbdata_0_sn_1,
      O => pbdata(6)
    );
\pbdata[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pbdata_tristate_oe_reg_n_0_[7]\,
      I1 => pbdata_0_sn_1,
      O => pbdata(7)
    );
\pbdata[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pbdata_tristate_oe_reg_n_0_[8]\,
      I1 => pbdata_0_sn_1,
      O => pbdata(8)
    );
\pbdata[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pbdata_tristate_oe_reg_n_0_[9]\,
      I1 => pbdata_0_sn_1,
      O => pbdata(9)
    );
\pbdata_tristate_oe[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => dataBuf(0),
      I1 => CommunicationState(0),
      I2 => CommunicationState(2),
      O => \pbdata_tristate_oe[0]_i_1_n_0\
    );
\pbdata_tristate_oe[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => dataBuf(10),
      I1 => CommunicationState(0),
      I2 => CommunicationState(2),
      O => \pbdata_tristate_oe[10]_i_1_n_0\
    );
\pbdata_tristate_oe[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => dataBuf(11),
      I1 => CommunicationState(0),
      I2 => CommunicationState(2),
      O => \pbdata_tristate_oe[11]_i_1_n_0\
    );
\pbdata_tristate_oe[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => dataBuf(12),
      I1 => CommunicationState(0),
      I2 => CommunicationState(2),
      O => \pbdata_tristate_oe[12]_i_1_n_0\
    );
\pbdata_tristate_oe[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => dataBuf(13),
      I1 => CommunicationState(0),
      I2 => CommunicationState(2),
      O => \pbdata_tristate_oe[13]_i_1_n_0\
    );
\pbdata_tristate_oe[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => dataBuf(14),
      I1 => CommunicationState(0),
      I2 => CommunicationState(2),
      O => \pbdata_tristate_oe[14]_i_1_n_0\
    );
\pbdata_tristate_oe[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pbce,
      I1 => \^pback\,
      O => \^ss\(0)
    );
\pbdata_tristate_oe[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAEBAA"
    )
        port map (
      I0 => pbce,
      I1 => CommunicationState(0),
      I2 => pbclk,
      I3 => CommunicationState(1),
      I4 => CommunicationState(2),
      O => \^e\(0)
    );
\pbdata_tristate_oe[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => dataBuf(15),
      I1 => CommunicationState(0),
      I2 => CommunicationState(2),
      O => \pbdata_tristate_oe[15]_i_3_n_0\
    );
\pbdata_tristate_oe[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => dataBuf(1),
      I1 => CommunicationState(0),
      I2 => CommunicationState(2),
      O => \pbdata_tristate_oe[1]_i_1_n_0\
    );
\pbdata_tristate_oe[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => dataBuf(2),
      I1 => CommunicationState(0),
      I2 => CommunicationState(2),
      O => \pbdata_tristate_oe[2]_i_1_n_0\
    );
\pbdata_tristate_oe[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => dataBuf(3),
      I1 => CommunicationState(0),
      I2 => CommunicationState(2),
      O => \pbdata_tristate_oe[3]_i_1_n_0\
    );
\pbdata_tristate_oe[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => dataBuf(4),
      I1 => CommunicationState(0),
      I2 => CommunicationState(2),
      O => \pbdata_tristate_oe[4]_i_1_n_0\
    );
\pbdata_tristate_oe[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => dataBuf(5),
      I1 => CommunicationState(0),
      I2 => CommunicationState(2),
      O => \pbdata_tristate_oe[5]_i_1_n_0\
    );
\pbdata_tristate_oe[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => dataBuf(6),
      I1 => CommunicationState(0),
      I2 => CommunicationState(2),
      O => \pbdata_tristate_oe[6]_i_1_n_0\
    );
\pbdata_tristate_oe[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => dataBuf(7),
      I1 => CommunicationState(0),
      I2 => CommunicationState(2),
      O => \pbdata_tristate_oe[7]_i_1_n_0\
    );
\pbdata_tristate_oe[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => dataBuf(8),
      I1 => CommunicationState(0),
      I2 => CommunicationState(2),
      O => \pbdata_tristate_oe[8]_i_1_n_0\
    );
\pbdata_tristate_oe[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => dataBuf(9),
      I1 => CommunicationState(0),
      I2 => CommunicationState(2),
      O => \pbdata_tristate_oe[9]_i_1_n_0\
    );
\pbdata_tristate_oe_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \pbdata_tristate_oe[0]_i_1_n_0\,
      Q => \pbdata_tristate_oe_reg_n_0_[0]\,
      S => \^ss\(0)
    );
\pbdata_tristate_oe_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \pbdata_tristate_oe[10]_i_1_n_0\,
      Q => \pbdata_tristate_oe_reg_n_0_[10]\,
      S => \^ss\(0)
    );
\pbdata_tristate_oe_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \pbdata_tristate_oe[11]_i_1_n_0\,
      Q => \pbdata_tristate_oe_reg_n_0_[11]\,
      S => \^ss\(0)
    );
\pbdata_tristate_oe_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \pbdata_tristate_oe[12]_i_1_n_0\,
      Q => \pbdata_tristate_oe_reg_n_0_[12]\,
      S => \^ss\(0)
    );
\pbdata_tristate_oe_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \pbdata_tristate_oe[13]_i_1_n_0\,
      Q => \pbdata_tristate_oe_reg_n_0_[13]\,
      S => \^ss\(0)
    );
\pbdata_tristate_oe_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \pbdata_tristate_oe[14]_i_1_n_0\,
      Q => \pbdata_tristate_oe_reg_n_0_[14]\,
      S => \^ss\(0)
    );
\pbdata_tristate_oe_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \pbdata_tristate_oe[15]_i_3_n_0\,
      Q => \pbdata_tristate_oe_reg_n_0_[15]\,
      S => \^ss\(0)
    );
\pbdata_tristate_oe_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \pbdata_tristate_oe[1]_i_1_n_0\,
      Q => \pbdata_tristate_oe_reg_n_0_[1]\,
      S => \^ss\(0)
    );
\pbdata_tristate_oe_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \pbdata_tristate_oe[2]_i_1_n_0\,
      Q => \pbdata_tristate_oe_reg_n_0_[2]\,
      S => \^ss\(0)
    );
\pbdata_tristate_oe_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \pbdata_tristate_oe[3]_i_1_n_0\,
      Q => \pbdata_tristate_oe_reg_n_0_[3]\,
      S => \^ss\(0)
    );
\pbdata_tristate_oe_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \pbdata_tristate_oe[4]_i_1_n_0\,
      Q => \pbdata_tristate_oe_reg_n_0_[4]\,
      S => \^ss\(0)
    );
\pbdata_tristate_oe_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \pbdata_tristate_oe[5]_i_1_n_0\,
      Q => \pbdata_tristate_oe_reg_n_0_[5]\,
      S => \^ss\(0)
    );
\pbdata_tristate_oe_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \pbdata_tristate_oe[6]_i_1_n_0\,
      Q => \pbdata_tristate_oe_reg_n_0_[6]\,
      S => \^ss\(0)
    );
\pbdata_tristate_oe_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \pbdata_tristate_oe[7]_i_1_n_0\,
      Q => \pbdata_tristate_oe_reg_n_0_[7]\,
      S => \^ss\(0)
    );
\pbdata_tristate_oe_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \pbdata_tristate_oe[8]_i_1_n_0\,
      Q => \pbdata_tristate_oe_reg_n_0_[8]\,
      S => \^ss\(0)
    );
\pbdata_tristate_oe_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \pbdata_tristate_oe[9]_i_1_n_0\,
      Q => \pbdata_tristate_oe_reg_n_0_[9]\,
      S => \^ss\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ParallelBusSlave_ver_0_0 is
  port (
    clk : in STD_LOGIC;
    pbclk : in STD_LOGIC;
    pbdata : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    pbce : in STD_LOGIC;
    pback : out STD_LOGIC;
    addressregister : out STD_LOGIC_VECTOR ( 7 downto 0 );
    datain : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dataready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_ParallelBusSlave_ver_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_ParallelBusSlave_ver_0_0 : entity is "design_1_ParallelBusSlave_ver_0_0,ParallelBusSlave_ver_2_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_ParallelBusSlave_ver_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_ParallelBusSlave_ver_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of design_1_ParallelBusSlave_ver_0_0 : entity is "ParallelBusSlave_ver_2_0,Vivado 2019.1";
end design_1_ParallelBusSlave_ver_0_0;

architecture STRUCTURE of design_1_ParallelBusSlave_ver_0_0 is
  signal U0_n_1 : STD_LOGIC;
  signal U0_n_13 : STD_LOGIC;
  signal U0_n_2 : STD_LOGIC;
  signal U0_n_4 : STD_LOGIC;
  signal pback_INST_0_i_1_n_0 : STD_LOGIC;
  signal \pbdata[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0";
begin
U0: entity work.design_1_ParallelBusSlave_ver_0_0_ParallelBusSlave_ver_2_0
     port map (
      E(0) => U0_n_4,
      \FSM_sequential_CommunicationState_reg[1]_0\ => U0_n_1,
      SS(0) => U0_n_2,
      addressregister(7 downto 0) => addressregister(7 downto 0),
      clk => clk,
      datain(15 downto 0) => datain(15 downto 0),
      dataready => dataready,
      pback => pback,
      pback_INST_0_i_1 => pback_INST_0_i_1_n_0,
      pbce => pbce,
      pbce_0 => U0_n_13,
      pbclk => pbclk,
      pbdata(15 downto 0) => pbdata(15 downto 0),
      pbdata_0_sp_1 => \pbdata[15]_INST_0_i_1_n_0\
    );
pback_INST_0_i_1: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => U0_n_1,
      Q => pback_INST_0_i_1_n_0,
      R => '0'
    );
\pbdata[15]_INST_0_i_1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => U0_n_4,
      D => U0_n_13,
      Q => \pbdata[15]_INST_0_i_1_n_0\,
      S => U0_n_2
    );
end STRUCTURE;
