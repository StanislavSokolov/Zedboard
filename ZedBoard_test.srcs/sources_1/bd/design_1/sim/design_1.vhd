--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
--Date        : Fri Oct 23 16:45:57 2026
--Host        : STAS-W10 running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Invertor_imp_6Q0FNV is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TK1_acknowledges : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TK1_ackpr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TK1_ackpren : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TK1_acktime : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TK1_breaken : in STD_LOGIC;
    TK1_currentpr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TK1_currentpren : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TK1_deadtime : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TK1_keysen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TK1_keysout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TK1_linepr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TK1_linepren : in STD_LOGIC;
    TK1_mintime : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TK1_mintimepr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TK1_mintimepren : in STD_LOGIC;
    TK1_ready : in STD_LOGIC;
    TK1_reset : in STD_LOGIC;
    TK1_softshutdownen : in STD_LOGIC;
    TK1_softshutdownpr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TK1_softshutdowntimer : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TK1_timeerror : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TK2_acknowledges : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TK2_ackpr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TK2_ackpren : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TK2_acktime : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TK2_breaken : in STD_LOGIC;
    TK2_currentpr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TK2_currentpren : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TK2_deadtime : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TK2_keysen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TK2_keysout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TK2_linepr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TK2_linepren : in STD_LOGIC;
    TK2_mintime : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TK2_mintimepr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TK2_mintimepren : in STD_LOGIC;
    TK2_ready : in STD_LOGIC;
    TK2_reset : in STD_LOGIC;
    TK2_softshutdownen : in STD_LOGIC;
    TK2_softshutdownpr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TK2_softshutdowntimer : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TK2_timeerror : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TK3_acknowledges : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TK3_ackpr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TK3_ackpren : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TK3_acktime : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TK3_breaken : in STD_LOGIC;
    TK3_currentpr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TK3_currentpren : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TK3_deadtime : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TK3_keysen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TK3_keysout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TK3_linepr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TK3_linepren : in STD_LOGIC;
    TK3_mintime : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TK3_mintimepr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TK3_mintimepren : in STD_LOGIC;
    TK3_ready : in STD_LOGIC;
    TK3_reset : in STD_LOGIC;
    TK3_softshutdownen : in STD_LOGIC;
    TK3_softshutdownpr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TK3_softshutdowntimer : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TK3_timeerror : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TK_acknowledges : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TK_ackpr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TK_ackpren : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TK_acktime : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TK_breaken : in STD_LOGIC;
    TK_currentpr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TK_currentpren : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TK_deadtime : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TK_keysen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TK_keysout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TK_linepr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TK_linepren : in STD_LOGIC;
    TK_mintime : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TK_mintimepr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TK_mintimepren : in STD_LOGIC;
    TK_ready : in STD_LOGIC;
    TK_reset : in STD_LOGIC;
    TK_softshutdownen : in STD_LOGIC;
    TK_softshutdownpr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TK_softshutdowntimer : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TK_timeerror : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    er0in_0 : in STD_LOGIC
  );
end Invertor_imp_6Q0FNV;

architecture STRUCTURE of Invertor_imp_6Q0FNV is
  component design_1_TransistorKeys_0_1 is
  port (
    acknowledges : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ackout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ackpr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ackpren : in STD_LOGIC_VECTOR ( 7 downto 0 );
    acktime : in STD_LOGIC_VECTOR ( 7 downto 0 );
    breaken : in STD_LOGIC;
    clk : in STD_LOGIC;
    currentpr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    currentpren : in STD_LOGIC_VECTOR ( 7 downto 0 );
    deadtime : in STD_LOGIC_VECTOR ( 7 downto 0 );
    er0in : in STD_LOGIC;
    keysel_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    keysel_1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    keysen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    keysout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    linepr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    linepren : in STD_LOGIC;
    mintime : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mintimepr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mintimepren : in STD_LOGIC;
    ob_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ob_1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ready : in STD_LOGIC;
    reset : in STD_LOGIC;
    softshutdownen : in STD_LOGIC;
    softshutdownpr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    softshutdowntimer : in STD_LOGIC_VECTOR ( 15 downto 0 );
    timeerror : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_TransistorKeys_0_1;
  component design_1_TransistorKeys_0_2 is
  port (
    acknowledges : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ackout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ackpr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ackpren : in STD_LOGIC_VECTOR ( 7 downto 0 );
    acktime : in STD_LOGIC_VECTOR ( 7 downto 0 );
    breaken : in STD_LOGIC;
    clk : in STD_LOGIC;
    currentpr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    currentpren : in STD_LOGIC_VECTOR ( 7 downto 0 );
    deadtime : in STD_LOGIC_VECTOR ( 7 downto 0 );
    er0in : in STD_LOGIC;
    keysel_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    keysel_1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    keysen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    keysout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    linepr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    linepren : in STD_LOGIC;
    mintime : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mintimepr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mintimepren : in STD_LOGIC;
    ob_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ob_1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ready : in STD_LOGIC;
    reset : in STD_LOGIC;
    softshutdownen : in STD_LOGIC;
    softshutdownpr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    softshutdowntimer : in STD_LOGIC_VECTOR ( 15 downto 0 );
    timeerror : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_TransistorKeys_0_2;
  component design_1_OneStageSynchronizer_1_0 is
  port (
    clk : in STD_LOGIC;
    async_signal : in STD_LOGIC;
    sync_signal : out STD_LOGIC
  );
  end component design_1_OneStageSynchronizer_1_0;
  component design_1_TransistorKeys_0_3 is
  port (
    acknowledges : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ackout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ackpr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ackpren : in STD_LOGIC_VECTOR ( 7 downto 0 );
    acktime : in STD_LOGIC_VECTOR ( 7 downto 0 );
    breaken : in STD_LOGIC;
    clk : in STD_LOGIC;
    currentpr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    currentpren : in STD_LOGIC_VECTOR ( 7 downto 0 );
    deadtime : in STD_LOGIC_VECTOR ( 7 downto 0 );
    er0in : in STD_LOGIC;
    keysel_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    keysel_1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    keysen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    keysout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    linepr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    linepren : in STD_LOGIC;
    mintime : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mintimepr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mintimepren : in STD_LOGIC;
    ob_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ob_1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ready : in STD_LOGIC;
    reset : in STD_LOGIC;
    softshutdownen : in STD_LOGIC;
    softshutdownpr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    softshutdowntimer : in STD_LOGIC_VECTOR ( 15 downto 0 );
    timeerror : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_TransistorKeys_0_3;
  component design_1_xlslice_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_xlslice_0_1;
  component design_1_xlslice_0_2 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_xlslice_0_2;
  component design_1_xlslice_2_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_xlslice_2_0;
  component design_1_xlslice_3_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_xlslice_3_0;
  component design_1_xlslice_4_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_xlslice_4_0;
  component design_1_xlslice_5_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_xlslice_5_0;
  component design_1_xlslice_6_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_xlslice_6_0;
  component design_1_TransistorKeys_0_0 is
  port (
    acknowledges : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ackout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ackpr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ackpren : in STD_LOGIC_VECTOR ( 7 downto 0 );
    acktime : in STD_LOGIC_VECTOR ( 7 downto 0 );
    breaken : in STD_LOGIC;
    clk : in STD_LOGIC;
    currentpr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    currentpren : in STD_LOGIC_VECTOR ( 7 downto 0 );
    deadtime : in STD_LOGIC_VECTOR ( 7 downto 0 );
    er0in : in STD_LOGIC;
    keysel_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    keysel_1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    keysen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    keysout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    linepr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    linepren : in STD_LOGIC;
    mintime : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mintimepr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mintimepren : in STD_LOGIC;
    ob_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ob_1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ready : in STD_LOGIC;
    reset : in STD_LOGIC;
    softshutdownen : in STD_LOGIC;
    softshutdownpr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    softshutdowntimer : in STD_LOGIC_VECTOR ( 15 downto 0 );
    timeerror : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_TransistorKeys_0_0;
  component design_1_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_xlslice_0_0;
  signal IP_AXI_ManagerSerial_0_TK5_ackTime : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_acknowledges : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_ackpr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_ackpren : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_breaken : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK5_currentpr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_currentpren : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_deadTime : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_keysen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_keysout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_linepr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_linepren : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK5_minTime : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_mintimepr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_mintimepren : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK5_ready : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK5_reset : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK5_softShutdownTimer : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_softshutdownen : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK5_softshutdownpr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_timeerror : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_ackTime : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_acknowledges : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_ackpr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_ackpren : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_breaken : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK6_currentpr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_currentpren : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_deadTime : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_keysen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_keysout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_linepr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_linepren : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK6_minTime : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_mintimepr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_mintimepren : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK6_ready : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK6_reset : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK6_softShutdownTimer : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_softshutdownen : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK6_softshutdownpr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_timeerror : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_ackTime : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_acknowledges : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_ackpr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_ackpren : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_breaken : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK9_currentpr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_currentpren : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_deadTime : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_keysen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_keysout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_linepr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_linepren : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK9_minTime : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_mintimepr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_mintimepren : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK9_ready : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK9_reset : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK9_softShutdownTimer : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_softshutdownen : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK9_softshutdownpr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_timeerror : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_ackTime : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_acknowledges : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_ackpr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_ackpren : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_breaken : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TKA_currentpr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_currentpren : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_deadTime : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_keysen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_keysout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_linepr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_linepren : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TKA_minTime : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_mintimepr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_mintimepren : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TKA_ready : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TKA_reset : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TKA_softShutdownTimer : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_softshutdownen : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TKA_softshutdownpr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_timeerror : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal OneStageSynchronizer_4_sync_signal : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal OneStageSynchronizer_5_sync_signal : STD_LOGIC;
  signal er0in_0_1 : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xlslice_2_Dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xlslice_3_Dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xlslice_4_Dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xlslice_5_Dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xlslice_6_Dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xlslice_7_Dout : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  IP_AXI_ManagerSerial_0_TK5_ackTime(7 downto 0) <= TK3_acktime(7 downto 0);
  IP_AXI_ManagerSerial_0_TK5_ackpren(7 downto 0) <= TK3_ackpren(7 downto 0);
  IP_AXI_ManagerSerial_0_TK5_breaken <= TK3_breaken;
  IP_AXI_ManagerSerial_0_TK5_currentpren(7 downto 0) <= TK3_currentpren(7 downto 0);
  IP_AXI_ManagerSerial_0_TK5_deadTime(7 downto 0) <= TK3_deadtime(7 downto 0);
  IP_AXI_ManagerSerial_0_TK5_keysen(7 downto 0) <= TK3_keysen(7 downto 0);
  IP_AXI_ManagerSerial_0_TK5_linepren <= TK3_linepren;
  IP_AXI_ManagerSerial_0_TK5_minTime(7 downto 0) <= TK3_mintime(7 downto 0);
  IP_AXI_ManagerSerial_0_TK5_mintimepren <= TK3_mintimepren;
  IP_AXI_ManagerSerial_0_TK5_ready <= TK3_ready;
  IP_AXI_ManagerSerial_0_TK5_reset <= TK3_reset;
  IP_AXI_ManagerSerial_0_TK5_softShutdownTimer(15 downto 0) <= TK3_softshutdowntimer(15 downto 0);
  IP_AXI_ManagerSerial_0_TK5_softshutdownen <= TK3_softshutdownen;
  IP_AXI_ManagerSerial_0_TK6_ackTime(7 downto 0) <= TK_acktime(7 downto 0);
  IP_AXI_ManagerSerial_0_TK6_ackpren(7 downto 0) <= TK_ackpren(7 downto 0);
  IP_AXI_ManagerSerial_0_TK6_breaken <= TK_breaken;
  IP_AXI_ManagerSerial_0_TK6_currentpren(7 downto 0) <= TK_currentpren(7 downto 0);
  IP_AXI_ManagerSerial_0_TK6_deadTime(7 downto 0) <= TK_deadtime(7 downto 0);
  IP_AXI_ManagerSerial_0_TK6_keysen(7 downto 0) <= TK_keysen(7 downto 0);
  IP_AXI_ManagerSerial_0_TK6_linepren <= TK_linepren;
  IP_AXI_ManagerSerial_0_TK6_minTime(7 downto 0) <= TK_mintime(7 downto 0);
  IP_AXI_ManagerSerial_0_TK6_mintimepren <= TK_mintimepren;
  IP_AXI_ManagerSerial_0_TK6_ready <= TK_ready;
  IP_AXI_ManagerSerial_0_TK6_reset <= TK_reset;
  IP_AXI_ManagerSerial_0_TK6_softShutdownTimer(15 downto 0) <= TK_softshutdowntimer(15 downto 0);
  IP_AXI_ManagerSerial_0_TK6_softshutdownen <= TK_softshutdownen;
  IP_AXI_ManagerSerial_0_TK9_ackTime(7 downto 0) <= TK1_acktime(7 downto 0);
  IP_AXI_ManagerSerial_0_TK9_ackpren(7 downto 0) <= TK1_ackpren(7 downto 0);
  IP_AXI_ManagerSerial_0_TK9_breaken <= TK1_breaken;
  IP_AXI_ManagerSerial_0_TK9_currentpren(7 downto 0) <= TK1_currentpren(7 downto 0);
  IP_AXI_ManagerSerial_0_TK9_deadTime(7 downto 0) <= TK1_deadtime(7 downto 0);
  IP_AXI_ManagerSerial_0_TK9_keysen(7 downto 0) <= TK1_keysen(7 downto 0);
  IP_AXI_ManagerSerial_0_TK9_linepren <= TK1_linepren;
  IP_AXI_ManagerSerial_0_TK9_minTime(7 downto 0) <= TK1_mintime(7 downto 0);
  IP_AXI_ManagerSerial_0_TK9_mintimepren <= TK1_mintimepren;
  IP_AXI_ManagerSerial_0_TK9_ready <= TK1_ready;
  IP_AXI_ManagerSerial_0_TK9_reset <= TK1_reset;
  IP_AXI_ManagerSerial_0_TK9_softShutdownTimer(15 downto 0) <= TK1_softshutdowntimer(15 downto 0);
  IP_AXI_ManagerSerial_0_TK9_softshutdownen <= TK1_softshutdownen;
  IP_AXI_ManagerSerial_0_TKA_ackTime(7 downto 0) <= TK2_acktime(7 downto 0);
  IP_AXI_ManagerSerial_0_TKA_ackpren(7 downto 0) <= TK2_ackpren(7 downto 0);
  IP_AXI_ManagerSerial_0_TKA_breaken <= TK2_breaken;
  IP_AXI_ManagerSerial_0_TKA_currentpren(7 downto 0) <= TK2_currentpren(7 downto 0);
  IP_AXI_ManagerSerial_0_TKA_deadTime(7 downto 0) <= TK2_deadtime(7 downto 0);
  IP_AXI_ManagerSerial_0_TKA_keysen(7 downto 0) <= TK2_keysen(7 downto 0);
  IP_AXI_ManagerSerial_0_TKA_linepren <= TK2_linepren;
  IP_AXI_ManagerSerial_0_TKA_minTime(7 downto 0) <= TK2_mintime(7 downto 0);
  IP_AXI_ManagerSerial_0_TKA_mintimepren <= TK2_mintimepren;
  IP_AXI_ManagerSerial_0_TKA_ready <= TK2_ready;
  IP_AXI_ManagerSerial_0_TKA_reset <= TK2_reset;
  IP_AXI_ManagerSerial_0_TKA_softShutdownTimer(15 downto 0) <= TK2_softshutdowntimer(15 downto 0);
  IP_AXI_ManagerSerial_0_TKA_softshutdownen <= TK2_softshutdownen;
  OneStageSynchronizer_4_sync_signal(15 downto 0) <= Din(15 downto 0);
  TK1_acknowledges(7 downto 0) <= IP_AXI_ManagerSerial_0_TK9_acknowledges(7 downto 0);
  TK1_ackpr(7 downto 0) <= IP_AXI_ManagerSerial_0_TK9_ackpr(7 downto 0);
  TK1_currentpr(7 downto 0) <= IP_AXI_ManagerSerial_0_TK9_currentpr(7 downto 0);
  TK1_keysout(7 downto 0) <= IP_AXI_ManagerSerial_0_TK9_keysout(7 downto 0);
  TK1_linepr(1 downto 0) <= IP_AXI_ManagerSerial_0_TK9_linepr(1 downto 0);
  TK1_mintimepr(1 downto 0) <= IP_AXI_ManagerSerial_0_TK9_mintimepr(1 downto 0);
  TK1_softshutdownpr(1 downto 0) <= IP_AXI_ManagerSerial_0_TK9_softshutdownpr(1 downto 0);
  TK1_timeerror(15 downto 0) <= IP_AXI_ManagerSerial_0_TK9_timeerror(15 downto 0);
  TK2_acknowledges(7 downto 0) <= IP_AXI_ManagerSerial_0_TKA_acknowledges(7 downto 0);
  TK2_ackpr(7 downto 0) <= IP_AXI_ManagerSerial_0_TKA_ackpr(7 downto 0);
  TK2_currentpr(7 downto 0) <= IP_AXI_ManagerSerial_0_TKA_currentpr(7 downto 0);
  TK2_keysout(7 downto 0) <= IP_AXI_ManagerSerial_0_TKA_keysout(7 downto 0);
  TK2_linepr(1 downto 0) <= IP_AXI_ManagerSerial_0_TKA_linepr(1 downto 0);
  TK2_mintimepr(1 downto 0) <= IP_AXI_ManagerSerial_0_TKA_mintimepr(1 downto 0);
  TK2_softshutdownpr(1 downto 0) <= IP_AXI_ManagerSerial_0_TKA_softshutdownpr(1 downto 0);
  TK2_timeerror(15 downto 0) <= IP_AXI_ManagerSerial_0_TKA_timeerror(15 downto 0);
  TK3_acknowledges(7 downto 0) <= IP_AXI_ManagerSerial_0_TK5_acknowledges(7 downto 0);
  TK3_ackpr(7 downto 0) <= IP_AXI_ManagerSerial_0_TK5_ackpr(7 downto 0);
  TK3_currentpr(7 downto 0) <= IP_AXI_ManagerSerial_0_TK5_currentpr(7 downto 0);
  TK3_keysout(7 downto 0) <= IP_AXI_ManagerSerial_0_TK5_keysout(7 downto 0);
  TK3_linepr(1 downto 0) <= IP_AXI_ManagerSerial_0_TK5_linepr(1 downto 0);
  TK3_mintimepr(1 downto 0) <= IP_AXI_ManagerSerial_0_TK5_mintimepr(1 downto 0);
  TK3_softshutdownpr(1 downto 0) <= IP_AXI_ManagerSerial_0_TK5_softshutdownpr(1 downto 0);
  TK3_timeerror(15 downto 0) <= IP_AXI_ManagerSerial_0_TK5_timeerror(15 downto 0);
  TK_acknowledges(7 downto 0) <= IP_AXI_ManagerSerial_0_TK6_acknowledges(7 downto 0);
  TK_ackpr(7 downto 0) <= IP_AXI_ManagerSerial_0_TK6_ackpr(7 downto 0);
  TK_currentpr(7 downto 0) <= IP_AXI_ManagerSerial_0_TK6_currentpr(7 downto 0);
  TK_keysout(7 downto 0) <= IP_AXI_ManagerSerial_0_TK6_keysout(7 downto 0);
  TK_linepr(1 downto 0) <= IP_AXI_ManagerSerial_0_TK6_linepr(1 downto 0);
  TK_mintimepr(1 downto 0) <= IP_AXI_ManagerSerial_0_TK6_mintimepr(1 downto 0);
  TK_softshutdownpr(1 downto 0) <= IP_AXI_ManagerSerial_0_TK6_softshutdownpr(1 downto 0);
  TK_timeerror(15 downto 0) <= IP_AXI_ManagerSerial_0_TK6_timeerror(15 downto 0);
  er0in_0_1 <= er0in_0;
  processing_system7_0_FCLK_CLK0 <= clk;
OneStageSynchronizer_5: component design_1_OneStageSynchronizer_1_0
     port map (
      async_signal => er0in_0_1,
      clk => processing_system7_0_FCLK_CLK0,
      sync_signal => OneStageSynchronizer_5_sync_signal
    );
TransistorKeys_0: component design_1_TransistorKeys_0_0
     port map (
      acknowledges(7 downto 0) => B"00000000",
      ackout(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_acknowledges(7 downto 0),
      ackpr(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_ackpr(7 downto 0),
      ackpren(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_ackpren(7 downto 0),
      acktime(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_ackTime(7 downto 0),
      breaken => IP_AXI_ManagerSerial_0_TK5_breaken,
      clk => processing_system7_0_FCLK_CLK0,
      currentpr(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_currentpr(7 downto 0),
      currentpren(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_currentpren(7 downto 0),
      deadtime(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_deadTime(7 downto 0),
      er0in => OneStageSynchronizer_5_sync_signal,
      keysel_0(1 downto 0) => xlslice_0_Dout(1 downto 0),
      keysel_1(1 downto 0) => xlslice_1_Dout(1 downto 0),
      keysen(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_keysen(7 downto 0),
      keysout(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_keysout(7 downto 0),
      linepr(1 downto 0) => IP_AXI_ManagerSerial_0_TK5_linepr(1 downto 0),
      linepren => IP_AXI_ManagerSerial_0_TK5_linepren,
      mintime(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_minTime(7 downto 0),
      mintimepr(1 downto 0) => IP_AXI_ManagerSerial_0_TK5_mintimepr(1 downto 0),
      mintimepren => IP_AXI_ManagerSerial_0_TK5_mintimepren,
      ob_0(1 downto 0) => B"00",
      ob_1(1 downto 0) => B"00",
      ready => IP_AXI_ManagerSerial_0_TK5_ready,
      reset => IP_AXI_ManagerSerial_0_TK5_reset,
      softshutdownen => IP_AXI_ManagerSerial_0_TK5_softshutdownen,
      softshutdownpr(1 downto 0) => IP_AXI_ManagerSerial_0_TK5_softshutdownpr(1 downto 0),
      softshutdowntimer(15 downto 0) => IP_AXI_ManagerSerial_0_TK5_softShutdownTimer(15 downto 0),
      timeerror(15 downto 0) => IP_AXI_ManagerSerial_0_TK5_timeerror(15 downto 0)
    );
TransistorKeys_1: component design_1_TransistorKeys_0_1
     port map (
      acknowledges(7 downto 0) => B"00000000",
      ackout(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_acknowledges(7 downto 0),
      ackpr(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_ackpr(7 downto 0),
      ackpren(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_ackpren(7 downto 0),
      acktime(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_ackTime(7 downto 0),
      breaken => IP_AXI_ManagerSerial_0_TK6_breaken,
      clk => processing_system7_0_FCLK_CLK0,
      currentpr(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_currentpr(7 downto 0),
      currentpren(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_currentpren(7 downto 0),
      deadtime(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_deadTime(7 downto 0),
      er0in => OneStageSynchronizer_5_sync_signal,
      keysel_0(1 downto 0) => xlslice_2_Dout(1 downto 0),
      keysel_1(1 downto 0) => xlslice_3_Dout(1 downto 0),
      keysen(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_keysen(7 downto 0),
      keysout(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_keysout(7 downto 0),
      linepr(1 downto 0) => IP_AXI_ManagerSerial_0_TK6_linepr(1 downto 0),
      linepren => IP_AXI_ManagerSerial_0_TK6_linepren,
      mintime(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_minTime(7 downto 0),
      mintimepr(1 downto 0) => IP_AXI_ManagerSerial_0_TK6_mintimepr(1 downto 0),
      mintimepren => IP_AXI_ManagerSerial_0_TK6_mintimepren,
      ob_0(1 downto 0) => B"00",
      ob_1(1 downto 0) => B"00",
      ready => IP_AXI_ManagerSerial_0_TK6_ready,
      reset => IP_AXI_ManagerSerial_0_TK6_reset,
      softshutdownen => IP_AXI_ManagerSerial_0_TK6_softshutdownen,
      softshutdownpr(1 downto 0) => IP_AXI_ManagerSerial_0_TK6_softshutdownpr(1 downto 0),
      softshutdowntimer(15 downto 0) => IP_AXI_ManagerSerial_0_TK6_softShutdownTimer(15 downto 0),
      timeerror(15 downto 0) => IP_AXI_ManagerSerial_0_TK6_timeerror(15 downto 0)
    );
TransistorKeys_2: component design_1_TransistorKeys_0_2
     port map (
      acknowledges(7 downto 0) => B"00000000",
      ackout(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_acknowledges(7 downto 0),
      ackpr(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_ackpr(7 downto 0),
      ackpren(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_ackpren(7 downto 0),
      acktime(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_ackTime(7 downto 0),
      breaken => IP_AXI_ManagerSerial_0_TK9_breaken,
      clk => processing_system7_0_FCLK_CLK0,
      currentpr(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_currentpr(7 downto 0),
      currentpren(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_currentpren(7 downto 0),
      deadtime(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_deadTime(7 downto 0),
      er0in => OneStageSynchronizer_5_sync_signal,
      keysel_0(1 downto 0) => xlslice_6_Dout(1 downto 0),
      keysel_1(1 downto 0) => xlslice_7_Dout(1 downto 0),
      keysen(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_keysen(7 downto 0),
      keysout(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_keysout(7 downto 0),
      linepr(1 downto 0) => IP_AXI_ManagerSerial_0_TK9_linepr(1 downto 0),
      linepren => IP_AXI_ManagerSerial_0_TK9_linepren,
      mintime(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_minTime(7 downto 0),
      mintimepr(1 downto 0) => IP_AXI_ManagerSerial_0_TK9_mintimepr(1 downto 0),
      mintimepren => IP_AXI_ManagerSerial_0_TK9_mintimepren,
      ob_0(1 downto 0) => B"00",
      ob_1(1 downto 0) => B"00",
      ready => IP_AXI_ManagerSerial_0_TK9_ready,
      reset => IP_AXI_ManagerSerial_0_TK9_reset,
      softshutdownen => IP_AXI_ManagerSerial_0_TK9_softshutdownen,
      softshutdownpr(1 downto 0) => IP_AXI_ManagerSerial_0_TK9_softshutdownpr(1 downto 0),
      softshutdowntimer(15 downto 0) => IP_AXI_ManagerSerial_0_TK9_softShutdownTimer(15 downto 0),
      timeerror(15 downto 0) => IP_AXI_ManagerSerial_0_TK9_timeerror(15 downto 0)
    );
TransistorKeys_3: component design_1_TransistorKeys_0_3
     port map (
      acknowledges(7 downto 0) => B"00000000",
      ackout(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_acknowledges(7 downto 0),
      ackpr(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_ackpr(7 downto 0),
      ackpren(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_ackpren(7 downto 0),
      acktime(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_ackTime(7 downto 0),
      breaken => IP_AXI_ManagerSerial_0_TKA_breaken,
      clk => processing_system7_0_FCLK_CLK0,
      currentpr(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_currentpr(7 downto 0),
      currentpren(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_currentpren(7 downto 0),
      deadtime(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_deadTime(7 downto 0),
      er0in => OneStageSynchronizer_5_sync_signal,
      keysel_0(1 downto 0) => xlslice_4_Dout(1 downto 0),
      keysel_1(1 downto 0) => xlslice_5_Dout(1 downto 0),
      keysen(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_keysen(7 downto 0),
      keysout(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_keysout(7 downto 0),
      linepr(1 downto 0) => IP_AXI_ManagerSerial_0_TKA_linepr(1 downto 0),
      linepren => IP_AXI_ManagerSerial_0_TKA_linepren,
      mintime(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_minTime(7 downto 0),
      mintimepr(1 downto 0) => IP_AXI_ManagerSerial_0_TKA_mintimepr(1 downto 0),
      mintimepren => IP_AXI_ManagerSerial_0_TKA_mintimepren,
      ob_0(1 downto 0) => B"00",
      ob_1(1 downto 0) => B"00",
      ready => IP_AXI_ManagerSerial_0_TKA_ready,
      reset => IP_AXI_ManagerSerial_0_TKA_reset,
      softshutdownen => IP_AXI_ManagerSerial_0_TKA_softshutdownen,
      softshutdownpr(1 downto 0) => IP_AXI_ManagerSerial_0_TKA_softshutdownpr(1 downto 0),
      softshutdowntimer(15 downto 0) => IP_AXI_ManagerSerial_0_TKA_softShutdownTimer(15 downto 0),
      timeerror(15 downto 0) => IP_AXI_ManagerSerial_0_TKA_timeerror(15 downto 0)
    );
xlslice_0: component design_1_xlslice_0_0
     port map (
      Din(15 downto 0) => OneStageSynchronizer_4_sync_signal(15 downto 0),
      Dout(1 downto 0) => xlslice_0_Dout(1 downto 0)
    );
xlslice_1: component design_1_xlslice_0_1
     port map (
      Din(15 downto 0) => OneStageSynchronizer_4_sync_signal(15 downto 0),
      Dout(1 downto 0) => xlslice_1_Dout(1 downto 0)
    );
xlslice_2: component design_1_xlslice_0_2
     port map (
      Din(15 downto 0) => OneStageSynchronizer_4_sync_signal(15 downto 0),
      Dout(1 downto 0) => xlslice_2_Dout(1 downto 0)
    );
xlslice_3: component design_1_xlslice_2_0
     port map (
      Din(15 downto 0) => OneStageSynchronizer_4_sync_signal(15 downto 0),
      Dout(1 downto 0) => xlslice_3_Dout(1 downto 0)
    );
xlslice_4: component design_1_xlslice_3_0
     port map (
      Din(15 downto 0) => OneStageSynchronizer_4_sync_signal(15 downto 0),
      Dout(1 downto 0) => xlslice_4_Dout(1 downto 0)
    );
xlslice_5: component design_1_xlslice_4_0
     port map (
      Din(15 downto 0) => OneStageSynchronizer_4_sync_signal(15 downto 0),
      Dout(1 downto 0) => xlslice_5_Dout(1 downto 0)
    );
xlslice_6: component design_1_xlslice_5_0
     port map (
      Din(15 downto 0) => OneStageSynchronizer_4_sync_signal(15 downto 0),
      Dout(1 downto 0) => xlslice_6_Dout(1 downto 0)
    );
xlslice_7: component design_1_xlslice_6_0
     port map (
      Din(15 downto 0) => OneStageSynchronizer_4_sync_signal(15 downto 0),
      Dout(1 downto 0) => xlslice_7_Dout(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ParallelBusSlave_imp_AOEBEC is
  port (
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    clk : in STD_LOGIC;
    pback_0 : out STD_LOGIC;
    pbce_0 : in STD_LOGIC;
    pbclk_0 : in STD_LOGIC;
    pbdata_0 : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
end ParallelBusSlave_imp_AOEBEC;

architecture STRUCTURE of ParallelBusSlave_imp_AOEBEC is
  component design_1_ParallelBusSlave_ver_0_0 is
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
  end component design_1_ParallelBusSlave_ver_0_0;
  component design_1_IP_AXI_ManagerParall_0_0 is
  port (
    clk : in STD_LOGIC;
    addressregister : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dataout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dataready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  end component design_1_IP_AXI_ManagerParall_0_0;
  component design_1_OneStageSynchronizer_2_0 is
  port (
    clk : in STD_LOGIC;
    async_signal : in STD_LOGIC;
    sync_signal : out STD_LOGIC
  );
  end component design_1_OneStageSynchronizer_2_0;
  component design_1_OneStageSynchronizer_0_5 is
  port (
    clk : in STD_LOGIC;
    async_signal : in STD_LOGIC;
    sync_signal : out STD_LOGIC
  );
  end component design_1_OneStageSynchronizer_0_5;
  signal IP_AXI_ManagerParall_0_dataout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Net : STD_LOGIC;
  signal Net1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal OneStageSynchronizer_2_sync_signal : STD_LOGIC;
  signal OneStageSynchronizer_3_sync_signal : STD_LOGIC;
  signal ParallelBusSlave_ver_0_addressregister : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ParallelBusSlave_ver_0_dataready : STD_LOGIC;
  signal ParallelBusSlave_ver_0_pback : STD_LOGIC;
  signal pbce_0_1 : STD_LOGIC;
  signal pbclk_0_1 : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_WVALID : STD_LOGIC;
  signal rst_ps7_0_100M_peripheral_aresetn : STD_LOGIC;
begin
  Net <= clk;
  S00_AXI_arready <= ps7_0_axi_periph_M03_AXI_ARREADY;
  S00_AXI_awready <= ps7_0_axi_periph_M03_AXI_AWREADY;
  S00_AXI_bresp(1 downto 0) <= ps7_0_axi_periph_M03_AXI_BRESP(1 downto 0);
  S00_AXI_bvalid <= ps7_0_axi_periph_M03_AXI_BVALID;
  S00_AXI_rdata(31 downto 0) <= ps7_0_axi_periph_M03_AXI_RDATA(31 downto 0);
  S00_AXI_rresp(1 downto 0) <= ps7_0_axi_periph_M03_AXI_RRESP(1 downto 0);
  S00_AXI_rvalid <= ps7_0_axi_periph_M03_AXI_RVALID;
  S00_AXI_wready <= ps7_0_axi_periph_M03_AXI_WREADY;
  pback_0 <= ParallelBusSlave_ver_0_pback;
  pbce_0_1 <= pbce_0;
  pbclk_0_1 <= pbclk_0;
  processing_system7_0_FCLK_CLK0 <= s00_axi_aclk;
  ps7_0_axi_periph_M03_AXI_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  ps7_0_axi_periph_M03_AXI_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  ps7_0_axi_periph_M03_AXI_ARVALID <= S00_AXI_arvalid;
  ps7_0_axi_periph_M03_AXI_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  ps7_0_axi_periph_M03_AXI_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  ps7_0_axi_periph_M03_AXI_AWVALID <= S00_AXI_awvalid;
  ps7_0_axi_periph_M03_AXI_BREADY <= S00_AXI_bready;
  ps7_0_axi_periph_M03_AXI_RREADY <= S00_AXI_rready;
  ps7_0_axi_periph_M03_AXI_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  ps7_0_axi_periph_M03_AXI_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  ps7_0_axi_periph_M03_AXI_WVALID <= S00_AXI_wvalid;
  rst_ps7_0_100M_peripheral_aresetn <= s00_axi_aresetn;
IP_AXI_ManagerParall_0: component design_1_IP_AXI_ManagerParall_0_0
     port map (
      addressregister(7 downto 0) => ParallelBusSlave_ver_0_addressregister(7 downto 0),
      clk => Net,
      dataout(15 downto 0) => IP_AXI_ManagerParall_0_dataout(15 downto 0),
      dataready => ParallelBusSlave_ver_0_dataready,
      s00_axi_aclk => processing_system7_0_FCLK_CLK0,
      s00_axi_araddr(9 downto 0) => ps7_0_axi_periph_M03_AXI_ARADDR(9 downto 0),
      s00_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn,
      s00_axi_arprot(2 downto 0) => ps7_0_axi_periph_M03_AXI_ARPROT(2 downto 0),
      s00_axi_arready => ps7_0_axi_periph_M03_AXI_ARREADY,
      s00_axi_arvalid => ps7_0_axi_periph_M03_AXI_ARVALID,
      s00_axi_awaddr(9 downto 0) => ps7_0_axi_periph_M03_AXI_AWADDR(9 downto 0),
      s00_axi_awprot(2 downto 0) => ps7_0_axi_periph_M03_AXI_AWPROT(2 downto 0),
      s00_axi_awready => ps7_0_axi_periph_M03_AXI_AWREADY,
      s00_axi_awvalid => ps7_0_axi_periph_M03_AXI_AWVALID,
      s00_axi_bready => ps7_0_axi_periph_M03_AXI_BREADY,
      s00_axi_bresp(1 downto 0) => ps7_0_axi_periph_M03_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => ps7_0_axi_periph_M03_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => ps7_0_axi_periph_M03_AXI_RDATA(31 downto 0),
      s00_axi_rready => ps7_0_axi_periph_M03_AXI_RREADY,
      s00_axi_rresp(1 downto 0) => ps7_0_axi_periph_M03_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => ps7_0_axi_periph_M03_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => ps7_0_axi_periph_M03_AXI_WDATA(31 downto 0),
      s00_axi_wready => ps7_0_axi_periph_M03_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => ps7_0_axi_periph_M03_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => ps7_0_axi_periph_M03_AXI_WVALID
    );
OneStageSynchronizer_2: component design_1_OneStageSynchronizer_0_5
     port map (
      async_signal => pbce_0_1,
      clk => Net,
      sync_signal => OneStageSynchronizer_2_sync_signal
    );
OneStageSynchronizer_3: component design_1_OneStageSynchronizer_2_0
     port map (
      async_signal => pbclk_0_1,
      clk => Net,
      sync_signal => OneStageSynchronizer_3_sync_signal
    );
ParallelBusSlave_ver_0: component design_1_ParallelBusSlave_ver_0_0
     port map (
      addressregister(7 downto 0) => ParallelBusSlave_ver_0_addressregister(7 downto 0),
      clk => Net,
      datain(15 downto 0) => IP_AXI_ManagerParall_0_dataout(15 downto 0),
      dataready => ParallelBusSlave_ver_0_dataready,
      pback => ParallelBusSlave_ver_0_pback,
      pbce => OneStageSynchronizer_2_sync_signal,
      pbclk => OneStageSynchronizer_3_sync_signal,
      pbdata(15 downto 0) => pbdata_0(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SerialBusSlave_imp_8O1ME6 is
  port (
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    TK5_acknowledges : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TK5_ackpr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TK5_ackpren : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TK5_acktime : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TK5_breaken : out STD_LOGIC;
    TK5_currentpr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TK5_currentpren : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TK5_deadtime : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TK5_keysen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TK5_keysout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TK5_linepr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TK5_linepren : out STD_LOGIC;
    TK5_mintime : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TK5_mintimepr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TK5_mintimepren : out STD_LOGIC;
    TK5_ready : out STD_LOGIC;
    TK5_reset : out STD_LOGIC;
    TK5_softshutdownen : out STD_LOGIC;
    TK5_softshutdownpr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TK5_softshutdowntimer : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TK5_timeerror : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TK6_acknowledges : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TK6_ackpr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TK6_ackpren : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TK6_acktime : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TK6_breaken : out STD_LOGIC;
    TK6_currentpr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TK6_currentpren : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TK6_deadtime : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TK6_keysen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TK6_keysout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TK6_linepr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TK6_linepren : out STD_LOGIC;
    TK6_mintime : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TK6_mintimepr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TK6_mintimepren : out STD_LOGIC;
    TK6_ready : out STD_LOGIC;
    TK6_reset : out STD_LOGIC;
    TK6_softshutdownen : out STD_LOGIC;
    TK6_softshutdownpr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TK6_softshutdowntimer : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TK6_timeerror : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TK9_acknowledges : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TK9_ackpr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TK9_ackpren : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TK9_acktime : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TK9_breaken : out STD_LOGIC;
    TK9_currentpr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TK9_currentpren : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TK9_deadtime : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TK9_keysen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TK9_keysout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TK9_linepr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TK9_linepren : out STD_LOGIC;
    TK9_mintime : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TK9_mintimepr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TK9_mintimepren : out STD_LOGIC;
    TK9_ready : out STD_LOGIC;
    TK9_reset : out STD_LOGIC;
    TK9_softshutdownen : out STD_LOGIC;
    TK9_softshutdownpr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TK9_softshutdowntimer : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TK9_timeerror : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TKA_acknowledges : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TKA_ackpr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TKA_ackpren : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TKA_acktime : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TKA_breaken : out STD_LOGIC;
    TKA_currentpr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TKA_currentpren : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TKA_deadtime : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TKA_keysen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TKA_keysout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TKA_linepr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TKA_linepren : out STD_LOGIC;
    TKA_mintime : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TKA_mintimepr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TKA_mintimepren : out STD_LOGIC;
    TKA_ready : out STD_LOGIC;
    TKA_reset : out STD_LOGIC;
    TKA_softshutdownen : out STD_LOGIC;
    TKA_softshutdownpr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TKA_softshutdowntimer : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TKA_timeerror : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    sbclk_0 : in STD_LOGIC;
    sbdatain_0 : in STD_LOGIC;
    sbdataout_0 : out STD_LOGIC;
    tkin : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end SerialBusSlave_imp_8O1ME6;

architecture STRUCTURE of SerialBusSlave_imp_8O1ME6 is
  component design_1_OneStageSynchronizer_0_3 is
  port (
    clk : in STD_LOGIC;
    async_signal : in STD_LOGIC;
    sync_signal : out STD_LOGIC
  );
  end component design_1_OneStageSynchronizer_0_3;
  component design_1_OneStageSynchronizer_0_4 is
  port (
    clk : in STD_LOGIC;
    async_signal : in STD_LOGIC;
    sync_signal : out STD_LOGIC
  );
  end component design_1_OneStageSynchronizer_0_4;
  component design_1_SerialBusSlave_ver_2_0_0 is
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
  end component design_1_SerialBusSlave_ver_2_0_0;
  component design_1_IP_AXI_ManagerSerial_0_2 is
  port (
    addressregister : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dataout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    datain : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rw : in STD_LOGIC;
    dataready : in STD_LOGIC;
    keysen5 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    deadTime5 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    minTime5 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ackTime5 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    currentpren5 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ackpren5 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mintimepren5 : out STD_LOGIC;
    linepren5 : out STD_LOGIC;
    softshutdownpren5 : out STD_LOGIC;
    softShutdownTimer5 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    keysin5 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ackin5 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ackpr5 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    currentpr5 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    linepr5 : in STD_LOGIC;
    softshutdownpr5 : in STD_LOGIC;
    mintimepr5 : in STD_LOGIC;
    timeerror5 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    breaken5 : out STD_LOGIC;
    ready5 : out STD_LOGIC;
    reset5 : out STD_LOGIC;
    keysen6 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    deadTime6 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    minTime6 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ackTime6 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    currentpren6 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ackpren6 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mintimepren6 : out STD_LOGIC;
    linepren6 : out STD_LOGIC;
    softshutdownpren6 : out STD_LOGIC;
    softShutdownTimer6 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    keysin6 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ackin6 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ackpr6 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    currentpr6 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    linepr6 : in STD_LOGIC;
    softshutdownpr6 : in STD_LOGIC;
    mintimepr6 : in STD_LOGIC;
    timeerror6 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    breaken6 : out STD_LOGIC;
    ready6 : out STD_LOGIC;
    reset6 : out STD_LOGIC;
    keysen9 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    deadTime9 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    minTime9 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ackTime9 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    currentpren9 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ackpren9 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mintimepren9 : out STD_LOGIC;
    linepren9 : out STD_LOGIC;
    softshutdownpren9 : out STD_LOGIC;
    softShutdownTimer9 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    keysin9 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ackin9 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ackpr9 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    currentpr9 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    linepr9 : in STD_LOGIC;
    softshutdownpr9 : in STD_LOGIC;
    mintimepr9 : in STD_LOGIC;
    timeerror9 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    breaken9 : out STD_LOGIC;
    ready9 : out STD_LOGIC;
    reset9 : out STD_LOGIC;
    keysenA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    deadTimeA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    minTimeA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ackTimeA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    currentprenA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ackprenA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mintimeprenA : out STD_LOGIC;
    lineprenA : out STD_LOGIC;
    softshutdownprenA : out STD_LOGIC;
    softShutdownTimerA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    keysinA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ackinA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ackprA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    currentprA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    lineprA : in STD_LOGIC;
    softshutdownprA : in STD_LOGIC;
    mintimeprA : in STD_LOGIC;
    timeerrorA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    breakenA : out STD_LOGIC;
    readyA : out STD_LOGIC;
    resetA : out STD_LOGIC;
    tkin : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  end component design_1_IP_AXI_ManagerSerial_0_2;
  signal IP_AXI_ManagerSerial_0_TK5_ackTime : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_acknowledges : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_ackpr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_ackpren : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_breaken : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK5_currentpr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_currentpren : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_deadTime : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_keysen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_keysout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_linepr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_linepren : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK5_minTime : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_mintimepr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_mintimepren : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK5_ready : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK5_reset : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK5_softShutdownTimer : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_softshutdownen : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK5_softshutdownpr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_timeerror : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_ackTime : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_acknowledges : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_ackpr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_ackpren : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_breaken : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK6_currentpr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_currentpren : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_deadTime : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_keysen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_keysout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_linepr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_linepren : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK6_minTime : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_mintimepr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_mintimepren : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK6_ready : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK6_reset : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK6_softShutdownTimer : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_softshutdownen : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK6_softshutdownpr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_timeerror : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_ackTime : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_acknowledges : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_ackpr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_ackpren : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_breaken : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK9_currentpr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_currentpren : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_deadTime : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_keysen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_keysout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_linepr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_linepren : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK9_minTime : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_mintimepr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_mintimepren : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK9_ready : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK9_reset : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK9_softShutdownTimer : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_softshutdownen : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK9_softshutdownpr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_timeerror : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_ackTime : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_acknowledges : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_ackpr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_ackpren : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_breaken : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TKA_currentpr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_currentpren : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_deadTime : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_keysen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_keysout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_linepr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_linepren : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TKA_minTime : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_mintimepr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_mintimepren : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TKA_ready : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TKA_reset : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TKA_softShutdownTimer : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_softshutdownen : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TKA_softshutdownpr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_timeerror : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal IP_AXI_ManagerSerial_0_dataout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Net : STD_LOGIC;
  signal OneStageSynchronizer_0_sync_signal : STD_LOGIC;
  signal OneStageSynchronizer_1_sync_signal : STD_LOGIC;
  signal SerialBusSlave_ver_2_0_addressregister : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal SerialBusSlave_ver_2_0_dataout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SerialBusSlave_ver_2_0_dataready : STD_LOGIC;
  signal SerialBusSlave_ver_2_0_rw : STD_LOGIC;
  signal SerialBusSlave_ver_2_0_sbdataout : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_WVALID : STD_LOGIC;
  signal rst_ps7_0_100M_peripheral_aresetn : STD_LOGIC;
  signal sbclk_0_1 : STD_LOGIC;
  signal sbdatain_0_1 : STD_LOGIC;
  signal tkin_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
  IP_AXI_ManagerSerial_0_TK5_acknowledges(7 downto 0) <= TK5_acknowledges(7 downto 0);
  IP_AXI_ManagerSerial_0_TK5_ackpr(7 downto 0) <= TK5_ackpr(7 downto 0);
  IP_AXI_ManagerSerial_0_TK5_currentpr(7 downto 0) <= TK5_currentpr(7 downto 0);
  IP_AXI_ManagerSerial_0_TK5_keysout(7 downto 0) <= TK5_keysout(7 downto 0);
  IP_AXI_ManagerSerial_0_TK5_linepr(1 downto 0) <= TK5_linepr(1 downto 0);
  IP_AXI_ManagerSerial_0_TK5_mintimepr(1 downto 0) <= TK5_mintimepr(1 downto 0);
  IP_AXI_ManagerSerial_0_TK5_softshutdownpr(1 downto 0) <= TK5_softshutdownpr(1 downto 0);
  IP_AXI_ManagerSerial_0_TK5_timeerror(15 downto 0) <= TK5_timeerror(15 downto 0);
  IP_AXI_ManagerSerial_0_TK6_acknowledges(7 downto 0) <= TK6_acknowledges(7 downto 0);
  IP_AXI_ManagerSerial_0_TK6_ackpr(7 downto 0) <= TK6_ackpr(7 downto 0);
  IP_AXI_ManagerSerial_0_TK6_currentpr(7 downto 0) <= TK6_currentpr(7 downto 0);
  IP_AXI_ManagerSerial_0_TK6_keysout(7 downto 0) <= TK6_keysout(7 downto 0);
  IP_AXI_ManagerSerial_0_TK6_linepr(1 downto 0) <= TK6_linepr(1 downto 0);
  IP_AXI_ManagerSerial_0_TK6_mintimepr(1 downto 0) <= TK6_mintimepr(1 downto 0);
  IP_AXI_ManagerSerial_0_TK6_softshutdownpr(1 downto 0) <= TK6_softshutdownpr(1 downto 0);
  IP_AXI_ManagerSerial_0_TK6_timeerror(15 downto 0) <= TK6_timeerror(15 downto 0);
  IP_AXI_ManagerSerial_0_TK9_acknowledges(7 downto 0) <= TK9_acknowledges(7 downto 0);
  IP_AXI_ManagerSerial_0_TK9_ackpr(7 downto 0) <= TK9_ackpr(7 downto 0);
  IP_AXI_ManagerSerial_0_TK9_currentpr(7 downto 0) <= TK9_currentpr(7 downto 0);
  IP_AXI_ManagerSerial_0_TK9_keysout(7 downto 0) <= TK9_keysout(7 downto 0);
  IP_AXI_ManagerSerial_0_TK9_linepr(1 downto 0) <= TK9_linepr(1 downto 0);
  IP_AXI_ManagerSerial_0_TK9_mintimepr(1 downto 0) <= TK9_mintimepr(1 downto 0);
  IP_AXI_ManagerSerial_0_TK9_softshutdownpr(1 downto 0) <= TK9_softshutdownpr(1 downto 0);
  IP_AXI_ManagerSerial_0_TK9_timeerror(15 downto 0) <= TK9_timeerror(15 downto 0);
  IP_AXI_ManagerSerial_0_TKA_acknowledges(7 downto 0) <= TKA_acknowledges(7 downto 0);
  IP_AXI_ManagerSerial_0_TKA_ackpr(7 downto 0) <= TKA_ackpr(7 downto 0);
  IP_AXI_ManagerSerial_0_TKA_currentpr(7 downto 0) <= TKA_currentpr(7 downto 0);
  IP_AXI_ManagerSerial_0_TKA_keysout(7 downto 0) <= TKA_keysout(7 downto 0);
  IP_AXI_ManagerSerial_0_TKA_linepr(1 downto 0) <= TKA_linepr(1 downto 0);
  IP_AXI_ManagerSerial_0_TKA_mintimepr(1 downto 0) <= TKA_mintimepr(1 downto 0);
  IP_AXI_ManagerSerial_0_TKA_softshutdownpr(1 downto 0) <= TKA_softshutdownpr(1 downto 0);
  IP_AXI_ManagerSerial_0_TKA_timeerror(15 downto 0) <= TKA_timeerror(15 downto 0);
  Net <= clk;
  S00_AXI_arready <= ps7_0_axi_periph_M02_AXI_ARREADY;
  S00_AXI_awready <= ps7_0_axi_periph_M02_AXI_AWREADY;
  S00_AXI_bresp(1 downto 0) <= ps7_0_axi_periph_M02_AXI_BRESP(1 downto 0);
  S00_AXI_bvalid <= ps7_0_axi_periph_M02_AXI_BVALID;
  S00_AXI_rdata(31 downto 0) <= ps7_0_axi_periph_M02_AXI_RDATA(31 downto 0);
  S00_AXI_rresp(1 downto 0) <= ps7_0_axi_periph_M02_AXI_RRESP(1 downto 0);
  S00_AXI_rvalid <= ps7_0_axi_periph_M02_AXI_RVALID;
  S00_AXI_wready <= ps7_0_axi_periph_M02_AXI_WREADY;
  TK5_ackpren(7 downto 0) <= IP_AXI_ManagerSerial_0_TK5_ackpren(7 downto 0);
  TK5_acktime(7 downto 0) <= IP_AXI_ManagerSerial_0_TK5_ackTime(7 downto 0);
  TK5_breaken <= IP_AXI_ManagerSerial_0_TK5_breaken;
  TK5_currentpren(7 downto 0) <= IP_AXI_ManagerSerial_0_TK5_currentpren(7 downto 0);
  TK5_deadtime(7 downto 0) <= IP_AXI_ManagerSerial_0_TK5_deadTime(7 downto 0);
  TK5_keysen(7 downto 0) <= IP_AXI_ManagerSerial_0_TK5_keysen(7 downto 0);
  TK5_linepren <= IP_AXI_ManagerSerial_0_TK5_linepren;
  TK5_mintime(7 downto 0) <= IP_AXI_ManagerSerial_0_TK5_minTime(7 downto 0);
  TK5_mintimepren <= IP_AXI_ManagerSerial_0_TK5_mintimepren;
  TK5_ready <= IP_AXI_ManagerSerial_0_TK5_ready;
  TK5_reset <= IP_AXI_ManagerSerial_0_TK5_reset;
  TK5_softshutdownen <= IP_AXI_ManagerSerial_0_TK5_softshutdownen;
  TK5_softshutdowntimer(15 downto 0) <= IP_AXI_ManagerSerial_0_TK5_softShutdownTimer(15 downto 0);
  TK6_ackpren(7 downto 0) <= IP_AXI_ManagerSerial_0_TK6_ackpren(7 downto 0);
  TK6_acktime(7 downto 0) <= IP_AXI_ManagerSerial_0_TK6_ackTime(7 downto 0);
  TK6_breaken <= IP_AXI_ManagerSerial_0_TK6_breaken;
  TK6_currentpren(7 downto 0) <= IP_AXI_ManagerSerial_0_TK6_currentpren(7 downto 0);
  TK6_deadtime(7 downto 0) <= IP_AXI_ManagerSerial_0_TK6_deadTime(7 downto 0);
  TK6_keysen(7 downto 0) <= IP_AXI_ManagerSerial_0_TK6_keysen(7 downto 0);
  TK6_linepren <= IP_AXI_ManagerSerial_0_TK6_linepren;
  TK6_mintime(7 downto 0) <= IP_AXI_ManagerSerial_0_TK6_minTime(7 downto 0);
  TK6_mintimepren <= IP_AXI_ManagerSerial_0_TK6_mintimepren;
  TK6_ready <= IP_AXI_ManagerSerial_0_TK6_ready;
  TK6_reset <= IP_AXI_ManagerSerial_0_TK6_reset;
  TK6_softshutdownen <= IP_AXI_ManagerSerial_0_TK6_softshutdownen;
  TK6_softshutdowntimer(15 downto 0) <= IP_AXI_ManagerSerial_0_TK6_softShutdownTimer(15 downto 0);
  TK9_ackpren(7 downto 0) <= IP_AXI_ManagerSerial_0_TK9_ackpren(7 downto 0);
  TK9_acktime(7 downto 0) <= IP_AXI_ManagerSerial_0_TK9_ackTime(7 downto 0);
  TK9_breaken <= IP_AXI_ManagerSerial_0_TK9_breaken;
  TK9_currentpren(7 downto 0) <= IP_AXI_ManagerSerial_0_TK9_currentpren(7 downto 0);
  TK9_deadtime(7 downto 0) <= IP_AXI_ManagerSerial_0_TK9_deadTime(7 downto 0);
  TK9_keysen(7 downto 0) <= IP_AXI_ManagerSerial_0_TK9_keysen(7 downto 0);
  TK9_linepren <= IP_AXI_ManagerSerial_0_TK9_linepren;
  TK9_mintime(7 downto 0) <= IP_AXI_ManagerSerial_0_TK9_minTime(7 downto 0);
  TK9_mintimepren <= IP_AXI_ManagerSerial_0_TK9_mintimepren;
  TK9_ready <= IP_AXI_ManagerSerial_0_TK9_ready;
  TK9_reset <= IP_AXI_ManagerSerial_0_TK9_reset;
  TK9_softshutdownen <= IP_AXI_ManagerSerial_0_TK9_softshutdownen;
  TK9_softshutdowntimer(15 downto 0) <= IP_AXI_ManagerSerial_0_TK9_softShutdownTimer(15 downto 0);
  TKA_ackpren(7 downto 0) <= IP_AXI_ManagerSerial_0_TKA_ackpren(7 downto 0);
  TKA_acktime(7 downto 0) <= IP_AXI_ManagerSerial_0_TKA_ackTime(7 downto 0);
  TKA_breaken <= IP_AXI_ManagerSerial_0_TKA_breaken;
  TKA_currentpren(7 downto 0) <= IP_AXI_ManagerSerial_0_TKA_currentpren(7 downto 0);
  TKA_deadtime(7 downto 0) <= IP_AXI_ManagerSerial_0_TKA_deadTime(7 downto 0);
  TKA_keysen(7 downto 0) <= IP_AXI_ManagerSerial_0_TKA_keysen(7 downto 0);
  TKA_linepren <= IP_AXI_ManagerSerial_0_TKA_linepren;
  TKA_mintime(7 downto 0) <= IP_AXI_ManagerSerial_0_TKA_minTime(7 downto 0);
  TKA_mintimepren <= IP_AXI_ManagerSerial_0_TKA_mintimepren;
  TKA_ready <= IP_AXI_ManagerSerial_0_TKA_ready;
  TKA_reset <= IP_AXI_ManagerSerial_0_TKA_reset;
  TKA_softshutdownen <= IP_AXI_ManagerSerial_0_TKA_softshutdownen;
  TKA_softshutdowntimer(15 downto 0) <= IP_AXI_ManagerSerial_0_TKA_softShutdownTimer(15 downto 0);
  processing_system7_0_FCLK_CLK0 <= s00_axi_aclk;
  ps7_0_axi_periph_M02_AXI_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  ps7_0_axi_periph_M02_AXI_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  ps7_0_axi_periph_M02_AXI_ARVALID <= S00_AXI_arvalid;
  ps7_0_axi_periph_M02_AXI_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  ps7_0_axi_periph_M02_AXI_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  ps7_0_axi_periph_M02_AXI_AWVALID <= S00_AXI_awvalid;
  ps7_0_axi_periph_M02_AXI_BREADY <= S00_AXI_bready;
  ps7_0_axi_periph_M02_AXI_RREADY <= S00_AXI_rready;
  ps7_0_axi_periph_M02_AXI_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  ps7_0_axi_periph_M02_AXI_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  ps7_0_axi_periph_M02_AXI_WVALID <= S00_AXI_wvalid;
  rst_ps7_0_100M_peripheral_aresetn <= s00_axi_aresetn;
  sbclk_0_1 <= sbclk_0;
  sbdatain_0_1 <= sbdatain_0;
  sbdataout_0 <= SerialBusSlave_ver_2_0_sbdataout;
  tkin_1(15 downto 0) <= tkin(15 downto 0);
IP_AXI_ManagerSerial_0: component design_1_IP_AXI_ManagerSerial_0_2
     port map (
      ackTime5(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_ackTime(7 downto 0),
      ackTime6(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_ackTime(7 downto 0),
      ackTime9(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_ackTime(7 downto 0),
      ackTimeA(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_ackTime(7 downto 0),
      ackin5(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_acknowledges(7 downto 0),
      ackin6(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_acknowledges(7 downto 0),
      ackin9(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_acknowledges(7 downto 0),
      ackinA(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_acknowledges(7 downto 0),
      ackpr5(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_ackpr(7 downto 0),
      ackpr6(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_ackpr(7 downto 0),
      ackpr9(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_ackpr(7 downto 0),
      ackprA(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_ackpr(7 downto 0),
      ackpren5(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_ackpren(7 downto 0),
      ackpren6(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_ackpren(7 downto 0),
      ackpren9(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_ackpren(7 downto 0),
      ackprenA(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_ackpren(7 downto 0),
      addressregister(7 downto 0) => SerialBusSlave_ver_2_0_addressregister(7 downto 0),
      breaken5 => IP_AXI_ManagerSerial_0_TK5_breaken,
      breaken6 => IP_AXI_ManagerSerial_0_TK6_breaken,
      breaken9 => IP_AXI_ManagerSerial_0_TK9_breaken,
      breakenA => IP_AXI_ManagerSerial_0_TKA_breaken,
      currentpr5(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_currentpr(7 downto 0),
      currentpr6(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_currentpr(7 downto 0),
      currentpr9(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_currentpr(7 downto 0),
      currentprA(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_currentpr(7 downto 0),
      currentpren5(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_currentpren(7 downto 0),
      currentpren6(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_currentpren(7 downto 0),
      currentpren9(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_currentpren(7 downto 0),
      currentprenA(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_currentpren(7 downto 0),
      datain(15 downto 0) => SerialBusSlave_ver_2_0_dataout(15 downto 0),
      dataout(15 downto 0) => IP_AXI_ManagerSerial_0_dataout(15 downto 0),
      dataready => SerialBusSlave_ver_2_0_dataready,
      deadTime5(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_deadTime(7 downto 0),
      deadTime6(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_deadTime(7 downto 0),
      deadTime9(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_deadTime(7 downto 0),
      deadTimeA(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_deadTime(7 downto 0),
      keysen5(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_keysen(7 downto 0),
      keysen6(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_keysen(7 downto 0),
      keysen9(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_keysen(7 downto 0),
      keysenA(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_keysen(7 downto 0),
      keysin5(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_keysout(7 downto 0),
      keysin6(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_keysout(7 downto 0),
      keysin9(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_keysout(7 downto 0),
      keysinA(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_keysout(7 downto 0),
      linepr5 => IP_AXI_ManagerSerial_0_TK5_linepr(0),
      linepr6 => IP_AXI_ManagerSerial_0_TK6_linepr(0),
      linepr9 => IP_AXI_ManagerSerial_0_TK9_linepr(0),
      lineprA => IP_AXI_ManagerSerial_0_TKA_linepr(0),
      linepren5 => IP_AXI_ManagerSerial_0_TK5_linepren,
      linepren6 => IP_AXI_ManagerSerial_0_TK6_linepren,
      linepren9 => IP_AXI_ManagerSerial_0_TK9_linepren,
      lineprenA => IP_AXI_ManagerSerial_0_TKA_linepren,
      minTime5(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_minTime(7 downto 0),
      minTime6(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_minTime(7 downto 0),
      minTime9(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_minTime(7 downto 0),
      minTimeA(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_minTime(7 downto 0),
      mintimepr5 => IP_AXI_ManagerSerial_0_TK5_mintimepr(0),
      mintimepr6 => IP_AXI_ManagerSerial_0_TK6_mintimepr(0),
      mintimepr9 => IP_AXI_ManagerSerial_0_TK9_mintimepr(0),
      mintimeprA => IP_AXI_ManagerSerial_0_TKA_mintimepr(0),
      mintimepren5 => IP_AXI_ManagerSerial_0_TK5_mintimepren,
      mintimepren6 => IP_AXI_ManagerSerial_0_TK6_mintimepren,
      mintimepren9 => IP_AXI_ManagerSerial_0_TK9_mintimepren,
      mintimeprenA => IP_AXI_ManagerSerial_0_TKA_mintimepren,
      ready5 => IP_AXI_ManagerSerial_0_TK5_ready,
      ready6 => IP_AXI_ManagerSerial_0_TK6_ready,
      ready9 => IP_AXI_ManagerSerial_0_TK9_ready,
      readyA => IP_AXI_ManagerSerial_0_TKA_ready,
      reset5 => IP_AXI_ManagerSerial_0_TK5_reset,
      reset6 => IP_AXI_ManagerSerial_0_TK6_reset,
      reset9 => IP_AXI_ManagerSerial_0_TK9_reset,
      resetA => IP_AXI_ManagerSerial_0_TKA_reset,
      rw => SerialBusSlave_ver_2_0_rw,
      s00_axi_aclk => processing_system7_0_FCLK_CLK0,
      s00_axi_araddr(9 downto 0) => ps7_0_axi_periph_M02_AXI_ARADDR(9 downto 0),
      s00_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn,
      s00_axi_arprot(2 downto 0) => ps7_0_axi_periph_M02_AXI_ARPROT(2 downto 0),
      s00_axi_arready => ps7_0_axi_periph_M02_AXI_ARREADY,
      s00_axi_arvalid => ps7_0_axi_periph_M02_AXI_ARVALID,
      s00_axi_awaddr(9 downto 0) => ps7_0_axi_periph_M02_AXI_AWADDR(9 downto 0),
      s00_axi_awprot(2 downto 0) => ps7_0_axi_periph_M02_AXI_AWPROT(2 downto 0),
      s00_axi_awready => ps7_0_axi_periph_M02_AXI_AWREADY,
      s00_axi_awvalid => ps7_0_axi_periph_M02_AXI_AWVALID,
      s00_axi_bready => ps7_0_axi_periph_M02_AXI_BREADY,
      s00_axi_bresp(1 downto 0) => ps7_0_axi_periph_M02_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => ps7_0_axi_periph_M02_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => ps7_0_axi_periph_M02_AXI_RDATA(31 downto 0),
      s00_axi_rready => ps7_0_axi_periph_M02_AXI_RREADY,
      s00_axi_rresp(1 downto 0) => ps7_0_axi_periph_M02_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => ps7_0_axi_periph_M02_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => ps7_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      s00_axi_wready => ps7_0_axi_periph_M02_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => ps7_0_axi_periph_M02_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => ps7_0_axi_periph_M02_AXI_WVALID,
      softShutdownTimer5(15 downto 0) => IP_AXI_ManagerSerial_0_TK5_softShutdownTimer(15 downto 0),
      softShutdownTimer6(15 downto 0) => IP_AXI_ManagerSerial_0_TK6_softShutdownTimer(15 downto 0),
      softShutdownTimer9(15 downto 0) => IP_AXI_ManagerSerial_0_TK9_softShutdownTimer(15 downto 0),
      softShutdownTimerA(15 downto 0) => IP_AXI_ManagerSerial_0_TKA_softShutdownTimer(15 downto 0),
      softshutdownpr5 => IP_AXI_ManagerSerial_0_TK5_softshutdownpr(0),
      softshutdownpr6 => IP_AXI_ManagerSerial_0_TK6_softshutdownpr(0),
      softshutdownpr9 => IP_AXI_ManagerSerial_0_TK9_softshutdownpr(0),
      softshutdownprA => IP_AXI_ManagerSerial_0_TKA_softshutdownpr(0),
      softshutdownpren5 => IP_AXI_ManagerSerial_0_TK5_softshutdownen,
      softshutdownpren6 => IP_AXI_ManagerSerial_0_TK6_softshutdownen,
      softshutdownpren9 => IP_AXI_ManagerSerial_0_TK9_softshutdownen,
      softshutdownprenA => IP_AXI_ManagerSerial_0_TKA_softshutdownen,
      timeerror5(15 downto 0) => IP_AXI_ManagerSerial_0_TK5_timeerror(15 downto 0),
      timeerror6(15 downto 0) => IP_AXI_ManagerSerial_0_TK6_timeerror(15 downto 0),
      timeerror9(15 downto 0) => IP_AXI_ManagerSerial_0_TK9_timeerror(15 downto 0),
      timeerrorA(15 downto 0) => IP_AXI_ManagerSerial_0_TKA_timeerror(15 downto 0),
      tkin(15 downto 0) => tkin_1(15 downto 0)
    );
OneStageSynchronizer_0: component design_1_OneStageSynchronizer_0_3
     port map (
      async_signal => sbdatain_0_1,
      clk => Net,
      sync_signal => OneStageSynchronizer_0_sync_signal
    );
OneStageSynchronizer_1: component design_1_OneStageSynchronizer_0_4
     port map (
      async_signal => sbclk_0_1,
      clk => Net,
      sync_signal => OneStageSynchronizer_1_sync_signal
    );
SerialBusSlave_ver_2_0: component design_1_SerialBusSlave_ver_2_0_0
     port map (
      addressregister(7 downto 0) => SerialBusSlave_ver_2_0_addressregister(7 downto 0),
      clk => Net,
      datain(15 downto 0) => IP_AXI_ManagerSerial_0_dataout(15 downto 0),
      dataout(15 downto 0) => SerialBusSlave_ver_2_0_dataout(15 downto 0),
      dataready => SerialBusSlave_ver_2_0_dataready,
      rw => SerialBusSlave_ver_2_0_rw,
      sbclk => OneStageSynchronizer_1_sync_signal,
      sbdatain => OneStageSynchronizer_0_sync_signal,
      sbdataout => SerialBusSlave_ver_2_0_sbdataout
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_15SPJYW is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m00_couplers_imp_15SPJYW;

architecture STRUCTURE of m00_couplers_imp_15SPJYW is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m00_couplers_to_m00_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m00_couplers_to_m00_couplers_AWVALID(0);
  M_AXI_bready(0) <= m00_couplers_to_m00_couplers_BREADY(0);
  M_AXI_rready(0) <= m00_couplers_to_m00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m00_couplers_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m00_couplers_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m00_couplers_to_m00_couplers_WVALID(0);
  S_AXI_arready(0) <= m00_couplers_to_m00_couplers_ARREADY(0);
  S_AXI_awready(0) <= m00_couplers_to_m00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m00_couplers_to_m00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m00_couplers_to_m00_couplers_RVALID(0);
  S_AXI_wready(0) <= m00_couplers_to_m00_couplers_WREADY(0);
  m00_couplers_to_m00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_m00_couplers_ARREADY(0) <= M_AXI_arready(0);
  m00_couplers_to_m00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m00_couplers_to_m00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_m00_couplers_AWREADY(0) <= M_AXI_awready(0);
  m00_couplers_to_m00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m00_couplers_to_m00_couplers_BREADY(0) <= S_AXI_bready(0);
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m00_couplers_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_couplers_to_m00_couplers_RREADY(0) <= S_AXI_rready(0);
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m00_couplers_to_m00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_couplers_WREADY(0) <= M_AXI_wready(0);
  m00_couplers_to_m00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_m00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_XU9C55 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m01_couplers_imp_XU9C55;

architecture STRUCTURE of m01_couplers_imp_XU9C55 is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m01_couplers_to_m01_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= m01_couplers_to_m01_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m01_couplers_to_m01_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= m01_couplers_to_m01_couplers_AWVALID;
  M_AXI_bready <= m01_couplers_to_m01_couplers_BREADY;
  M_AXI_rready <= m01_couplers_to_m01_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m01_couplers_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m01_couplers_to_m01_couplers_WVALID;
  S_AXI_arready <= m01_couplers_to_m01_couplers_ARREADY;
  S_AXI_awready <= m01_couplers_to_m01_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m01_couplers_to_m01_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m01_couplers_to_m01_couplers_RVALID;
  S_AXI_wready <= m01_couplers_to_m01_couplers_WREADY;
  m01_couplers_to_m01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_m01_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m01_couplers_to_m01_couplers_ARREADY <= M_AXI_arready;
  m01_couplers_to_m01_couplers_ARVALID <= S_AXI_arvalid;
  m01_couplers_to_m01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_m01_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m01_couplers_to_m01_couplers_AWREADY <= M_AXI_awready;
  m01_couplers_to_m01_couplers_AWVALID <= S_AXI_awvalid;
  m01_couplers_to_m01_couplers_BREADY <= S_AXI_bready;
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID <= M_AXI_bvalid;
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RREADY <= S_AXI_rready;
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID <= M_AXI_rvalid;
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WREADY <= M_AXI_wready;
  m01_couplers_to_m01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_m01_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_14WQB4R is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m02_couplers_imp_14WQB4R;

architecture STRUCTURE of m02_couplers_imp_14WQB4R is
  signal m02_couplers_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_ARREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_ARVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_AWREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_BREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_BVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_RREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_RVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_WREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m02_couplers_to_m02_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m02_couplers_to_m02_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= m02_couplers_to_m02_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m02_couplers_to_m02_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m02_couplers_to_m02_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= m02_couplers_to_m02_couplers_AWVALID;
  M_AXI_bready <= m02_couplers_to_m02_couplers_BREADY;
  M_AXI_rready <= m02_couplers_to_m02_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m02_couplers_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m02_couplers_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m02_couplers_to_m02_couplers_WVALID;
  S_AXI_arready <= m02_couplers_to_m02_couplers_ARREADY;
  S_AXI_awready <= m02_couplers_to_m02_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_m02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m02_couplers_to_m02_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_m02_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_m02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m02_couplers_to_m02_couplers_RVALID;
  S_AXI_wready <= m02_couplers_to_m02_couplers_WREADY;
  m02_couplers_to_m02_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m02_couplers_to_m02_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m02_couplers_to_m02_couplers_ARREADY <= M_AXI_arready;
  m02_couplers_to_m02_couplers_ARVALID <= S_AXI_arvalid;
  m02_couplers_to_m02_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m02_couplers_to_m02_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m02_couplers_to_m02_couplers_AWREADY <= M_AXI_awready;
  m02_couplers_to_m02_couplers_AWVALID <= S_AXI_awvalid;
  m02_couplers_to_m02_couplers_BREADY <= S_AXI_bready;
  m02_couplers_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m02_couplers_to_m02_couplers_BVALID <= M_AXI_bvalid;
  m02_couplers_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m02_couplers_to_m02_couplers_RREADY <= S_AXI_rready;
  m02_couplers_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m02_couplers_to_m02_couplers_RVALID <= M_AXI_rvalid;
  m02_couplers_to_m02_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_m02_couplers_WREADY <= M_AXI_wready;
  m02_couplers_to_m02_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_m02_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m03_couplers_imp_YFYJ3U is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m03_couplers_imp_YFYJ3U;

architecture STRUCTURE of m03_couplers_imp_YFYJ3U is
  signal m03_couplers_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_m03_couplers_ARREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_ARVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_m03_couplers_AWREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_BREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_BVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_RREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_RVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_WREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_m03_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m03_couplers_to_m03_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m03_couplers_to_m03_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= m03_couplers_to_m03_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m03_couplers_to_m03_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m03_couplers_to_m03_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= m03_couplers_to_m03_couplers_AWVALID;
  M_AXI_bready <= m03_couplers_to_m03_couplers_BREADY;
  M_AXI_rready <= m03_couplers_to_m03_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m03_couplers_to_m03_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m03_couplers_to_m03_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m03_couplers_to_m03_couplers_WVALID;
  S_AXI_arready <= m03_couplers_to_m03_couplers_ARREADY;
  S_AXI_awready <= m03_couplers_to_m03_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m03_couplers_to_m03_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m03_couplers_to_m03_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m03_couplers_to_m03_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m03_couplers_to_m03_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m03_couplers_to_m03_couplers_RVALID;
  S_AXI_wready <= m03_couplers_to_m03_couplers_WREADY;
  m03_couplers_to_m03_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m03_couplers_to_m03_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m03_couplers_to_m03_couplers_ARREADY <= M_AXI_arready;
  m03_couplers_to_m03_couplers_ARVALID <= S_AXI_arvalid;
  m03_couplers_to_m03_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m03_couplers_to_m03_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m03_couplers_to_m03_couplers_AWREADY <= M_AXI_awready;
  m03_couplers_to_m03_couplers_AWVALID <= S_AXI_awvalid;
  m03_couplers_to_m03_couplers_BREADY <= S_AXI_bready;
  m03_couplers_to_m03_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m03_couplers_to_m03_couplers_BVALID <= M_AXI_bvalid;
  m03_couplers_to_m03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m03_couplers_to_m03_couplers_RREADY <= S_AXI_rready;
  m03_couplers_to_m03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m03_couplers_to_m03_couplers_RVALID <= M_AXI_rvalid;
  m03_couplers_to_m03_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m03_couplers_to_m03_couplers_WREADY <= M_AXI_wready;
  m03_couplers_to_m03_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m03_couplers_to_m03_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m04_couplers_imp_17KQ732 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m04_couplers_imp_17KQ732;

architecture STRUCTURE of m04_couplers_imp_17KQ732 is
  signal m04_couplers_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_ARREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_ARVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_AWREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_BREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_BVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_RREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_RVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_WREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m04_couplers_to_m04_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m04_couplers_to_m04_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m04_couplers_to_m04_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m04_couplers_to_m04_couplers_AWVALID;
  M_AXI_bready <= m04_couplers_to_m04_couplers_BREADY;
  M_AXI_rready <= m04_couplers_to_m04_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m04_couplers_to_m04_couplers_WDATA(31 downto 0);
  M_AXI_wvalid <= m04_couplers_to_m04_couplers_WVALID;
  S_AXI_arready <= m04_couplers_to_m04_couplers_ARREADY;
  S_AXI_awready <= m04_couplers_to_m04_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m04_couplers_to_m04_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m04_couplers_to_m04_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m04_couplers_to_m04_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m04_couplers_to_m04_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m04_couplers_to_m04_couplers_RVALID;
  S_AXI_wready <= m04_couplers_to_m04_couplers_WREADY;
  m04_couplers_to_m04_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m04_couplers_to_m04_couplers_ARREADY <= M_AXI_arready;
  m04_couplers_to_m04_couplers_ARVALID <= S_AXI_arvalid;
  m04_couplers_to_m04_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m04_couplers_to_m04_couplers_AWREADY <= M_AXI_awready;
  m04_couplers_to_m04_couplers_AWVALID <= S_AXI_awvalid;
  m04_couplers_to_m04_couplers_BREADY <= S_AXI_bready;
  m04_couplers_to_m04_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m04_couplers_to_m04_couplers_BVALID <= M_AXI_bvalid;
  m04_couplers_to_m04_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m04_couplers_to_m04_couplers_RREADY <= S_AXI_rready;
  m04_couplers_to_m04_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m04_couplers_to_m04_couplers_RVALID <= M_AXI_rvalid;
  m04_couplers_to_m04_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m04_couplers_to_m04_couplers_WREADY <= M_AXI_wready;
  m04_couplers_to_m04_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m05_couplers_imp_VQEDA7 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m05_couplers_imp_VQEDA7;

architecture STRUCTURE of m05_couplers_imp_VQEDA7 is
  signal m05_couplers_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_ARREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_ARVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_AWREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_AWVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_BREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_BVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_RREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_RVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_WREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_m05_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m05_couplers_to_m05_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m05_couplers_to_m05_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m05_couplers_to_m05_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m05_couplers_to_m05_couplers_AWVALID;
  M_AXI_bready <= m05_couplers_to_m05_couplers_BREADY;
  M_AXI_rready <= m05_couplers_to_m05_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m05_couplers_to_m05_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m05_couplers_to_m05_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m05_couplers_to_m05_couplers_WVALID;
  S_AXI_arready <= m05_couplers_to_m05_couplers_ARREADY;
  S_AXI_awready <= m05_couplers_to_m05_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m05_couplers_to_m05_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m05_couplers_to_m05_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m05_couplers_to_m05_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m05_couplers_to_m05_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m05_couplers_to_m05_couplers_RVALID;
  S_AXI_wready <= m05_couplers_to_m05_couplers_WREADY;
  m05_couplers_to_m05_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m05_couplers_to_m05_couplers_ARREADY <= M_AXI_arready;
  m05_couplers_to_m05_couplers_ARVALID <= S_AXI_arvalid;
  m05_couplers_to_m05_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m05_couplers_to_m05_couplers_AWREADY <= M_AXI_awready;
  m05_couplers_to_m05_couplers_AWVALID <= S_AXI_awvalid;
  m05_couplers_to_m05_couplers_BREADY <= S_AXI_bready;
  m05_couplers_to_m05_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m05_couplers_to_m05_couplers_BVALID <= M_AXI_bvalid;
  m05_couplers_to_m05_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m05_couplers_to_m05_couplers_RREADY <= S_AXI_rready;
  m05_couplers_to_m05_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m05_couplers_to_m05_couplers_RVALID <= M_AXI_rvalid;
  m05_couplers_to_m05_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m05_couplers_to_m05_couplers_WREADY <= M_AXI_wready;
  m05_couplers_to_m05_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m05_couplers_to_m05_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_UYSKKA is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_UYSKKA;

architecture STRUCTURE of s00_couplers_imp_UYSKKA is
  component design_1_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component design_1_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(11 downto 0) <= s00_couplers_to_auto_pc_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= s00_couplers_to_auto_pc_RID(11 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_pc_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_pc_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  s00_couplers_to_auto_pc_ARLEN(3 downto 0) <= S_AXI_arlen(3 downto 0);
  s00_couplers_to_auto_pc_ARLOCK(1 downto 0) <= S_AXI_arlock(1 downto 0);
  s00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_pc_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  s00_couplers_to_auto_pc_AWLEN(3 downto 0) <= S_AXI_awlen(3 downto 0);
  s00_couplers_to_auto_pc_AWLOCK(1 downto 0) <= S_AXI_awlock(1 downto 0);
  s00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_pc_WID(11 downto 0) <= S_AXI_wid(11 downto 0);
  s00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component design_1_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => s00_couplers_to_auto_pc_ARID(11 downto 0),
      s_axi_arlen(3 downto 0) => s00_couplers_to_auto_pc_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => s00_couplers_to_auto_pc_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_pc_ARREADY,
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => s00_couplers_to_auto_pc_AWID(11 downto 0),
      s_axi_awlen(3 downto 0) => s00_couplers_to_auto_pc_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => s00_couplers_to_auto_pc_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_pc_AWREADY,
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(11 downto 0) => s00_couplers_to_auto_pc_BID(11 downto 0),
      s_axi_bready => s00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => s00_couplers_to_auto_pc_RID(11 downto 0),
      s_axi_rlast => s00_couplers_to_auto_pc_RLAST,
      s_axi_rready => s00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wid(11 downto 0) => s00_couplers_to_auto_pc_WID(11 downto 0),
      s_axi_wlast => s00_couplers_to_auto_pc_WLAST,
      s_axi_wready => s00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ps7_0_axi_periph_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC;
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC;
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC;
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC;
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_arready : in STD_LOGIC;
    M04_AXI_arvalid : out STD_LOGIC;
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_awready : in STD_LOGIC;
    M04_AXI_awvalid : out STD_LOGIC;
    M04_AXI_bready : out STD_LOGIC;
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC;
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rready : out STD_LOGIC;
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC;
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wready : in STD_LOGIC;
    M04_AXI_wvalid : out STD_LOGIC;
    M05_ACLK : in STD_LOGIC;
    M05_ARESETN : in STD_LOGIC;
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_arready : in STD_LOGIC;
    M05_AXI_arvalid : out STD_LOGIC;
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_awready : in STD_LOGIC;
    M05_AXI_awvalid : out STD_LOGIC;
    M05_AXI_bready : out STD_LOGIC;
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC;
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rready : out STD_LOGIC;
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC;
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wready : in STD_LOGIC;
    M05_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end design_1_ps7_0_axi_periph_0;

architecture STRUCTURE of design_1_ps7_0_axi_periph_0 is
  component design_1_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 191 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 17 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 191 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 191 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 17 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 191 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  end component design_1_xbar_0;
  signal m00_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_ACLK_net : STD_LOGIC;
  signal ps7_0_axi_periph_ARESETN_net : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_RLAST : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_WLAST : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_ARVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_AWVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m05_couplers_RREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_WVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_xbar_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 19 downto 16 );
begin
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M00_AXI_arvalid(0) <= m00_couplers_to_ps7_0_axi_periph_ARVALID(0);
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M00_AXI_awvalid(0) <= m00_couplers_to_ps7_0_axi_periph_AWVALID(0);
  M00_AXI_bready(0) <= m00_couplers_to_ps7_0_axi_periph_BREADY(0);
  M00_AXI_rready(0) <= m00_couplers_to_ps7_0_axi_periph_RREADY(0);
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M00_AXI_wvalid(0) <= m00_couplers_to_ps7_0_axi_periph_WVALID(0);
  M01_AXI_araddr(31 downto 0) <= m01_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M01_AXI_arprot(2 downto 0) <= m01_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0);
  M01_AXI_arvalid <= m01_couplers_to_ps7_0_axi_periph_ARVALID;
  M01_AXI_awaddr(31 downto 0) <= m01_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M01_AXI_awprot(2 downto 0) <= m01_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0);
  M01_AXI_awvalid <= m01_couplers_to_ps7_0_axi_periph_AWVALID;
  M01_AXI_bready <= m01_couplers_to_ps7_0_axi_periph_BREADY;
  M01_AXI_rready <= m01_couplers_to_ps7_0_axi_periph_RREADY;
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M01_AXI_wvalid <= m01_couplers_to_ps7_0_axi_periph_WVALID;
  M02_AXI_araddr(31 downto 0) <= m02_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M02_AXI_arprot(2 downto 0) <= m02_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0);
  M02_AXI_arvalid <= m02_couplers_to_ps7_0_axi_periph_ARVALID;
  M02_AXI_awaddr(31 downto 0) <= m02_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M02_AXI_awprot(2 downto 0) <= m02_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0);
  M02_AXI_awvalid <= m02_couplers_to_ps7_0_axi_periph_AWVALID;
  M02_AXI_bready <= m02_couplers_to_ps7_0_axi_periph_BREADY;
  M02_AXI_rready <= m02_couplers_to_ps7_0_axi_periph_RREADY;
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M02_AXI_wvalid <= m02_couplers_to_ps7_0_axi_periph_WVALID;
  M03_AXI_araddr(31 downto 0) <= m03_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M03_AXI_arprot(2 downto 0) <= m03_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0);
  M03_AXI_arvalid <= m03_couplers_to_ps7_0_axi_periph_ARVALID;
  M03_AXI_awaddr(31 downto 0) <= m03_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M03_AXI_awprot(2 downto 0) <= m03_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0);
  M03_AXI_awvalid <= m03_couplers_to_ps7_0_axi_periph_AWVALID;
  M03_AXI_bready <= m03_couplers_to_ps7_0_axi_periph_BREADY;
  M03_AXI_rready <= m03_couplers_to_ps7_0_axi_periph_RREADY;
  M03_AXI_wdata(31 downto 0) <= m03_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M03_AXI_wstrb(3 downto 0) <= m03_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M03_AXI_wvalid <= m03_couplers_to_ps7_0_axi_periph_WVALID;
  M04_AXI_araddr(31 downto 0) <= m04_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M04_AXI_arvalid <= m04_couplers_to_ps7_0_axi_periph_ARVALID;
  M04_AXI_awaddr(31 downto 0) <= m04_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M04_AXI_awvalid <= m04_couplers_to_ps7_0_axi_periph_AWVALID;
  M04_AXI_bready <= m04_couplers_to_ps7_0_axi_periph_BREADY;
  M04_AXI_rready <= m04_couplers_to_ps7_0_axi_periph_RREADY;
  M04_AXI_wdata(31 downto 0) <= m04_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M04_AXI_wvalid <= m04_couplers_to_ps7_0_axi_periph_WVALID;
  M05_AXI_araddr(31 downto 0) <= m05_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M05_AXI_arvalid <= m05_couplers_to_ps7_0_axi_periph_ARVALID;
  M05_AXI_awaddr(31 downto 0) <= m05_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M05_AXI_awvalid <= m05_couplers_to_ps7_0_axi_periph_AWVALID;
  M05_AXI_bready <= m05_couplers_to_ps7_0_axi_periph_BREADY;
  M05_AXI_rready <= m05_couplers_to_ps7_0_axi_periph_RREADY;
  M05_AXI_wdata(31 downto 0) <= m05_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M05_AXI_wstrb(3 downto 0) <= m05_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M05_AXI_wvalid <= m05_couplers_to_ps7_0_axi_periph_WVALID;
  S00_AXI_arready <= ps7_0_axi_periph_to_s00_couplers_ARREADY;
  S00_AXI_awready <= ps7_0_axi_periph_to_s00_couplers_AWREADY;
  S00_AXI_bid(11 downto 0) <= ps7_0_axi_periph_to_s00_couplers_BID(11 downto 0);
  S00_AXI_bresp(1 downto 0) <= ps7_0_axi_periph_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= ps7_0_axi_periph_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= ps7_0_axi_periph_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rid(11 downto 0) <= ps7_0_axi_periph_to_s00_couplers_RID(11 downto 0);
  S00_AXI_rlast <= ps7_0_axi_periph_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= ps7_0_axi_periph_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= ps7_0_axi_periph_to_s00_couplers_RVALID;
  S00_AXI_wready <= ps7_0_axi_periph_to_s00_couplers_WREADY;
  m00_couplers_to_ps7_0_axi_periph_ARREADY(0) <= M00_AXI_arready(0);
  m00_couplers_to_ps7_0_axi_periph_AWREADY(0) <= M00_AXI_awready(0);
  m00_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_ps7_0_axi_periph_BVALID(0) <= M00_AXI_bvalid(0);
  m00_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_ps7_0_axi_periph_RVALID(0) <= M00_AXI_rvalid(0);
  m00_couplers_to_ps7_0_axi_periph_WREADY(0) <= M00_AXI_wready(0);
  m01_couplers_to_ps7_0_axi_periph_ARREADY <= M01_AXI_arready;
  m01_couplers_to_ps7_0_axi_periph_AWREADY <= M01_AXI_awready;
  m01_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_ps7_0_axi_periph_BVALID <= M01_AXI_bvalid;
  m01_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_ps7_0_axi_periph_RVALID <= M01_AXI_rvalid;
  m01_couplers_to_ps7_0_axi_periph_WREADY <= M01_AXI_wready;
  m02_couplers_to_ps7_0_axi_periph_ARREADY <= M02_AXI_arready;
  m02_couplers_to_ps7_0_axi_periph_AWREADY <= M02_AXI_awready;
  m02_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_ps7_0_axi_periph_BVALID <= M02_AXI_bvalid;
  m02_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_ps7_0_axi_periph_RVALID <= M02_AXI_rvalid;
  m02_couplers_to_ps7_0_axi_periph_WREADY <= M02_AXI_wready;
  m03_couplers_to_ps7_0_axi_periph_ARREADY <= M03_AXI_arready;
  m03_couplers_to_ps7_0_axi_periph_AWREADY <= M03_AXI_awready;
  m03_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M03_AXI_bresp(1 downto 0);
  m03_couplers_to_ps7_0_axi_periph_BVALID <= M03_AXI_bvalid;
  m03_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M03_AXI_rdata(31 downto 0);
  m03_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M03_AXI_rresp(1 downto 0);
  m03_couplers_to_ps7_0_axi_periph_RVALID <= M03_AXI_rvalid;
  m03_couplers_to_ps7_0_axi_periph_WREADY <= M03_AXI_wready;
  m04_couplers_to_ps7_0_axi_periph_ARREADY <= M04_AXI_arready;
  m04_couplers_to_ps7_0_axi_periph_AWREADY <= M04_AXI_awready;
  m04_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M04_AXI_bresp(1 downto 0);
  m04_couplers_to_ps7_0_axi_periph_BVALID <= M04_AXI_bvalid;
  m04_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M04_AXI_rdata(31 downto 0);
  m04_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M04_AXI_rresp(1 downto 0);
  m04_couplers_to_ps7_0_axi_periph_RVALID <= M04_AXI_rvalid;
  m04_couplers_to_ps7_0_axi_periph_WREADY <= M04_AXI_wready;
  m05_couplers_to_ps7_0_axi_periph_ARREADY <= M05_AXI_arready;
  m05_couplers_to_ps7_0_axi_periph_AWREADY <= M05_AXI_awready;
  m05_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M05_AXI_bresp(1 downto 0);
  m05_couplers_to_ps7_0_axi_periph_BVALID <= M05_AXI_bvalid;
  m05_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M05_AXI_rdata(31 downto 0);
  m05_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M05_AXI_rresp(1 downto 0);
  m05_couplers_to_ps7_0_axi_periph_RVALID <= M05_AXI_rvalid;
  m05_couplers_to_ps7_0_axi_periph_WREADY <= M05_AXI_wready;
  ps7_0_axi_periph_ACLK_net <= ACLK;
  ps7_0_axi_periph_ARESETN_net <= ARESETN;
  ps7_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARID(11 downto 0) <= S00_AXI_arid(11 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARLEN(3 downto 0) <= S00_AXI_arlen(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARLOCK(1 downto 0) <= S00_AXI_arlock(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  ps7_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWID(11 downto 0) <= S00_AXI_awid(11 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWLEN(3 downto 0) <= S00_AXI_awlen(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWLOCK(1 downto 0) <= S00_AXI_awlock(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  ps7_0_axi_periph_to_s00_couplers_BREADY <= S00_AXI_bready;
  ps7_0_axi_periph_to_s00_couplers_RREADY <= S00_AXI_rready;
  ps7_0_axi_periph_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  ps7_0_axi_periph_to_s00_couplers_WID(11 downto 0) <= S00_AXI_wid(11 downto 0);
  ps7_0_axi_periph_to_s00_couplers_WLAST <= S00_AXI_wlast;
  ps7_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_WVALID <= S00_AXI_wvalid;
m00_couplers: entity work.m00_couplers_imp_15SPJYW
     port map (
      M_ACLK => ps7_0_axi_periph_ACLK_net,
      M_ARESETN => ps7_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m00_couplers_to_ps7_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m00_couplers_to_ps7_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m00_couplers_to_ps7_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m00_couplers_to_ps7_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m00_couplers_to_ps7_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m00_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m00_couplers_to_ps7_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m00_couplers_to_ps7_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m00_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m00_couplers_to_ps7_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m00_couplers_to_ps7_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m00_couplers_to_ps7_0_axi_periph_WVALID(0),
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready(0) => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => xbar_to_m00_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_XU9C55
     port map (
      M_ACLK => ps7_0_axi_periph_ACLK_net,
      M_ARESETN => ps7_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m01_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready => m01_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m01_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m01_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready => m01_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m01_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m01_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m01_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m01_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m01_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m01_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m01_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m01_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m01_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arprot(2 downto 0) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      S_AXI_arready => xbar_to_m01_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awprot(2 downto 0) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      S_AXI_awready => xbar_to_m01_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready => xbar_to_m01_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_14WQB4R
     port map (
      M_ACLK => ps7_0_axi_periph_ACLK_net,
      M_ARESETN => ps7_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m02_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m02_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready => m02_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m02_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m02_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m02_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready => m02_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m02_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m02_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m02_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m02_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m02_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m02_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m02_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m02_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m02_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m02_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m02_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      S_AXI_arprot(2 downto 0) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      S_AXI_arready => xbar_to_m02_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      S_AXI_awprot(2 downto 0) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      S_AXI_awready => xbar_to_m02_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m02_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m02_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wready => xbar_to_m02_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid => xbar_to_m02_couplers_WVALID(2)
    );
m03_couplers: entity work.m03_couplers_imp_YFYJ3U
     port map (
      M_ACLK => ps7_0_axi_periph_ACLK_net,
      M_ARESETN => ps7_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m03_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m03_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready => m03_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m03_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m03_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m03_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready => m03_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m03_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m03_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m03_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m03_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m03_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m03_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m03_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m03_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m03_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m03_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m03_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m03_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      S_AXI_arprot(2 downto 0) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      S_AXI_arready => xbar_to_m03_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m03_couplers_ARVALID(3),
      S_AXI_awaddr(31 downto 0) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      S_AXI_awprot(2 downto 0) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      S_AXI_awready => xbar_to_m03_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m03_couplers_AWVALID(3),
      S_AXI_bready => xbar_to_m03_couplers_BREADY(3),
      S_AXI_bresp(1 downto 0) => xbar_to_m03_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m03_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m03_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m03_couplers_RREADY(3),
      S_AXI_rresp(1 downto 0) => xbar_to_m03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m03_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m03_couplers_WDATA(127 downto 96),
      S_AXI_wready => xbar_to_m03_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      S_AXI_wvalid => xbar_to_m03_couplers_WVALID(3)
    );
m04_couplers: entity work.m04_couplers_imp_17KQ732
     port map (
      M_ACLK => ps7_0_axi_periph_ACLK_net,
      M_ARESETN => ps7_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m04_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready => m04_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m04_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m04_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready => m04_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m04_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m04_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m04_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m04_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m04_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m04_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m04_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m04_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m04_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m04_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wvalid => m04_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      S_AXI_arready => xbar_to_m04_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m04_couplers_ARVALID(4),
      S_AXI_awaddr(31 downto 0) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      S_AXI_awready => xbar_to_m04_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m04_couplers_AWVALID(4),
      S_AXI_bready => xbar_to_m04_couplers_BREADY(4),
      S_AXI_bresp(1 downto 0) => xbar_to_m04_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m04_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m04_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m04_couplers_RREADY(4),
      S_AXI_rresp(1 downto 0) => xbar_to_m04_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m04_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m04_couplers_WDATA(159 downto 128),
      S_AXI_wready => xbar_to_m04_couplers_WREADY,
      S_AXI_wvalid => xbar_to_m04_couplers_WVALID(4)
    );
m05_couplers: entity work.m05_couplers_imp_VQEDA7
     port map (
      M_ACLK => ps7_0_axi_periph_ACLK_net,
      M_ARESETN => ps7_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m05_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready => m05_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m05_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m05_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready => m05_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m05_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m05_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m05_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m05_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m05_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m05_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m05_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m05_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m05_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m05_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m05_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m05_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      S_AXI_arready => xbar_to_m05_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m05_couplers_ARVALID(5),
      S_AXI_awaddr(31 downto 0) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      S_AXI_awready => xbar_to_m05_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m05_couplers_AWVALID(5),
      S_AXI_bready => xbar_to_m05_couplers_BREADY(5),
      S_AXI_bresp(1 downto 0) => xbar_to_m05_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m05_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m05_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m05_couplers_RREADY(5),
      S_AXI_rresp(1 downto 0) => xbar_to_m05_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m05_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m05_couplers_WDATA(191 downto 160),
      S_AXI_wready => xbar_to_m05_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      S_AXI_wvalid => xbar_to_m05_couplers_WVALID(5)
    );
s00_couplers: entity work.s00_couplers_imp_UYSKKA
     port map (
      M_ACLK => ps7_0_axi_periph_ACLK_net,
      M_ARESETN => ps7_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARID(11 downto 0),
      S_AXI_arlen(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARLEN(3 downto 0),
      S_AXI_arlock(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARLOCK(1 downto 0),
      S_AXI_arprot(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => ps7_0_axi_periph_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => ps7_0_axi_periph_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWID(11 downto 0),
      S_AXI_awlen(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWLEN(3 downto 0),
      S_AXI_awlock(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWLOCK(1 downto 0),
      S_AXI_awprot(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => ps7_0_axi_periph_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => ps7_0_axi_periph_to_s00_couplers_AWVALID,
      S_AXI_bid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_BID(11 downto 0),
      S_AXI_bready => ps7_0_axi_periph_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => ps7_0_axi_periph_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_RID(11 downto 0),
      S_AXI_rlast => ps7_0_axi_periph_to_s00_couplers_RLAST,
      S_AXI_rready => ps7_0_axi_periph_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => ps7_0_axi_periph_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_WID(11 downto 0),
      S_AXI_wlast => ps7_0_axi_periph_to_s00_couplers_WLAST,
      S_AXI_wready => ps7_0_axi_periph_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => ps7_0_axi_periph_to_s00_couplers_WVALID
    );
xbar: component design_1_xbar_0
     port map (
      aclk => ps7_0_axi_periph_ACLK_net,
      aresetn => ps7_0_axi_periph_ARESETN_net,
      m_axi_araddr(191 downto 160) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      m_axi_araddr(159 downto 128) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      m_axi_araddr(127 downto 96) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(17 downto 12) => NLW_xbar_m_axi_arprot_UNCONNECTED(17 downto 12),
      m_axi_arprot(11 downto 9) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      m_axi_arprot(8 downto 6) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      m_axi_arprot(5 downto 3) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      m_axi_arprot(2 downto 0) => NLW_xbar_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready(5) => xbar_to_m05_couplers_ARREADY,
      m_axi_arready(4) => xbar_to_m04_couplers_ARREADY,
      m_axi_arready(3) => xbar_to_m03_couplers_ARREADY,
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY,
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      m_axi_arvalid(5) => xbar_to_m05_couplers_ARVALID(5),
      m_axi_arvalid(4) => xbar_to_m04_couplers_ARVALID(4),
      m_axi_arvalid(3) => xbar_to_m03_couplers_ARVALID(3),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(191 downto 160) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      m_axi_awaddr(159 downto 128) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      m_axi_awaddr(127 downto 96) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(17 downto 12) => NLW_xbar_m_axi_awprot_UNCONNECTED(17 downto 12),
      m_axi_awprot(11 downto 9) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      m_axi_awprot(8 downto 6) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      m_axi_awprot(5 downto 3) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      m_axi_awprot(2 downto 0) => NLW_xbar_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready(5) => xbar_to_m05_couplers_AWREADY,
      m_axi_awready(4) => xbar_to_m04_couplers_AWREADY,
      m_axi_awready(3) => xbar_to_m03_couplers_AWREADY,
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY,
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      m_axi_awvalid(5) => xbar_to_m05_couplers_AWVALID(5),
      m_axi_awvalid(4) => xbar_to_m04_couplers_AWVALID(4),
      m_axi_awvalid(3) => xbar_to_m03_couplers_AWVALID(3),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(5) => xbar_to_m05_couplers_BREADY(5),
      m_axi_bready(4) => xbar_to_m04_couplers_BREADY(4),
      m_axi_bready(3) => xbar_to_m03_couplers_BREADY(3),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(11 downto 10) => xbar_to_m05_couplers_BRESP(1 downto 0),
      m_axi_bresp(9 downto 8) => xbar_to_m04_couplers_BRESP(1 downto 0),
      m_axi_bresp(7 downto 6) => xbar_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(5) => xbar_to_m05_couplers_BVALID,
      m_axi_bvalid(4) => xbar_to_m04_couplers_BVALID,
      m_axi_bvalid(3) => xbar_to_m03_couplers_BVALID,
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID,
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      m_axi_rdata(191 downto 160) => xbar_to_m05_couplers_RDATA(31 downto 0),
      m_axi_rdata(159 downto 128) => xbar_to_m04_couplers_RDATA(31 downto 0),
      m_axi_rdata(127 downto 96) => xbar_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(5) => xbar_to_m05_couplers_RREADY(5),
      m_axi_rready(4) => xbar_to_m04_couplers_RREADY(4),
      m_axi_rready(3) => xbar_to_m03_couplers_RREADY(3),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(11 downto 10) => xbar_to_m05_couplers_RRESP(1 downto 0),
      m_axi_rresp(9 downto 8) => xbar_to_m04_couplers_RRESP(1 downto 0),
      m_axi_rresp(7 downto 6) => xbar_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(5) => xbar_to_m05_couplers_RVALID,
      m_axi_rvalid(4) => xbar_to_m04_couplers_RVALID,
      m_axi_rvalid(3) => xbar_to_m03_couplers_RVALID,
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID,
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      m_axi_wdata(191 downto 160) => xbar_to_m05_couplers_WDATA(191 downto 160),
      m_axi_wdata(159 downto 128) => xbar_to_m04_couplers_WDATA(159 downto 128),
      m_axi_wdata(127 downto 96) => xbar_to_m03_couplers_WDATA(127 downto 96),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(5) => xbar_to_m05_couplers_WREADY,
      m_axi_wready(4) => xbar_to_m04_couplers_WREADY,
      m_axi_wready(3) => xbar_to_m03_couplers_WREADY,
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY,
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY(0),
      m_axi_wstrb(23 downto 20) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      m_axi_wstrb(19 downto 16) => NLW_xbar_m_axi_wstrb_UNCONNECTED(19 downto 16),
      m_axi_wstrb(15 downto 12) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(5) => xbar_to_m05_couplers_WVALID(5),
      m_axi_wvalid(4) => xbar_to_m04_couplers_WVALID(4),
      m_axi_wvalid(3) => xbar_to_m03_couplers_WVALID(3),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    GPIO_0_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    LEDS_0 : out STD_LOGIC;
    datain_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    er0in_0 : in STD_LOGIC;
    pback_0 : out STD_LOGIC;
    pbce_0 : in STD_LOGIC;
    pbclk_0 : in STD_LOGIC;
    pbdata_0 : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    sbclk_0 : in STD_LOGIC;
    sbdatain_0 : in STD_LOGIC;
    sbdataout_0 : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=44,numReposBlks=33,numNonXlnxBlks=16,numHierBlks=11,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=4,bdsource=USER,da_axi4_cnt=10,da_board_cnt=1,da_clkrst_cnt=1,da_ps7_cnt=1,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_axi_gpio_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_axi_gpio_0_0;
  component design_1_processing_system7_0_0 is
  port (
    TTC0_WAVE0_OUT : out STD_LOGIC;
    TTC0_WAVE1_OUT : out STD_LOGIC;
    TTC0_WAVE2_OUT : out STD_LOGIC;
    M_AXI_GP0_ARVALID : out STD_LOGIC;
    M_AXI_GP0_AWVALID : out STD_LOGIC;
    M_AXI_GP0_BREADY : out STD_LOGIC;
    M_AXI_GP0_RREADY : out STD_LOGIC;
    M_AXI_GP0_WLAST : out STD_LOGIC;
    M_AXI_GP0_WVALID : out STD_LOGIC;
    M_AXI_GP0_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ACLK : in STD_LOGIC;
    M_AXI_GP0_ARREADY : in STD_LOGIC;
    M_AXI_GP0_AWREADY : in STD_LOGIC;
    M_AXI_GP0_BVALID : in STD_LOGIC;
    M_AXI_GP0_RLAST : in STD_LOGIC;
    M_AXI_GP0_RVALID : in STD_LOGIC;
    M_AXI_GP0_WREADY : in STD_LOGIC;
    M_AXI_GP0_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARREADY : out STD_LOGIC;
    S_AXI_HP0_AWREADY : out STD_LOGIC;
    S_AXI_HP0_BVALID : out STD_LOGIC;
    S_AXI_HP0_RLAST : out STD_LOGIC;
    S_AXI_HP0_RVALID : out STD_LOGIC;
    S_AXI_HP0_WREADY : out STD_LOGIC;
    S_AXI_HP0_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP0_RCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_WCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_RACOUNT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_WACOUNT : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_ACLK : in STD_LOGIC;
    S_AXI_HP0_ARVALID : in STD_LOGIC;
    S_AXI_HP0_AWVALID : in STD_LOGIC;
    S_AXI_HP0_BREADY : in STD_LOGIC;
    S_AXI_HP0_RDISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_RREADY : in STD_LOGIC;
    S_AXI_HP0_WLAST : in STD_LOGIC;
    S_AXI_HP0_WRISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_WVALID : in STD_LOGIC;
    S_AXI_HP0_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP0_WSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_CLK1 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component design_1_processing_system7_0_0;
  component design_1_rst_ps7_0_100M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_rst_ps7_0_100M_0;
  component design_1_IP_AXI_LEDS_0_0 is
  port (
    LEDS : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  end component design_1_IP_AXI_LEDS_0_0;
  component design_1_axis_data_fifo_0_0 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component design_1_axis_data_fifo_0_0;
  component design_1_axi_dma_0_0 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_wlast : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_bvalid : in STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    s2mm_prmry_reset_out_n : out STD_LOGIC;
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_s2mm_tvalid : in STD_LOGIC;
    s_axis_s2mm_tready : out STD_LOGIC;
    s_axis_s2mm_tlast : in STD_LOGIC;
    s2mm_introut : out STD_LOGIC
  );
  end component design_1_axi_dma_0_0;
  component design_1_axi_smc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC
  );
  end component design_1_axi_smc_0;
  component design_1_EventCapturer64bit_0_0 is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    datain : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tvalid : out STD_LOGIC;
    s_axis_tready : in STD_LOGIC;
    s_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : out STD_LOGIC;
    test : out STD_LOGIC
  );
  end component design_1_EventCapturer64bit_0_0;
  component design_1_OneStageSynchronizer_4_0 is
  port (
    clk : in STD_LOGIC;
    async_signal : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sync_signal : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_OneStageSynchronizer_4_0;
  component design_1_axi_gpio_1_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_axi_gpio_1_0;
  signal EventCapturer64bit_0_s_axis_tdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal EventCapturer64bit_0_s_axis_tkeep : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal EventCapturer64bit_0_s_axis_tlast : STD_LOGIC;
  signal EventCapturer64bit_0_s_axis_tvalid : STD_LOGIC;
  signal IP_AXI_LEDS_0_LEDS : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK5_ackTime : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_acknowledges : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_ackpr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_ackpren : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_breaken : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK5_currentpr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_currentpren : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_deadTime : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_keysen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_keysout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_linepr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_linepren : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK5_minTime : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_mintimepr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_mintimepren : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK5_ready : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK5_reset : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK5_softShutdownTimer : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_softshutdownen : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK5_softshutdownpr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK5_timeerror : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_ackTime : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_acknowledges : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_ackpr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_ackpren : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_breaken : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK6_currentpr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_currentpren : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_deadTime : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_keysen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_keysout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_linepr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_linepren : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK6_minTime : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_mintimepr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_mintimepren : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK6_ready : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK6_reset : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK6_softShutdownTimer : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_softshutdownen : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK6_softshutdownpr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK6_timeerror : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_ackTime : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_acknowledges : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_ackpr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_ackpren : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_breaken : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK9_currentpr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_currentpren : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_deadTime : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_keysen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_keysout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_linepr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_linepren : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK9_minTime : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_mintimepr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_mintimepren : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK9_ready : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK9_reset : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK9_softShutdownTimer : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_softshutdownen : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TK9_softshutdownpr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal IP_AXI_ManagerSerial_0_TK9_timeerror : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_ackTime : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_acknowledges : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_ackpr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_ackpren : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_breaken : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TKA_currentpr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_currentpren : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_deadTime : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_keysen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_keysout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_linepr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_linepren : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TKA_minTime : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_mintimepr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_mintimepren : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TKA_ready : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TKA_reset : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TKA_softShutdownTimer : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_softshutdownen : STD_LOGIC;
  signal IP_AXI_ManagerSerial_0_TKA_softshutdownpr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal IP_AXI_ManagerSerial_0_TKA_timeerror : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Net : STD_LOGIC;
  signal Net1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal OneStageSynchronizer_4_sync_signal : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ParallelBusSlave_ver_0_pback : STD_LOGIC;
  signal SerialBusSlave_ver_2_0_sbdataout : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_BREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_BVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_WLAST : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_WREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_WVALID : STD_LOGIC;
  signal axi_gpio_0_GPIO_TRI_O : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_smc_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smc_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_smc_M00_AXI_BREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_BVALID : STD_LOGIC;
  signal axi_smc_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_smc_M00_AXI_WLAST : STD_LOGIC;
  signal axi_smc_M00_AXI_WREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_smc_M00_AXI_WVALID : STD_LOGIC;
  signal axis_data_fifo_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_data_fifo_0_M_AXIS_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axis_data_fifo_0_M_AXIS_TLAST : STD_LOGIC;
  signal axis_data_fifo_0_M_AXIS_TREADY : STD_LOGIC;
  signal axis_data_fifo_0_M_AXIS_TVALID : STD_LOGIC;
  signal axis_data_fifo_0_s_axis_tready : STD_LOGIC;
  signal datain_0_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal er0in_0_1 : STD_LOGIC;
  signal pbce_0_1 : STD_LOGIC;
  signal pbclk_0_1 : STD_LOGIC;
  signal processing_system7_0_DDR_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal processing_system7_0_DDR_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_DDR_CAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_CKE : STD_LOGIC;
  signal processing_system7_0_DDR_CK_N : STD_LOGIC;
  signal processing_system7_0_DDR_CK_P : STD_LOGIC;
  signal processing_system7_0_DDR_CS_N : STD_LOGIC;
  signal processing_system7_0_DDR_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_DDR_DQS_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQS_P : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_ODT : STD_LOGIC;
  signal processing_system7_0_DDR_RAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_RESET_N : STD_LOGIC;
  signal processing_system7_0_DDR_WE_N : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal processing_system7_0_FCLK_RESET0_N : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRN : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRP : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal processing_system7_0_FIXED_IO_PS_CLK : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_PORB : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_SRSTB : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M00_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M04_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M04_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M04_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M04_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M04_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M04_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M04_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M04_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M04_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M04_AXI_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_WVALID : STD_LOGIC;
  signal rst_ps7_0_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sbclk_0_1 : STD_LOGIC;
  signal sbdatain_0_1 : STD_LOGIC;
  signal NLW_EventCapturer64bit_0_test_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_0_s2mm_introut_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_0_s2mm_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_HP0_ARREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_HP0_RLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_HP0_RVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_TTC0_WAVE0_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_TTC0_WAVE1_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_TTC0_WAVE2_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_HP0_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_rst_ps7_0_100M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_ps7_0_100M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_0_100M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_0_100M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of DDR_cas_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CAS_N";
  attribute X_INTERFACE_INFO of DDR_ck_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_N";
  attribute X_INTERFACE_INFO of DDR_ck_p : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_P";
  attribute X_INTERFACE_INFO of DDR_cke : signal is "xilinx.com:interface:ddrx:1.0 DDR CKE";
  attribute X_INTERFACE_INFO of DDR_cs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CS_N";
  attribute X_INTERFACE_INFO of DDR_odt : signal is "xilinx.com:interface:ddrx:1.0 DDR ODT";
  attribute X_INTERFACE_INFO of DDR_ras_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RAS_N";
  attribute X_INTERFACE_INFO of DDR_reset_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RESET_N";
  attribute X_INTERFACE_INFO of DDR_we_n : signal is "xilinx.com:interface:ddrx:1.0 DDR WE_N";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrn : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of FIXED_IO_ddr_vrn : signal is "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrp : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_clk : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_porb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_srstb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB";
  attribute X_INTERFACE_INFO of DDR_addr : signal is "xilinx.com:interface:ddrx:1.0 DDR ADDR";
  attribute X_INTERFACE_PARAMETER of DDR_addr : signal is "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of DDR_ba : signal is "xilinx.com:interface:ddrx:1.0 DDR BA";
  attribute X_INTERFACE_INFO of DDR_dm : signal is "xilinx.com:interface:ddrx:1.0 DDR DM";
  attribute X_INTERFACE_INFO of DDR_dq : signal is "xilinx.com:interface:ddrx:1.0 DDR DQ";
  attribute X_INTERFACE_INFO of DDR_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_N";
  attribute X_INTERFACE_INFO of DDR_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_P";
  attribute X_INTERFACE_INFO of FIXED_IO_mio : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO";
  attribute X_INTERFACE_INFO of GPIO_0_tri_o : signal is "xilinx.com:interface:gpio:1.0 GPIO_0 TRI_O";
begin
  GPIO_0_tri_o(0) <= axi_gpio_0_GPIO_TRI_O(0);
  LEDS_0 <= IP_AXI_LEDS_0_LEDS;
  datain_0_1(15 downto 0) <= datain_0(15 downto 0);
  er0in_0_1 <= er0in_0;
  pback_0 <= ParallelBusSlave_ver_0_pback;
  pbce_0_1 <= pbce_0;
  pbclk_0_1 <= pbclk_0;
  sbclk_0_1 <= sbclk_0;
  sbdatain_0_1 <= sbdatain_0;
  sbdataout_0 <= SerialBusSlave_ver_2_0_sbdataout;
EventCapturer64bit_0: component design_1_EventCapturer64bit_0_0
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      datain(15 downto 0) => OneStageSynchronizer_4_sync_signal(15 downto 0),
      resetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s_axis_tdata(31 downto 0) => EventCapturer64bit_0_s_axis_tdata(31 downto 0),
      s_axis_tkeep(3 downto 0) => EventCapturer64bit_0_s_axis_tkeep(3 downto 0),
      s_axis_tlast => EventCapturer64bit_0_s_axis_tlast,
      s_axis_tready => axis_data_fifo_0_s_axis_tready,
      s_axis_tvalid => EventCapturer64bit_0_s_axis_tvalid,
      test => NLW_EventCapturer64bit_0_test_UNCONNECTED
    );
IP_AXI_LEDS_0: component design_1_IP_AXI_LEDS_0_0
     port map (
      LEDS => IP_AXI_LEDS_0_LEDS,
      s00_axi_aclk => processing_system7_0_FCLK_CLK0,
      s00_axi_araddr(3 downto 0) => ps7_0_axi_periph_M01_AXI_ARADDR(3 downto 0),
      s00_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s00_axi_arprot(2 downto 0) => ps7_0_axi_periph_M01_AXI_ARPROT(2 downto 0),
      s00_axi_arready => ps7_0_axi_periph_M01_AXI_ARREADY,
      s00_axi_arvalid => ps7_0_axi_periph_M01_AXI_ARVALID,
      s00_axi_awaddr(3 downto 0) => ps7_0_axi_periph_M01_AXI_AWADDR(3 downto 0),
      s00_axi_awprot(2 downto 0) => ps7_0_axi_periph_M01_AXI_AWPROT(2 downto 0),
      s00_axi_awready => ps7_0_axi_periph_M01_AXI_AWREADY,
      s00_axi_awvalid => ps7_0_axi_periph_M01_AXI_AWVALID,
      s00_axi_bready => ps7_0_axi_periph_M01_AXI_BREADY,
      s00_axi_bresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => ps7_0_axi_periph_M01_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      s00_axi_rready => ps7_0_axi_periph_M01_AXI_RREADY,
      s00_axi_rresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => ps7_0_axi_periph_M01_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      s00_axi_wready => ps7_0_axi_periph_M01_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => ps7_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => ps7_0_axi_periph_M01_AXI_WVALID
    );
Invertor: entity work.Invertor_imp_6Q0FNV
     port map (
      Din(15 downto 0) => OneStageSynchronizer_4_sync_signal(15 downto 0),
      TK1_acknowledges(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_acknowledges(7 downto 0),
      TK1_ackpr(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_ackpr(7 downto 0),
      TK1_ackpren(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_ackpren(7 downto 0),
      TK1_acktime(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_ackTime(7 downto 0),
      TK1_breaken => IP_AXI_ManagerSerial_0_TK9_breaken,
      TK1_currentpr(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_currentpr(7 downto 0),
      TK1_currentpren(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_currentpren(7 downto 0),
      TK1_deadtime(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_deadTime(7 downto 0),
      TK1_keysen(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_keysen(7 downto 0),
      TK1_keysout(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_keysout(7 downto 0),
      TK1_linepr(1 downto 0) => IP_AXI_ManagerSerial_0_TK9_linepr(1 downto 0),
      TK1_linepren => IP_AXI_ManagerSerial_0_TK9_linepren,
      TK1_mintime(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_minTime(7 downto 0),
      TK1_mintimepr(1 downto 0) => IP_AXI_ManagerSerial_0_TK9_mintimepr(1 downto 0),
      TK1_mintimepren => IP_AXI_ManagerSerial_0_TK9_mintimepren,
      TK1_ready => IP_AXI_ManagerSerial_0_TK9_ready,
      TK1_reset => IP_AXI_ManagerSerial_0_TK9_reset,
      TK1_softshutdownen => IP_AXI_ManagerSerial_0_TK9_softshutdownen,
      TK1_softshutdownpr(1 downto 0) => IP_AXI_ManagerSerial_0_TK9_softshutdownpr(1 downto 0),
      TK1_softshutdowntimer(15 downto 0) => IP_AXI_ManagerSerial_0_TK9_softShutdownTimer(15 downto 0),
      TK1_timeerror(15 downto 0) => IP_AXI_ManagerSerial_0_TK9_timeerror(15 downto 0),
      TK2_acknowledges(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_acknowledges(7 downto 0),
      TK2_ackpr(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_ackpr(7 downto 0),
      TK2_ackpren(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_ackpren(7 downto 0),
      TK2_acktime(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_ackTime(7 downto 0),
      TK2_breaken => IP_AXI_ManagerSerial_0_TKA_breaken,
      TK2_currentpr(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_currentpr(7 downto 0),
      TK2_currentpren(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_currentpren(7 downto 0),
      TK2_deadtime(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_deadTime(7 downto 0),
      TK2_keysen(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_keysen(7 downto 0),
      TK2_keysout(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_keysout(7 downto 0),
      TK2_linepr(1 downto 0) => IP_AXI_ManagerSerial_0_TKA_linepr(1 downto 0),
      TK2_linepren => IP_AXI_ManagerSerial_0_TKA_linepren,
      TK2_mintime(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_minTime(7 downto 0),
      TK2_mintimepr(1 downto 0) => IP_AXI_ManagerSerial_0_TKA_mintimepr(1 downto 0),
      TK2_mintimepren => IP_AXI_ManagerSerial_0_TKA_mintimepren,
      TK2_ready => IP_AXI_ManagerSerial_0_TKA_ready,
      TK2_reset => IP_AXI_ManagerSerial_0_TKA_reset,
      TK2_softshutdownen => IP_AXI_ManagerSerial_0_TKA_softshutdownen,
      TK2_softshutdownpr(1 downto 0) => IP_AXI_ManagerSerial_0_TKA_softshutdownpr(1 downto 0),
      TK2_softshutdowntimer(15 downto 0) => IP_AXI_ManagerSerial_0_TKA_softShutdownTimer(15 downto 0),
      TK2_timeerror(15 downto 0) => IP_AXI_ManagerSerial_0_TKA_timeerror(15 downto 0),
      TK3_acknowledges(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_acknowledges(7 downto 0),
      TK3_ackpr(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_ackpr(7 downto 0),
      TK3_ackpren(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_ackpren(7 downto 0),
      TK3_acktime(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_ackTime(7 downto 0),
      TK3_breaken => IP_AXI_ManagerSerial_0_TK5_breaken,
      TK3_currentpr(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_currentpr(7 downto 0),
      TK3_currentpren(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_currentpren(7 downto 0),
      TK3_deadtime(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_deadTime(7 downto 0),
      TK3_keysen(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_keysen(7 downto 0),
      TK3_keysout(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_keysout(7 downto 0),
      TK3_linepr(1 downto 0) => IP_AXI_ManagerSerial_0_TK5_linepr(1 downto 0),
      TK3_linepren => IP_AXI_ManagerSerial_0_TK5_linepren,
      TK3_mintime(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_minTime(7 downto 0),
      TK3_mintimepr(1 downto 0) => IP_AXI_ManagerSerial_0_TK5_mintimepr(1 downto 0),
      TK3_mintimepren => IP_AXI_ManagerSerial_0_TK5_mintimepren,
      TK3_ready => IP_AXI_ManagerSerial_0_TK5_ready,
      TK3_reset => IP_AXI_ManagerSerial_0_TK5_reset,
      TK3_softshutdownen => IP_AXI_ManagerSerial_0_TK5_softshutdownen,
      TK3_softshutdownpr(1 downto 0) => IP_AXI_ManagerSerial_0_TK5_softshutdownpr(1 downto 0),
      TK3_softshutdowntimer(15 downto 0) => IP_AXI_ManagerSerial_0_TK5_softShutdownTimer(15 downto 0),
      TK3_timeerror(15 downto 0) => IP_AXI_ManagerSerial_0_TK5_timeerror(15 downto 0),
      TK_acknowledges(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_acknowledges(7 downto 0),
      TK_ackpr(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_ackpr(7 downto 0),
      TK_ackpren(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_ackpren(7 downto 0),
      TK_acktime(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_ackTime(7 downto 0),
      TK_breaken => IP_AXI_ManagerSerial_0_TK6_breaken,
      TK_currentpr(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_currentpr(7 downto 0),
      TK_currentpren(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_currentpren(7 downto 0),
      TK_deadtime(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_deadTime(7 downto 0),
      TK_keysen(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_keysen(7 downto 0),
      TK_keysout(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_keysout(7 downto 0),
      TK_linepr(1 downto 0) => IP_AXI_ManagerSerial_0_TK6_linepr(1 downto 0),
      TK_linepren => IP_AXI_ManagerSerial_0_TK6_linepren,
      TK_mintime(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_minTime(7 downto 0),
      TK_mintimepr(1 downto 0) => IP_AXI_ManagerSerial_0_TK6_mintimepr(1 downto 0),
      TK_mintimepren => IP_AXI_ManagerSerial_0_TK6_mintimepren,
      TK_ready => IP_AXI_ManagerSerial_0_TK6_ready,
      TK_reset => IP_AXI_ManagerSerial_0_TK6_reset,
      TK_softshutdownen => IP_AXI_ManagerSerial_0_TK6_softshutdownen,
      TK_softshutdownpr(1 downto 0) => IP_AXI_ManagerSerial_0_TK6_softshutdownpr(1 downto 0),
      TK_softshutdowntimer(15 downto 0) => IP_AXI_ManagerSerial_0_TK6_softShutdownTimer(15 downto 0),
      TK_timeerror(15 downto 0) => IP_AXI_ManagerSerial_0_TK6_timeerror(15 downto 0),
      clk => processing_system7_0_FCLK_CLK0,
      er0in_0 => er0in_0_1
    );
OneStageSynchronizer_4: component design_1_OneStageSynchronizer_4_0
     port map (
      async_signal(15 downto 0) => datain_0_1(15 downto 0),
      clk => Net,
      sync_signal(15 downto 0) => OneStageSynchronizer_4_sync_signal(15 downto 0)
    );
ParallelBusSlave: entity work.ParallelBusSlave_imp_AOEBEC
     port map (
      S00_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M03_AXI_ARADDR(31 downto 0),
      S00_AXI_arprot(2 downto 0) => ps7_0_axi_periph_M03_AXI_ARPROT(2 downto 0),
      S00_AXI_arready => ps7_0_axi_periph_M03_AXI_ARREADY,
      S00_AXI_arvalid => ps7_0_axi_periph_M03_AXI_ARVALID,
      S00_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M03_AXI_AWADDR(31 downto 0),
      S00_AXI_awprot(2 downto 0) => ps7_0_axi_periph_M03_AXI_AWPROT(2 downto 0),
      S00_AXI_awready => ps7_0_axi_periph_M03_AXI_AWREADY,
      S00_AXI_awvalid => ps7_0_axi_periph_M03_AXI_AWVALID,
      S00_AXI_bready => ps7_0_axi_periph_M03_AXI_BREADY,
      S00_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M03_AXI_BRESP(1 downto 0),
      S00_AXI_bvalid => ps7_0_axi_periph_M03_AXI_BVALID,
      S00_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M03_AXI_RDATA(31 downto 0),
      S00_AXI_rready => ps7_0_axi_periph_M03_AXI_RREADY,
      S00_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M03_AXI_RRESP(1 downto 0),
      S00_AXI_rvalid => ps7_0_axi_periph_M03_AXI_RVALID,
      S00_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M03_AXI_WDATA(31 downto 0),
      S00_AXI_wready => ps7_0_axi_periph_M03_AXI_WREADY,
      S00_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M03_AXI_WSTRB(3 downto 0),
      S00_AXI_wvalid => ps7_0_axi_periph_M03_AXI_WVALID,
      clk => Net,
      pback_0 => ParallelBusSlave_ver_0_pback,
      pbce_0 => pbce_0_1,
      pbclk_0 => pbclk_0_1,
      pbdata_0(15 downto 0) => pbdata_0(15 downto 0),
      s00_axi_aclk => processing_system7_0_FCLK_CLK0,
      s00_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0)
    );
SerialBusSlave: entity work.SerialBusSlave_imp_8O1ME6
     port map (
      S00_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M02_AXI_ARADDR(31 downto 0),
      S00_AXI_arprot(2 downto 0) => ps7_0_axi_periph_M02_AXI_ARPROT(2 downto 0),
      S00_AXI_arready => ps7_0_axi_periph_M02_AXI_ARREADY,
      S00_AXI_arvalid => ps7_0_axi_periph_M02_AXI_ARVALID,
      S00_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M02_AXI_AWADDR(31 downto 0),
      S00_AXI_awprot(2 downto 0) => ps7_0_axi_periph_M02_AXI_AWPROT(2 downto 0),
      S00_AXI_awready => ps7_0_axi_periph_M02_AXI_AWREADY,
      S00_AXI_awvalid => ps7_0_axi_periph_M02_AXI_AWVALID,
      S00_AXI_bready => ps7_0_axi_periph_M02_AXI_BREADY,
      S00_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M02_AXI_BRESP(1 downto 0),
      S00_AXI_bvalid => ps7_0_axi_periph_M02_AXI_BVALID,
      S00_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M02_AXI_RDATA(31 downto 0),
      S00_AXI_rready => ps7_0_axi_periph_M02_AXI_RREADY,
      S00_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M02_AXI_RRESP(1 downto 0),
      S00_AXI_rvalid => ps7_0_axi_periph_M02_AXI_RVALID,
      S00_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      S00_AXI_wready => ps7_0_axi_periph_M02_AXI_WREADY,
      S00_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M02_AXI_WSTRB(3 downto 0),
      S00_AXI_wvalid => ps7_0_axi_periph_M02_AXI_WVALID,
      TK5_acknowledges(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_acknowledges(7 downto 0),
      TK5_ackpr(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_ackpr(7 downto 0),
      TK5_ackpren(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_ackpren(7 downto 0),
      TK5_acktime(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_ackTime(7 downto 0),
      TK5_breaken => IP_AXI_ManagerSerial_0_TK5_breaken,
      TK5_currentpr(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_currentpr(7 downto 0),
      TK5_currentpren(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_currentpren(7 downto 0),
      TK5_deadtime(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_deadTime(7 downto 0),
      TK5_keysen(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_keysen(7 downto 0),
      TK5_keysout(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_keysout(7 downto 0),
      TK5_linepr(1 downto 0) => IP_AXI_ManagerSerial_0_TK5_linepr(1 downto 0),
      TK5_linepren => IP_AXI_ManagerSerial_0_TK5_linepren,
      TK5_mintime(7 downto 0) => IP_AXI_ManagerSerial_0_TK5_minTime(7 downto 0),
      TK5_mintimepr(1 downto 0) => IP_AXI_ManagerSerial_0_TK5_mintimepr(1 downto 0),
      TK5_mintimepren => IP_AXI_ManagerSerial_0_TK5_mintimepren,
      TK5_ready => IP_AXI_ManagerSerial_0_TK5_ready,
      TK5_reset => IP_AXI_ManagerSerial_0_TK5_reset,
      TK5_softshutdownen => IP_AXI_ManagerSerial_0_TK5_softshutdownen,
      TK5_softshutdownpr(1 downto 0) => IP_AXI_ManagerSerial_0_TK5_softshutdownpr(1 downto 0),
      TK5_softshutdowntimer(15 downto 0) => IP_AXI_ManagerSerial_0_TK5_softShutdownTimer(15 downto 0),
      TK5_timeerror(15 downto 0) => IP_AXI_ManagerSerial_0_TK5_timeerror(15 downto 0),
      TK6_acknowledges(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_acknowledges(7 downto 0),
      TK6_ackpr(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_ackpr(7 downto 0),
      TK6_ackpren(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_ackpren(7 downto 0),
      TK6_acktime(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_ackTime(7 downto 0),
      TK6_breaken => IP_AXI_ManagerSerial_0_TK6_breaken,
      TK6_currentpr(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_currentpr(7 downto 0),
      TK6_currentpren(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_currentpren(7 downto 0),
      TK6_deadtime(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_deadTime(7 downto 0),
      TK6_keysen(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_keysen(7 downto 0),
      TK6_keysout(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_keysout(7 downto 0),
      TK6_linepr(1 downto 0) => IP_AXI_ManagerSerial_0_TK6_linepr(1 downto 0),
      TK6_linepren => IP_AXI_ManagerSerial_0_TK6_linepren,
      TK6_mintime(7 downto 0) => IP_AXI_ManagerSerial_0_TK6_minTime(7 downto 0),
      TK6_mintimepr(1 downto 0) => IP_AXI_ManagerSerial_0_TK6_mintimepr(1 downto 0),
      TK6_mintimepren => IP_AXI_ManagerSerial_0_TK6_mintimepren,
      TK6_ready => IP_AXI_ManagerSerial_0_TK6_ready,
      TK6_reset => IP_AXI_ManagerSerial_0_TK6_reset,
      TK6_softshutdownen => IP_AXI_ManagerSerial_0_TK6_softshutdownen,
      TK6_softshutdownpr(1 downto 0) => IP_AXI_ManagerSerial_0_TK6_softshutdownpr(1 downto 0),
      TK6_softshutdowntimer(15 downto 0) => IP_AXI_ManagerSerial_0_TK6_softShutdownTimer(15 downto 0),
      TK6_timeerror(15 downto 0) => IP_AXI_ManagerSerial_0_TK6_timeerror(15 downto 0),
      TK9_acknowledges(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_acknowledges(7 downto 0),
      TK9_ackpr(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_ackpr(7 downto 0),
      TK9_ackpren(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_ackpren(7 downto 0),
      TK9_acktime(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_ackTime(7 downto 0),
      TK9_breaken => IP_AXI_ManagerSerial_0_TK9_breaken,
      TK9_currentpr(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_currentpr(7 downto 0),
      TK9_currentpren(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_currentpren(7 downto 0),
      TK9_deadtime(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_deadTime(7 downto 0),
      TK9_keysen(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_keysen(7 downto 0),
      TK9_keysout(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_keysout(7 downto 0),
      TK9_linepr(1 downto 0) => IP_AXI_ManagerSerial_0_TK9_linepr(1 downto 0),
      TK9_linepren => IP_AXI_ManagerSerial_0_TK9_linepren,
      TK9_mintime(7 downto 0) => IP_AXI_ManagerSerial_0_TK9_minTime(7 downto 0),
      TK9_mintimepr(1 downto 0) => IP_AXI_ManagerSerial_0_TK9_mintimepr(1 downto 0),
      TK9_mintimepren => IP_AXI_ManagerSerial_0_TK9_mintimepren,
      TK9_ready => IP_AXI_ManagerSerial_0_TK9_ready,
      TK9_reset => IP_AXI_ManagerSerial_0_TK9_reset,
      TK9_softshutdownen => IP_AXI_ManagerSerial_0_TK9_softshutdownen,
      TK9_softshutdownpr(1 downto 0) => IP_AXI_ManagerSerial_0_TK9_softshutdownpr(1 downto 0),
      TK9_softshutdowntimer(15 downto 0) => IP_AXI_ManagerSerial_0_TK9_softShutdownTimer(15 downto 0),
      TK9_timeerror(15 downto 0) => IP_AXI_ManagerSerial_0_TK9_timeerror(15 downto 0),
      TKA_acknowledges(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_acknowledges(7 downto 0),
      TKA_ackpr(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_ackpr(7 downto 0),
      TKA_ackpren(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_ackpren(7 downto 0),
      TKA_acktime(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_ackTime(7 downto 0),
      TKA_breaken => IP_AXI_ManagerSerial_0_TKA_breaken,
      TKA_currentpr(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_currentpr(7 downto 0),
      TKA_currentpren(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_currentpren(7 downto 0),
      TKA_deadtime(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_deadTime(7 downto 0),
      TKA_keysen(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_keysen(7 downto 0),
      TKA_keysout(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_keysout(7 downto 0),
      TKA_linepr(1 downto 0) => IP_AXI_ManagerSerial_0_TKA_linepr(1 downto 0),
      TKA_linepren => IP_AXI_ManagerSerial_0_TKA_linepren,
      TKA_mintime(7 downto 0) => IP_AXI_ManagerSerial_0_TKA_minTime(7 downto 0),
      TKA_mintimepr(1 downto 0) => IP_AXI_ManagerSerial_0_TKA_mintimepr(1 downto 0),
      TKA_mintimepren => IP_AXI_ManagerSerial_0_TKA_mintimepren,
      TKA_ready => IP_AXI_ManagerSerial_0_TKA_ready,
      TKA_reset => IP_AXI_ManagerSerial_0_TKA_reset,
      TKA_softshutdownen => IP_AXI_ManagerSerial_0_TKA_softshutdownen,
      TKA_softshutdownpr(1 downto 0) => IP_AXI_ManagerSerial_0_TKA_softshutdownpr(1 downto 0),
      TKA_softshutdowntimer(15 downto 0) => IP_AXI_ManagerSerial_0_TKA_softShutdownTimer(15 downto 0),
      TKA_timeerror(15 downto 0) => IP_AXI_ManagerSerial_0_TKA_timeerror(15 downto 0),
      clk => Net,
      s00_axi_aclk => processing_system7_0_FCLK_CLK0,
      s00_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      sbclk_0 => sbclk_0_1,
      sbdatain_0 => sbdatain_0_1,
      sbdataout_0 => SerialBusSlave_ver_2_0_sbdataout,
      tkin(15 downto 0) => OneStageSynchronizer_4_sync_signal(15 downto 0)
    );
axi_dma_0: component design_1_axi_dma_0_0
     port map (
      axi_resetn => rst_ps7_0_100M_peripheral_aresetn(0),
      m_axi_s2mm_aclk => processing_system7_0_FCLK_CLK0,
      m_axi_s2mm_awaddr(31 downto 0) => axi_dma_0_M_AXI_S2MM_AWADDR(31 downto 0),
      m_axi_s2mm_awburst(1 downto 0) => axi_dma_0_M_AXI_S2MM_AWBURST(1 downto 0),
      m_axi_s2mm_awcache(3 downto 0) => axi_dma_0_M_AXI_S2MM_AWCACHE(3 downto 0),
      m_axi_s2mm_awlen(7 downto 0) => axi_dma_0_M_AXI_S2MM_AWLEN(7 downto 0),
      m_axi_s2mm_awprot(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWPROT(2 downto 0),
      m_axi_s2mm_awready => axi_dma_0_M_AXI_S2MM_AWREADY,
      m_axi_s2mm_awsize(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWSIZE(2 downto 0),
      m_axi_s2mm_awvalid => axi_dma_0_M_AXI_S2MM_AWVALID,
      m_axi_s2mm_bready => axi_dma_0_M_AXI_S2MM_BREADY,
      m_axi_s2mm_bresp(1 downto 0) => axi_dma_0_M_AXI_S2MM_BRESP(1 downto 0),
      m_axi_s2mm_bvalid => axi_dma_0_M_AXI_S2MM_BVALID,
      m_axi_s2mm_wdata(31 downto 0) => axi_dma_0_M_AXI_S2MM_WDATA(31 downto 0),
      m_axi_s2mm_wlast => axi_dma_0_M_AXI_S2MM_WLAST,
      m_axi_s2mm_wready => axi_dma_0_M_AXI_S2MM_WREADY,
      m_axi_s2mm_wstrb(3 downto 0) => axi_dma_0_M_AXI_S2MM_WSTRB(3 downto 0),
      m_axi_s2mm_wvalid => axi_dma_0_M_AXI_S2MM_WVALID,
      s2mm_introut => NLW_axi_dma_0_s2mm_introut_UNCONNECTED,
      s2mm_prmry_reset_out_n => NLW_axi_dma_0_s2mm_prmry_reset_out_n_UNCONNECTED,
      s_axi_lite_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_lite_araddr(9 downto 0) => ps7_0_axi_periph_M04_AXI_ARADDR(9 downto 0),
      s_axi_lite_arready => ps7_0_axi_periph_M04_AXI_ARREADY,
      s_axi_lite_arvalid => ps7_0_axi_periph_M04_AXI_ARVALID,
      s_axi_lite_awaddr(9 downto 0) => ps7_0_axi_periph_M04_AXI_AWADDR(9 downto 0),
      s_axi_lite_awready => ps7_0_axi_periph_M04_AXI_AWREADY,
      s_axi_lite_awvalid => ps7_0_axi_periph_M04_AXI_AWVALID,
      s_axi_lite_bready => ps7_0_axi_periph_M04_AXI_BREADY,
      s_axi_lite_bresp(1 downto 0) => ps7_0_axi_periph_M04_AXI_BRESP(1 downto 0),
      s_axi_lite_bvalid => ps7_0_axi_periph_M04_AXI_BVALID,
      s_axi_lite_rdata(31 downto 0) => ps7_0_axi_periph_M04_AXI_RDATA(31 downto 0),
      s_axi_lite_rready => ps7_0_axi_periph_M04_AXI_RREADY,
      s_axi_lite_rresp(1 downto 0) => ps7_0_axi_periph_M04_AXI_RRESP(1 downto 0),
      s_axi_lite_rvalid => ps7_0_axi_periph_M04_AXI_RVALID,
      s_axi_lite_wdata(31 downto 0) => ps7_0_axi_periph_M04_AXI_WDATA(31 downto 0),
      s_axi_lite_wready => ps7_0_axi_periph_M04_AXI_WREADY,
      s_axi_lite_wvalid => ps7_0_axi_periph_M04_AXI_WVALID,
      s_axis_s2mm_tdata(31 downto 0) => axis_data_fifo_0_M_AXIS_TDATA(31 downto 0),
      s_axis_s2mm_tkeep(3 downto 0) => axis_data_fifo_0_M_AXIS_TKEEP(3 downto 0),
      s_axis_s2mm_tlast => axis_data_fifo_0_M_AXIS_TLAST,
      s_axis_s2mm_tready => axis_data_fifo_0_M_AXIS_TREADY,
      s_axis_s2mm_tvalid => axis_data_fifo_0_M_AXIS_TVALID
    );
axi_gpio_0: component design_1_axi_gpio_0_0
     port map (
      gpio_io_o(0) => axi_gpio_0_GPIO_TRI_O(0),
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(8 downto 0) => ps7_0_axi_periph_M00_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s_axi_arready => ps7_0_axi_periph_M00_AXI_ARREADY,
      s_axi_arvalid => ps7_0_axi_periph_M00_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => ps7_0_axi_periph_M00_AXI_AWADDR(8 downto 0),
      s_axi_awready => ps7_0_axi_periph_M00_AXI_AWREADY,
      s_axi_awvalid => ps7_0_axi_periph_M00_AXI_AWVALID(0),
      s_axi_bready => ps7_0_axi_periph_M00_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => ps7_0_axi_periph_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      s_axi_rready => ps7_0_axi_periph_M00_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => ps7_0_axi_periph_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      s_axi_wready => ps7_0_axi_periph_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => ps7_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => ps7_0_axi_periph_M00_AXI_WVALID(0)
    );
axi_gpio_1: component design_1_axi_gpio_1_0
     port map (
      gpio_io_i(15 downto 0) => OneStageSynchronizer_4_sync_signal(15 downto 0),
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(8 downto 0) => ps7_0_axi_periph_M05_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s_axi_arready => ps7_0_axi_periph_M05_AXI_ARREADY,
      s_axi_arvalid => ps7_0_axi_periph_M05_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => ps7_0_axi_periph_M05_AXI_AWADDR(8 downto 0),
      s_axi_awready => ps7_0_axi_periph_M05_AXI_AWREADY,
      s_axi_awvalid => ps7_0_axi_periph_M05_AXI_AWVALID,
      s_axi_bready => ps7_0_axi_periph_M05_AXI_BREADY,
      s_axi_bresp(1 downto 0) => ps7_0_axi_periph_M05_AXI_BRESP(1 downto 0),
      s_axi_bvalid => ps7_0_axi_periph_M05_AXI_BVALID,
      s_axi_rdata(31 downto 0) => ps7_0_axi_periph_M05_AXI_RDATA(31 downto 0),
      s_axi_rready => ps7_0_axi_periph_M05_AXI_RREADY,
      s_axi_rresp(1 downto 0) => ps7_0_axi_periph_M05_AXI_RRESP(1 downto 0),
      s_axi_rvalid => ps7_0_axi_periph_M05_AXI_RVALID,
      s_axi_wdata(31 downto 0) => ps7_0_axi_periph_M05_AXI_WDATA(31 downto 0),
      s_axi_wready => ps7_0_axi_periph_M05_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => ps7_0_axi_periph_M05_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => ps7_0_axi_periph_M05_AXI_WVALID
    );
axi_smc: component design_1_axi_smc_0
     port map (
      M00_AXI_awaddr(31 downto 0) => axi_smc_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_smc_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_smc_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(3 downto 0) => axi_smc_M00_AXI_AWLEN(3 downto 0),
      M00_AXI_awlock(1 downto 0) => axi_smc_M00_AXI_AWLOCK(1 downto 0),
      M00_AXI_awprot(2 downto 0) => axi_smc_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => axi_smc_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => axi_smc_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => axi_smc_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => axi_smc_M00_AXI_AWVALID,
      M00_AXI_bready => axi_smc_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_smc_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_smc_M00_AXI_BVALID,
      M00_AXI_wdata(63 downto 0) => axi_smc_M00_AXI_WDATA(63 downto 0),
      M00_AXI_wlast => axi_smc_M00_AXI_WLAST,
      M00_AXI_wready => axi_smc_M00_AXI_WREADY,
      M00_AXI_wstrb(7 downto 0) => axi_smc_M00_AXI_WSTRB(7 downto 0),
      M00_AXI_wvalid => axi_smc_M00_AXI_WVALID,
      S00_AXI_awaddr(31 downto 0) => axi_dma_0_M_AXI_S2MM_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => axi_dma_0_M_AXI_S2MM_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => axi_dma_0_M_AXI_S2MM_AWCACHE(3 downto 0),
      S00_AXI_awlen(7 downto 0) => axi_dma_0_M_AXI_S2MM_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => '0',
      S00_AXI_awprot(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => B"0000",
      S00_AXI_awready => axi_dma_0_M_AXI_S2MM_AWREADY,
      S00_AXI_awsize(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWSIZE(2 downto 0),
      S00_AXI_awvalid => axi_dma_0_M_AXI_S2MM_AWVALID,
      S00_AXI_bready => axi_dma_0_M_AXI_S2MM_BREADY,
      S00_AXI_bresp(1 downto 0) => axi_dma_0_M_AXI_S2MM_BRESP(1 downto 0),
      S00_AXI_bvalid => axi_dma_0_M_AXI_S2MM_BVALID,
      S00_AXI_wdata(31 downto 0) => axi_dma_0_M_AXI_S2MM_WDATA(31 downto 0),
      S00_AXI_wlast => axi_dma_0_M_AXI_S2MM_WLAST,
      S00_AXI_wready => axi_dma_0_M_AXI_S2MM_WREADY,
      S00_AXI_wstrb(3 downto 0) => axi_dma_0_M_AXI_S2MM_WSTRB(3 downto 0),
      S00_AXI_wvalid => axi_dma_0_M_AXI_S2MM_WVALID,
      aclk => processing_system7_0_FCLK_CLK0,
      aresetn => rst_ps7_0_100M_peripheral_aresetn(0)
    );
axis_data_fifo_0: component design_1_axis_data_fifo_0_0
     port map (
      m_axis_tdata(31 downto 0) => axis_data_fifo_0_M_AXIS_TDATA(31 downto 0),
      m_axis_tkeep(3 downto 0) => axis_data_fifo_0_M_AXIS_TKEEP(3 downto 0),
      m_axis_tlast => axis_data_fifo_0_M_AXIS_TLAST,
      m_axis_tready => axis_data_fifo_0_M_AXIS_TREADY,
      m_axis_tvalid => axis_data_fifo_0_M_AXIS_TVALID,
      s_axis_aclk => processing_system7_0_FCLK_CLK0,
      s_axis_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s_axis_tdata(31 downto 0) => EventCapturer64bit_0_s_axis_tdata(31 downto 0),
      s_axis_tkeep(3 downto 0) => EventCapturer64bit_0_s_axis_tkeep(3 downto 0),
      s_axis_tlast => EventCapturer64bit_0_s_axis_tlast,
      s_axis_tready => axis_data_fifo_0_s_axis_tready,
      s_axis_tvalid => EventCapturer64bit_0_s_axis_tvalid
    );
processing_system7_0: component design_1_processing_system7_0_0
     port map (
      DDR_Addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_BankAddr(2 downto 0) => DDR_ba(2 downto 0),
      DDR_CAS_n => DDR_cas_n,
      DDR_CKE => DDR_cke,
      DDR_CS_n => DDR_cs_n,
      DDR_Clk => DDR_ck_p,
      DDR_Clk_n => DDR_ck_n,
      DDR_DM(3 downto 0) => DDR_dm(3 downto 0),
      DDR_DQ(31 downto 0) => DDR_dq(31 downto 0),
      DDR_DQS(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_DQS_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_DRSTB => DDR_reset_n,
      DDR_ODT => DDR_odt,
      DDR_RAS_n => DDR_ras_n,
      DDR_VRN => FIXED_IO_ddr_vrn,
      DDR_VRP => FIXED_IO_ddr_vrp,
      DDR_WEB => DDR_we_n,
      FCLK_CLK0 => processing_system7_0_FCLK_CLK0,
      FCLK_CLK1 => Net,
      FCLK_RESET0_N => processing_system7_0_FCLK_RESET0_N,
      MIO(53 downto 0) => FIXED_IO_mio(53 downto 0),
      M_AXI_GP0_ACLK => processing_system7_0_FCLK_CLK0,
      M_AXI_GP0_ARADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      M_AXI_GP0_ARBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      M_AXI_GP0_ARCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      M_AXI_GP0_ARID(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      M_AXI_GP0_ARLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      M_AXI_GP0_ARLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      M_AXI_GP0_ARPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      M_AXI_GP0_ARQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      M_AXI_GP0_ARREADY => processing_system7_0_M_AXI_GP0_ARREADY,
      M_AXI_GP0_ARSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      M_AXI_GP0_ARVALID => processing_system7_0_M_AXI_GP0_ARVALID,
      M_AXI_GP0_AWADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      M_AXI_GP0_AWBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      M_AXI_GP0_AWCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      M_AXI_GP0_AWID(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      M_AXI_GP0_AWLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      M_AXI_GP0_AWLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      M_AXI_GP0_AWPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      M_AXI_GP0_AWQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      M_AXI_GP0_AWREADY => processing_system7_0_M_AXI_GP0_AWREADY,
      M_AXI_GP0_AWSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      M_AXI_GP0_AWVALID => processing_system7_0_M_AXI_GP0_AWVALID,
      M_AXI_GP0_BID(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      M_AXI_GP0_BREADY => processing_system7_0_M_AXI_GP0_BREADY,
      M_AXI_GP0_BRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      M_AXI_GP0_BVALID => processing_system7_0_M_AXI_GP0_BVALID,
      M_AXI_GP0_RDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      M_AXI_GP0_RID(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      M_AXI_GP0_RLAST => processing_system7_0_M_AXI_GP0_RLAST,
      M_AXI_GP0_RREADY => processing_system7_0_M_AXI_GP0_RREADY,
      M_AXI_GP0_RRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      M_AXI_GP0_RVALID => processing_system7_0_M_AXI_GP0_RVALID,
      M_AXI_GP0_WDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      M_AXI_GP0_WID(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      M_AXI_GP0_WLAST => processing_system7_0_M_AXI_GP0_WLAST,
      M_AXI_GP0_WREADY => processing_system7_0_M_AXI_GP0_WREADY,
      M_AXI_GP0_WSTRB(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      M_AXI_GP0_WVALID => processing_system7_0_M_AXI_GP0_WVALID,
      PS_CLK => FIXED_IO_ps_clk,
      PS_PORB => FIXED_IO_ps_porb,
      PS_SRSTB => FIXED_IO_ps_srstb,
      S_AXI_HP0_ACLK => processing_system7_0_FCLK_CLK0,
      S_AXI_HP0_ARADDR(31 downto 0) => B"00000000000000000000000000000000",
      S_AXI_HP0_ARBURST(1 downto 0) => B"01",
      S_AXI_HP0_ARCACHE(3 downto 0) => B"0011",
      S_AXI_HP0_ARID(5 downto 0) => B"000000",
      S_AXI_HP0_ARLEN(3 downto 0) => B"0000",
      S_AXI_HP0_ARLOCK(1 downto 0) => B"00",
      S_AXI_HP0_ARPROT(2 downto 0) => B"000",
      S_AXI_HP0_ARQOS(3 downto 0) => B"0000",
      S_AXI_HP0_ARREADY => NLW_processing_system7_0_S_AXI_HP0_ARREADY_UNCONNECTED,
      S_AXI_HP0_ARSIZE(2 downto 0) => B"011",
      S_AXI_HP0_ARVALID => '0',
      S_AXI_HP0_AWADDR(31 downto 0) => axi_smc_M00_AXI_AWADDR(31 downto 0),
      S_AXI_HP0_AWBURST(1 downto 0) => axi_smc_M00_AXI_AWBURST(1 downto 0),
      S_AXI_HP0_AWCACHE(3 downto 0) => axi_smc_M00_AXI_AWCACHE(3 downto 0),
      S_AXI_HP0_AWID(5 downto 0) => B"000000",
      S_AXI_HP0_AWLEN(3 downto 0) => axi_smc_M00_AXI_AWLEN(3 downto 0),
      S_AXI_HP0_AWLOCK(1 downto 0) => axi_smc_M00_AXI_AWLOCK(1 downto 0),
      S_AXI_HP0_AWPROT(2 downto 0) => axi_smc_M00_AXI_AWPROT(2 downto 0),
      S_AXI_HP0_AWQOS(3 downto 0) => axi_smc_M00_AXI_AWQOS(3 downto 0),
      S_AXI_HP0_AWREADY => axi_smc_M00_AXI_AWREADY,
      S_AXI_HP0_AWSIZE(2 downto 0) => axi_smc_M00_AXI_AWSIZE(2 downto 0),
      S_AXI_HP0_AWVALID => axi_smc_M00_AXI_AWVALID,
      S_AXI_HP0_BID(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_BID_UNCONNECTED(5 downto 0),
      S_AXI_HP0_BREADY => axi_smc_M00_AXI_BREADY,
      S_AXI_HP0_BRESP(1 downto 0) => axi_smc_M00_AXI_BRESP(1 downto 0),
      S_AXI_HP0_BVALID => axi_smc_M00_AXI_BVALID,
      S_AXI_HP0_RACOUNT(2 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED(2 downto 0),
      S_AXI_HP0_RCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_RDATA(63 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RDATA_UNCONNECTED(63 downto 0),
      S_AXI_HP0_RDISSUECAP1_EN => '0',
      S_AXI_HP0_RID(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RID_UNCONNECTED(5 downto 0),
      S_AXI_HP0_RLAST => NLW_processing_system7_0_S_AXI_HP0_RLAST_UNCONNECTED,
      S_AXI_HP0_RREADY => '0',
      S_AXI_HP0_RRESP(1 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RRESP_UNCONNECTED(1 downto 0),
      S_AXI_HP0_RVALID => NLW_processing_system7_0_S_AXI_HP0_RVALID_UNCONNECTED,
      S_AXI_HP0_WACOUNT(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED(5 downto 0),
      S_AXI_HP0_WCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_WDATA(63 downto 0) => axi_smc_M00_AXI_WDATA(63 downto 0),
      S_AXI_HP0_WID(5 downto 0) => B"000000",
      S_AXI_HP0_WLAST => axi_smc_M00_AXI_WLAST,
      S_AXI_HP0_WREADY => axi_smc_M00_AXI_WREADY,
      S_AXI_HP0_WRISSUECAP1_EN => '0',
      S_AXI_HP0_WSTRB(7 downto 0) => axi_smc_M00_AXI_WSTRB(7 downto 0),
      S_AXI_HP0_WVALID => axi_smc_M00_AXI_WVALID,
      TTC0_WAVE0_OUT => NLW_processing_system7_0_TTC0_WAVE0_OUT_UNCONNECTED,
      TTC0_WAVE1_OUT => NLW_processing_system7_0_TTC0_WAVE1_OUT_UNCONNECTED,
      TTC0_WAVE2_OUT => NLW_processing_system7_0_TTC0_WAVE2_OUT_UNCONNECTED
    );
ps7_0_axi_periph: entity work.design_1_ps7_0_axi_periph_0
     port map (
      ACLK => processing_system7_0_FCLK_CLK0,
      ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M00_ACLK => processing_system7_0_FCLK_CLK0,
      M00_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arready(0) => ps7_0_axi_periph_M00_AXI_ARREADY,
      M00_AXI_arvalid(0) => ps7_0_axi_periph_M00_AXI_ARVALID(0),
      M00_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awready(0) => ps7_0_axi_periph_M00_AXI_AWREADY,
      M00_AXI_awvalid(0) => ps7_0_axi_periph_M00_AXI_AWVALID(0),
      M00_AXI_bready(0) => ps7_0_axi_periph_M00_AXI_BREADY(0),
      M00_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid(0) => ps7_0_axi_periph_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready(0) => ps7_0_axi_periph_M00_AXI_RREADY(0),
      M00_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid(0) => ps7_0_axi_periph_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready(0) => ps7_0_axi_periph_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid(0) => ps7_0_axi_periph_M00_AXI_WVALID(0),
      M01_ACLK => processing_system7_0_FCLK_CLK0,
      M01_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M01_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M01_AXI_ARADDR(31 downto 0),
      M01_AXI_arprot(2 downto 0) => ps7_0_axi_periph_M01_AXI_ARPROT(2 downto 0),
      M01_AXI_arready => ps7_0_axi_periph_M01_AXI_ARREADY,
      M01_AXI_arvalid => ps7_0_axi_periph_M01_AXI_ARVALID,
      M01_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M01_AXI_AWADDR(31 downto 0),
      M01_AXI_awprot(2 downto 0) => ps7_0_axi_periph_M01_AXI_AWPROT(2 downto 0),
      M01_AXI_awready => ps7_0_axi_periph_M01_AXI_AWREADY,
      M01_AXI_awvalid => ps7_0_axi_periph_M01_AXI_AWVALID,
      M01_AXI_bready => ps7_0_axi_periph_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => ps7_0_axi_periph_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => ps7_0_axi_periph_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => ps7_0_axi_periph_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => ps7_0_axi_periph_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => ps7_0_axi_periph_M01_AXI_WVALID,
      M02_ACLK => processing_system7_0_FCLK_CLK0,
      M02_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M02_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M02_AXI_ARADDR(31 downto 0),
      M02_AXI_arprot(2 downto 0) => ps7_0_axi_periph_M02_AXI_ARPROT(2 downto 0),
      M02_AXI_arready => ps7_0_axi_periph_M02_AXI_ARREADY,
      M02_AXI_arvalid => ps7_0_axi_periph_M02_AXI_ARVALID,
      M02_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M02_AXI_AWADDR(31 downto 0),
      M02_AXI_awprot(2 downto 0) => ps7_0_axi_periph_M02_AXI_AWPROT(2 downto 0),
      M02_AXI_awready => ps7_0_axi_periph_M02_AXI_AWREADY,
      M02_AXI_awvalid => ps7_0_axi_periph_M02_AXI_AWVALID,
      M02_AXI_bready => ps7_0_axi_periph_M02_AXI_BREADY,
      M02_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid => ps7_0_axi_periph_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready => ps7_0_axi_periph_M02_AXI_RREADY,
      M02_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid => ps7_0_axi_periph_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready => ps7_0_axi_periph_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid => ps7_0_axi_periph_M02_AXI_WVALID,
      M03_ACLK => processing_system7_0_FCLK_CLK0,
      M03_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M03_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M03_AXI_ARADDR(31 downto 0),
      M03_AXI_arprot(2 downto 0) => ps7_0_axi_periph_M03_AXI_ARPROT(2 downto 0),
      M03_AXI_arready => ps7_0_axi_periph_M03_AXI_ARREADY,
      M03_AXI_arvalid => ps7_0_axi_periph_M03_AXI_ARVALID,
      M03_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M03_AXI_AWADDR(31 downto 0),
      M03_AXI_awprot(2 downto 0) => ps7_0_axi_periph_M03_AXI_AWPROT(2 downto 0),
      M03_AXI_awready => ps7_0_axi_periph_M03_AXI_AWREADY,
      M03_AXI_awvalid => ps7_0_axi_periph_M03_AXI_AWVALID,
      M03_AXI_bready => ps7_0_axi_periph_M03_AXI_BREADY,
      M03_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid => ps7_0_axi_periph_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready => ps7_0_axi_periph_M03_AXI_RREADY,
      M03_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid => ps7_0_axi_periph_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready => ps7_0_axi_periph_M03_AXI_WREADY,
      M03_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M03_AXI_WSTRB(3 downto 0),
      M03_AXI_wvalid => ps7_0_axi_periph_M03_AXI_WVALID,
      M04_ACLK => processing_system7_0_FCLK_CLK0,
      M04_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M04_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M04_AXI_ARADDR(31 downto 0),
      M04_AXI_arready => ps7_0_axi_periph_M04_AXI_ARREADY,
      M04_AXI_arvalid => ps7_0_axi_periph_M04_AXI_ARVALID,
      M04_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M04_AXI_AWADDR(31 downto 0),
      M04_AXI_awready => ps7_0_axi_periph_M04_AXI_AWREADY,
      M04_AXI_awvalid => ps7_0_axi_periph_M04_AXI_AWVALID,
      M04_AXI_bready => ps7_0_axi_periph_M04_AXI_BREADY,
      M04_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M04_AXI_BRESP(1 downto 0),
      M04_AXI_bvalid => ps7_0_axi_periph_M04_AXI_BVALID,
      M04_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M04_AXI_RDATA(31 downto 0),
      M04_AXI_rready => ps7_0_axi_periph_M04_AXI_RREADY,
      M04_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M04_AXI_RRESP(1 downto 0),
      M04_AXI_rvalid => ps7_0_axi_periph_M04_AXI_RVALID,
      M04_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M04_AXI_WDATA(31 downto 0),
      M04_AXI_wready => ps7_0_axi_periph_M04_AXI_WREADY,
      M04_AXI_wvalid => ps7_0_axi_periph_M04_AXI_WVALID,
      M05_ACLK => processing_system7_0_FCLK_CLK0,
      M05_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M05_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M05_AXI_ARADDR(31 downto 0),
      M05_AXI_arready => ps7_0_axi_periph_M05_AXI_ARREADY,
      M05_AXI_arvalid => ps7_0_axi_periph_M05_AXI_ARVALID,
      M05_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M05_AXI_AWADDR(31 downto 0),
      M05_AXI_awready => ps7_0_axi_periph_M05_AXI_AWREADY,
      M05_AXI_awvalid => ps7_0_axi_periph_M05_AXI_AWVALID,
      M05_AXI_bready => ps7_0_axi_periph_M05_AXI_BREADY,
      M05_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M05_AXI_BRESP(1 downto 0),
      M05_AXI_bvalid => ps7_0_axi_periph_M05_AXI_BVALID,
      M05_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M05_AXI_RDATA(31 downto 0),
      M05_AXI_rready => ps7_0_axi_periph_M05_AXI_RREADY,
      M05_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M05_AXI_RRESP(1 downto 0),
      M05_AXI_rvalid => ps7_0_axi_periph_M05_AXI_RVALID,
      M05_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M05_AXI_WDATA(31 downto 0),
      M05_AXI_wready => ps7_0_axi_periph_M05_AXI_WREADY,
      M05_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M05_AXI_WSTRB(3 downto 0),
      M05_AXI_wvalid => ps7_0_axi_periph_M05_AXI_WVALID,
      S00_ACLK => processing_system7_0_FCLK_CLK0,
      S00_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      S00_AXI_arid(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      S00_AXI_arlen(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      S00_AXI_arlock(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      S00_AXI_arprot(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      S00_AXI_arready => processing_system7_0_M_AXI_GP0_ARREADY,
      S00_AXI_arsize(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      S00_AXI_arvalid => processing_system7_0_M_AXI_GP0_ARVALID,
      S00_AXI_awaddr(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      S00_AXI_awid(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      S00_AXI_awlen(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      S00_AXI_awlock(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      S00_AXI_awprot(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      S00_AXI_awready => processing_system7_0_M_AXI_GP0_AWREADY,
      S00_AXI_awsize(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      S00_AXI_awvalid => processing_system7_0_M_AXI_GP0_AWVALID,
      S00_AXI_bid(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      S00_AXI_bready => processing_system7_0_M_AXI_GP0_BREADY,
      S00_AXI_bresp(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      S00_AXI_bvalid => processing_system7_0_M_AXI_GP0_BVALID,
      S00_AXI_rdata(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      S00_AXI_rid(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      S00_AXI_rlast => processing_system7_0_M_AXI_GP0_RLAST,
      S00_AXI_rready => processing_system7_0_M_AXI_GP0_RREADY,
      S00_AXI_rresp(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      S00_AXI_rvalid => processing_system7_0_M_AXI_GP0_RVALID,
      S00_AXI_wdata(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      S00_AXI_wid(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      S00_AXI_wlast => processing_system7_0_M_AXI_GP0_WLAST,
      S00_AXI_wready => processing_system7_0_M_AXI_GP0_WREADY,
      S00_AXI_wstrb(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      S00_AXI_wvalid => processing_system7_0_M_AXI_GP0_WVALID
    );
rst_ps7_0_100M: component design_1_rst_ps7_0_100M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_ps7_0_100M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => NLW_rst_ps7_0_100M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_ps7_0_100M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_ps7_0_100M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_ps7_0_100M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK0
    );
end STRUCTURE;
