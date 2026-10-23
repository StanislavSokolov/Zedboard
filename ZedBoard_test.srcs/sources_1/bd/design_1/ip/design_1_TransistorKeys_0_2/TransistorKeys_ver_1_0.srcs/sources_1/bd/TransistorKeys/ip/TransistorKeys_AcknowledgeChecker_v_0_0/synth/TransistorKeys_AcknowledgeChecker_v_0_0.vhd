-- (c) Copyright 1995-2026 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: setcorp:user:AcknowledgeChecker_ver_1_0:1.0
-- IP Revision: 2

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY TransistorKeys_AcknowledgeChecker_v_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    ackin : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    currentpren : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    ackpren : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    currentpr : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    ackpr : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    acktime : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    keyin : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    ready : IN STD_LOGIC;
    reset : IN STD_LOGIC
  );
END TransistorKeys_AcknowledgeChecker_v_0_0;

ARCHITECTURE TransistorKeys_AcknowledgeChecker_v_0_0_arch OF TransistorKeys_AcknowledgeChecker_v_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF TransistorKeys_AcknowledgeChecker_v_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT AcknowledgeChecker_ver_1_0 IS
    GENERIC (
      QUANTITY_ACKNOWLEDGES : INTEGER;
      COUNTER : INTEGER
    );
    PORT (
      clk : IN STD_LOGIC;
      ackin : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      currentpren : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      ackpren : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      currentpr : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      ackpr : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      acktime : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      keyin : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      ready : IN STD_LOGIC;
      reset : IN STD_LOGIC
    );
  END COMPONENT AcknowledgeChecker_ver_1_0;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF TransistorKeys_AcknowledgeChecker_v_0_0_arch: ARCHITECTURE IS "AcknowledgeChecker_ver_1_0,Vivado 2019.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF TransistorKeys_AcknowledgeChecker_v_0_0_arch : ARCHITECTURE IS "TransistorKeys_AcknowledgeChecker_v_0_0,AcknowledgeChecker_ver_1_0,{}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF TransistorKeys_AcknowledgeChecker_v_0_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset: SIGNAL IS "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF reset: SIGNAL IS "xilinx.com:signal:reset:1.0 reset RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : AcknowledgeChecker_ver_1_0
    GENERIC MAP (
      QUANTITY_ACKNOWLEDGES => 4,
      COUNTER => 500
    )
    PORT MAP (
      clk => clk,
      ackin => ackin,
      currentpren => currentpren,
      ackpren => ackpren,
      currentpr => currentpr,
      ackpr => ackpr,
      acktime => acktime,
      keyin => keyin,
      ready => ready,
      reset => reset
    );
END TransistorKeys_AcknowledgeChecker_v_0_0_arch;
