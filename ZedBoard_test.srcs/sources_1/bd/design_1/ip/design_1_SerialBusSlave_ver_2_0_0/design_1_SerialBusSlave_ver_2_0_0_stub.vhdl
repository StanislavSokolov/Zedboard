-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri Oct  9 13:56:21 2026
-- Host        : STAS-W10 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/GITEA/GitHub/ES/Zedboard/ZedBoard_test.srcs/sources_1/bd/design_1/ip/design_1_SerialBusSlave_ver_2_0_0/design_1_SerialBusSlave_ver_2_0_0_stub.vhdl
-- Design      : design_1_SerialBusSlave_ver_2_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_SerialBusSlave_ver_2_0_0 is
  Port ( 
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

end design_1_SerialBusSlave_ver_2_0_0;

architecture stub of design_1_SerialBusSlave_ver_2_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,sbclk,sbdatain,sbdataout,addressregister[7:0],dataout[15:0],datain[15:0],rw,dataready";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "SerialBusSlave_ver_2_0,Vivado 2019.1";
begin
end;
