-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri Oct  9 15:46:19 2026
-- Host        : STAS-W10 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top design_1_OneStageSynchronizer_0_2 -prefix
--               design_1_OneStageSynchronizer_0_2_ design_1_OneStageSynchronizer_1_0_stub.vhdl
-- Design      : design_1_OneStageSynchronizer_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_OneStageSynchronizer_0_2 is
  Port ( 
    clk : in STD_LOGIC;
    async_signal : in STD_LOGIC;
    sync_signal : out STD_LOGIC
  );

end design_1_OneStageSynchronizer_0_2;

architecture stub of design_1_OneStageSynchronizer_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,async_signal,sync_signal";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "OneStageSynchronizerAndDigitalFilterSingle_ver_1_0,Vivado 2019.1";
begin
end;
