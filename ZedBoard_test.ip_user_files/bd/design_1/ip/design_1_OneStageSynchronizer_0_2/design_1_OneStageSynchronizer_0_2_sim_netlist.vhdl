-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri Oct  9 15:46:19 2026
-- Host        : STAS-W10 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_OneStageSynchronizer_0_2 -prefix
--               design_1_OneStageSynchronizer_0_2_ design_1_OneStageSynchronizer_1_0_sim_netlist.vhdl
-- Design      : design_1_OneStageSynchronizer_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_OneStageSynchronizer_0_2_OneStageSynchronizerAndDigitalFilterSingle_ver_1_0 is
  port (
    sync_signal : out STD_LOGIC;
    async_signal : in STD_LOGIC;
    clk : in STD_LOGIC
  );
end design_1_OneStageSynchronizer_0_2_OneStageSynchronizerAndDigitalFilterSingle_ver_1_0;

architecture STRUCTURE of design_1_OneStageSynchronizer_0_2_OneStageSynchronizerAndDigitalFilterSingle_ver_1_0 is
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal latch : STD_LOGIC;
  signal \^sync_signal\ : STD_LOGIC;
  signal sync_signal_i_1_n_0 : STD_LOGIC;
  signal sync_stage1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of sync_signal_i_1 : label is "soft_lutpair0";
begin
  sync_signal <= \^sync_signal\;
\cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => latch,
      I2 => sync_stage1,
      O => \cnt[0]_i_1_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => latch,
      I3 => sync_stage1,
      O => \cnt[1]_i_1_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt[0]_i_1_n_0\,
      Q => \cnt_reg_n_0_[0]\,
      R => '0'
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt[1]_i_1_n_0\,
      Q => \cnt_reg_n_0_[1]\,
      R => '0'
    );
\latch_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sync_stage1,
      Q => latch,
      R => '0'
    );
sync_signal_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAA8AAA"
    )
        port map (
      I0 => \^sync_signal\,
      I1 => latch,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \cnt_reg_n_0_[0]\,
      I4 => sync_stage1,
      O => sync_signal_i_1_n_0
    );
sync_signal_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sync_signal_i_1_n_0,
      Q => \^sync_signal\,
      R => '0'
    );
sync_stage1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => async_signal,
      Q => sync_stage1,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_OneStageSynchronizer_0_2 is
  port (
    clk : in STD_LOGIC;
    async_signal : in STD_LOGIC;
    sync_signal : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_OneStageSynchronizer_0_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_OneStageSynchronizer_0_2 : entity is "design_1_OneStageSynchronizer_1_0,OneStageSynchronizerAndDigitalFilterSingle_ver_1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_OneStageSynchronizer_0_2 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_OneStageSynchronizer_0_2 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of design_1_OneStageSynchronizer_0_2 : entity is "OneStageSynchronizerAndDigitalFilterSingle_ver_1_0,Vivado 2019.1";
end design_1_OneStageSynchronizer_0_2;

architecture STRUCTURE of design_1_OneStageSynchronizer_0_2 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0";
begin
U0: entity work.design_1_OneStageSynchronizer_0_2_OneStageSynchronizerAndDigitalFilterSingle_ver_1_0
     port map (
      async_signal => async_signal,
      clk => clk,
      sync_signal => sync_signal
    );
end STRUCTURE;
