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

-- IP VLNV: setcorp:user:IP_AXI_ManagerSerialBusSlave:2.0
-- IP Revision: 4

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_IP_AXI_ManagerSerial_0_2 IS
  PORT (
    addressregister : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    dataout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    datain : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    rw : IN STD_LOGIC;
    dataready : IN STD_LOGIC;
    keysen5 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    deadTime5 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    minTime5 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ackTime5 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    currentpren5 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ackpren5 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    mintimepren5 : OUT STD_LOGIC;
    linepren5 : OUT STD_LOGIC;
    softshutdownpren5 : OUT STD_LOGIC;
    softShutdownTimer5 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    keysin5 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    ackin5 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    ackpr5 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    currentpr5 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    linepr5 : IN STD_LOGIC;
    softshutdownpr5 : IN STD_LOGIC;
    mintimepr5 : IN STD_LOGIC;
    timeerror5 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    breaken5 : OUT STD_LOGIC;
    ready5 : OUT STD_LOGIC;
    reset5 : OUT STD_LOGIC;
    keysen6 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    deadTime6 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    minTime6 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ackTime6 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    currentpren6 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ackpren6 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    mintimepren6 : OUT STD_LOGIC;
    linepren6 : OUT STD_LOGIC;
    softshutdownpren6 : OUT STD_LOGIC;
    softShutdownTimer6 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    keysin6 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    ackin6 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    ackpr6 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    currentpr6 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    linepr6 : IN STD_LOGIC;
    softshutdownpr6 : IN STD_LOGIC;
    mintimepr6 : IN STD_LOGIC;
    timeerror6 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    breaken6 : OUT STD_LOGIC;
    ready6 : OUT STD_LOGIC;
    reset6 : OUT STD_LOGIC;
    keysen9 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    deadTime9 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    minTime9 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ackTime9 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    currentpren9 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ackpren9 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    mintimepren9 : OUT STD_LOGIC;
    linepren9 : OUT STD_LOGIC;
    softshutdownpren9 : OUT STD_LOGIC;
    softShutdownTimer9 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    keysin9 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    ackin9 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    ackpr9 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    currentpr9 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    linepr9 : IN STD_LOGIC;
    softshutdownpr9 : IN STD_LOGIC;
    mintimepr9 : IN STD_LOGIC;
    timeerror9 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    breaken9 : OUT STD_LOGIC;
    ready9 : OUT STD_LOGIC;
    reset9 : OUT STD_LOGIC;
    keysenA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    deadTimeA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    minTimeA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ackTimeA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    currentprenA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ackprenA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    mintimeprenA : OUT STD_LOGIC;
    lineprenA : OUT STD_LOGIC;
    softshutdownprenA : OUT STD_LOGIC;
    softShutdownTimerA : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    keysinA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    ackinA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    ackprA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    currentprA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    lineprA : IN STD_LOGIC;
    softshutdownprA : IN STD_LOGIC;
    mintimeprA : IN STD_LOGIC;
    timeerrorA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    breakenA : OUT STD_LOGIC;
    readyA : OUT STD_LOGIC;
    resetA : OUT STD_LOGIC;
    tkin : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    s00_axi_awaddr : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    s00_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_awvalid : IN STD_LOGIC;
    s00_axi_awready : OUT STD_LOGIC;
    s00_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_wvalid : IN STD_LOGIC;
    s00_axi_wready : OUT STD_LOGIC;
    s00_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_bvalid : OUT STD_LOGIC;
    s00_axi_bready : IN STD_LOGIC;
    s00_axi_araddr : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    s00_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_arvalid : IN STD_LOGIC;
    s00_axi_arready : OUT STD_LOGIC;
    s00_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_rvalid : OUT STD_LOGIC;
    s00_axi_rready : IN STD_LOGIC;
    s00_axi_aclk : IN STD_LOGIC;
    s00_axi_aresetn : IN STD_LOGIC
  );
END design_1_IP_AXI_ManagerSerial_0_2;

ARCHITECTURE design_1_IP_AXI_ManagerSerial_0_2_arch OF design_1_IP_AXI_ManagerSerial_0_2 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_IP_AXI_ManagerSerial_0_2_arch: ARCHITECTURE IS "yes";
  COMPONENT IP_AXI_ManagerSerialBusSlave_v2_0 IS
    GENERIC (
      C_S00_AXI_DATA_WIDTH : INTEGER; -- Width of S_AXI data bus
      C_S00_AXI_ADDR_WIDTH : INTEGER; -- Width of S_AXI address bus
      ADDRESS_BUS_WIDTH : INTEGER;
      DATA_BUS_WIDTH : INTEGER
    );
    PORT (
      addressregister : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      dataout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      datain : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      rw : IN STD_LOGIC;
      dataready : IN STD_LOGIC;
      keysen5 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      deadTime5 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      minTime5 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ackTime5 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      currentpren5 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ackpren5 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      mintimepren5 : OUT STD_LOGIC;
      linepren5 : OUT STD_LOGIC;
      softshutdownpren5 : OUT STD_LOGIC;
      softShutdownTimer5 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      keysin5 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      ackin5 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      ackpr5 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      currentpr5 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      linepr5 : IN STD_LOGIC;
      softshutdownpr5 : IN STD_LOGIC;
      mintimepr5 : IN STD_LOGIC;
      timeerror5 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      breaken5 : OUT STD_LOGIC;
      ready5 : OUT STD_LOGIC;
      reset5 : OUT STD_LOGIC;
      keysen6 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      deadTime6 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      minTime6 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ackTime6 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      currentpren6 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ackpren6 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      mintimepren6 : OUT STD_LOGIC;
      linepren6 : OUT STD_LOGIC;
      softshutdownpren6 : OUT STD_LOGIC;
      softShutdownTimer6 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      keysin6 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      ackin6 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      ackpr6 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      currentpr6 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      linepr6 : IN STD_LOGIC;
      softshutdownpr6 : IN STD_LOGIC;
      mintimepr6 : IN STD_LOGIC;
      timeerror6 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      breaken6 : OUT STD_LOGIC;
      ready6 : OUT STD_LOGIC;
      reset6 : OUT STD_LOGIC;
      keysen9 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      deadTime9 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      minTime9 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ackTime9 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      currentpren9 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ackpren9 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      mintimepren9 : OUT STD_LOGIC;
      linepren9 : OUT STD_LOGIC;
      softshutdownpren9 : OUT STD_LOGIC;
      softShutdownTimer9 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      keysin9 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      ackin9 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      ackpr9 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      currentpr9 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      linepr9 : IN STD_LOGIC;
      softshutdownpr9 : IN STD_LOGIC;
      mintimepr9 : IN STD_LOGIC;
      timeerror9 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      breaken9 : OUT STD_LOGIC;
      ready9 : OUT STD_LOGIC;
      reset9 : OUT STD_LOGIC;
      keysenA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      deadTimeA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      minTimeA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ackTimeA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      currentprenA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ackprenA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      mintimeprenA : OUT STD_LOGIC;
      lineprenA : OUT STD_LOGIC;
      softshutdownprenA : OUT STD_LOGIC;
      softShutdownTimerA : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      keysinA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      ackinA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      ackprA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      currentprA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      lineprA : IN STD_LOGIC;
      softshutdownprA : IN STD_LOGIC;
      mintimeprA : IN STD_LOGIC;
      timeerrorA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      breakenA : OUT STD_LOGIC;
      readyA : OUT STD_LOGIC;
      resetA : OUT STD_LOGIC;
      tkin : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      s00_axi_awaddr : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      s00_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s00_axi_awvalid : IN STD_LOGIC;
      s00_axi_awready : OUT STD_LOGIC;
      s00_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s00_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axi_wvalid : IN STD_LOGIC;
      s00_axi_wready : OUT STD_LOGIC;
      s00_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s00_axi_bvalid : OUT STD_LOGIC;
      s00_axi_bready : IN STD_LOGIC;
      s00_axi_araddr : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      s00_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s00_axi_arvalid : IN STD_LOGIC;
      s00_axi_arready : OUT STD_LOGIC;
      s00_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s00_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s00_axi_rvalid : OUT STD_LOGIC;
      s00_axi_rready : IN STD_LOGIC;
      s00_axi_aclk : IN STD_LOGIC;
      s00_axi_aresetn : IN STD_LOGIC
    );
  END COMPONENT IP_AXI_ManagerSerialBusSlave_v2_0;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_1_IP_AXI_ManagerSerial_0_2_arch: ARCHITECTURE IS "IP_AXI_ManagerSerialBusSlave_v2_0,Vivado 2019.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_1_IP_AXI_ManagerSerial_0_2_arch : ARCHITECTURE IS "design_1_IP_AXI_ManagerSerial_0_2,IP_AXI_ManagerSerialBusSlave_v2_0,{}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axi_aresetn: SIGNAL IS "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axi_aclk: SIGNAL IS "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axi_awaddr: SIGNAL IS "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 1e+08, ID_WIDTH 0, ADDR_WIDTH 10, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system" & 
"7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF resetA: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TKA reset";
  ATTRIBUTE X_INTERFACE_INFO OF readyA: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TKA ready";
  ATTRIBUTE X_INTERFACE_INFO OF breakenA: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TKA breaken";
  ATTRIBUTE X_INTERFACE_INFO OF timeerrorA: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TKA timeerror";
  ATTRIBUTE X_INTERFACE_INFO OF mintimeprA: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TKA mintimepr";
  ATTRIBUTE X_INTERFACE_INFO OF softshutdownprA: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TKA softshutdownpr";
  ATTRIBUTE X_INTERFACE_INFO OF lineprA: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TKA linepr";
  ATTRIBUTE X_INTERFACE_INFO OF currentprA: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TKA currentpr";
  ATTRIBUTE X_INTERFACE_INFO OF ackprA: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TKA ackpr";
  ATTRIBUTE X_INTERFACE_INFO OF ackinA: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TKA acknowledges";
  ATTRIBUTE X_INTERFACE_INFO OF keysinA: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TKA keysout";
  ATTRIBUTE X_INTERFACE_INFO OF softShutdownTimerA: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TKA softShutdownTimer";
  ATTRIBUTE X_INTERFACE_INFO OF softshutdownprenA: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TKA softshutdownen";
  ATTRIBUTE X_INTERFACE_INFO OF lineprenA: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TKA linepren";
  ATTRIBUTE X_INTERFACE_INFO OF mintimeprenA: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TKA mintimepren";
  ATTRIBUTE X_INTERFACE_INFO OF ackprenA: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TKA ackpren";
  ATTRIBUTE X_INTERFACE_INFO OF currentprenA: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TKA currentpren";
  ATTRIBUTE X_INTERFACE_INFO OF ackTimeA: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TKA ackTime";
  ATTRIBUTE X_INTERFACE_INFO OF minTimeA: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TKA minTime";
  ATTRIBUTE X_INTERFACE_INFO OF deadTimeA: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TKA deadTime";
  ATTRIBUTE X_INTERFACE_INFO OF keysenA: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TKA keysen";
  ATTRIBUTE X_INTERFACE_INFO OF reset9: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK9 reset";
  ATTRIBUTE X_INTERFACE_INFO OF ready9: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK9 ready";
  ATTRIBUTE X_INTERFACE_INFO OF breaken9: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK9 breaken";
  ATTRIBUTE X_INTERFACE_INFO OF timeerror9: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK9 timeerror";
  ATTRIBUTE X_INTERFACE_INFO OF mintimepr9: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK9 mintimepr";
  ATTRIBUTE X_INTERFACE_INFO OF softshutdownpr9: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK9 softshutdownpr";
  ATTRIBUTE X_INTERFACE_INFO OF linepr9: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK9 linepr";
  ATTRIBUTE X_INTERFACE_INFO OF currentpr9: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK9 currentpr";
  ATTRIBUTE X_INTERFACE_INFO OF ackpr9: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK9 ackpr";
  ATTRIBUTE X_INTERFACE_INFO OF ackin9: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK9 acknowledges";
  ATTRIBUTE X_INTERFACE_INFO OF keysin9: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK9 keysout";
  ATTRIBUTE X_INTERFACE_INFO OF softShutdownTimer9: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK9 softShutdownTimer";
  ATTRIBUTE X_INTERFACE_INFO OF softshutdownpren9: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK9 softshutdownen";
  ATTRIBUTE X_INTERFACE_INFO OF linepren9: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK9 linepren";
  ATTRIBUTE X_INTERFACE_INFO OF mintimepren9: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK9 mintimepren";
  ATTRIBUTE X_INTERFACE_INFO OF ackpren9: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK9 ackpren";
  ATTRIBUTE X_INTERFACE_INFO OF currentpren9: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK9 currentpren";
  ATTRIBUTE X_INTERFACE_INFO OF ackTime9: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK9 ackTime";
  ATTRIBUTE X_INTERFACE_INFO OF minTime9: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK9 minTime";
  ATTRIBUTE X_INTERFACE_INFO OF deadTime9: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK9 deadTime";
  ATTRIBUTE X_INTERFACE_INFO OF keysen9: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK9 keysen";
  ATTRIBUTE X_INTERFACE_INFO OF reset6: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK6 reset";
  ATTRIBUTE X_INTERFACE_INFO OF ready6: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK6 ready";
  ATTRIBUTE X_INTERFACE_INFO OF breaken6: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK6 breaken";
  ATTRIBUTE X_INTERFACE_INFO OF timeerror6: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK6 timeerror";
  ATTRIBUTE X_INTERFACE_INFO OF mintimepr6: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK6 mintimepr";
  ATTRIBUTE X_INTERFACE_INFO OF softshutdownpr6: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK6 softshutdownpr";
  ATTRIBUTE X_INTERFACE_INFO OF linepr6: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK6 linepr";
  ATTRIBUTE X_INTERFACE_INFO OF currentpr6: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK6 currentpr";
  ATTRIBUTE X_INTERFACE_INFO OF ackpr6: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK6 ackpr";
  ATTRIBUTE X_INTERFACE_INFO OF ackin6: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK6 acknowledges";
  ATTRIBUTE X_INTERFACE_INFO OF keysin6: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK6 keysout";
  ATTRIBUTE X_INTERFACE_INFO OF softShutdownTimer6: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK6 softShutdownTimer";
  ATTRIBUTE X_INTERFACE_INFO OF softshutdownpren6: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK6 softshutdownen";
  ATTRIBUTE X_INTERFACE_INFO OF linepren6: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK6 linepren";
  ATTRIBUTE X_INTERFACE_INFO OF mintimepren6: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK6 mintimepren";
  ATTRIBUTE X_INTERFACE_INFO OF ackpren6: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK6 ackpren";
  ATTRIBUTE X_INTERFACE_INFO OF currentpren6: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK6 currentpren";
  ATTRIBUTE X_INTERFACE_INFO OF ackTime6: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK6 ackTime";
  ATTRIBUTE X_INTERFACE_INFO OF minTime6: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK6 minTime";
  ATTRIBUTE X_INTERFACE_INFO OF deadTime6: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK6 deadTime";
  ATTRIBUTE X_INTERFACE_INFO OF keysen6: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK6 keysen";
  ATTRIBUTE X_INTERFACE_INFO OF reset5: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK5 reset";
  ATTRIBUTE X_INTERFACE_INFO OF ready5: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK5 ready";
  ATTRIBUTE X_INTERFACE_INFO OF breaken5: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK5 breaken";
  ATTRIBUTE X_INTERFACE_INFO OF timeerror5: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK5 timeerror";
  ATTRIBUTE X_INTERFACE_INFO OF mintimepr5: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK5 mintimepr";
  ATTRIBUTE X_INTERFACE_INFO OF softshutdownpr5: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK5 softshutdownpr";
  ATTRIBUTE X_INTERFACE_INFO OF linepr5: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK5 linepr";
  ATTRIBUTE X_INTERFACE_INFO OF currentpr5: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK5 currentpr";
  ATTRIBUTE X_INTERFACE_INFO OF ackpr5: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK5 ackpr";
  ATTRIBUTE X_INTERFACE_INFO OF ackin5: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK5 acknowledges";
  ATTRIBUTE X_INTERFACE_INFO OF keysin5: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK5 keysout";
  ATTRIBUTE X_INTERFACE_INFO OF softShutdownTimer5: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK5 softShutdownTimer";
  ATTRIBUTE X_INTERFACE_INFO OF softshutdownpren5: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK5 softshutdownen";
  ATTRIBUTE X_INTERFACE_INFO OF linepren5: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK5 linepren";
  ATTRIBUTE X_INTERFACE_INFO OF mintimepren5: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK5 mintimepren";
  ATTRIBUTE X_INTERFACE_INFO OF ackpren5: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK5 ackpren";
  ATTRIBUTE X_INTERFACE_INFO OF currentpren5: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK5 currentpren";
  ATTRIBUTE X_INTERFACE_INFO OF ackTime5: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK5 ackTime";
  ATTRIBUTE X_INTERFACE_INFO OF minTime5: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK5 minTime";
  ATTRIBUTE X_INTERFACE_INFO OF deadTime5: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK5 deadTime";
  ATTRIBUTE X_INTERFACE_INFO OF keysen5: SIGNAL IS "setcorp:user:ID_TKSettings:1.0 TK5 keysen";
BEGIN
  U0 : IP_AXI_ManagerSerialBusSlave_v2_0
    GENERIC MAP (
      C_S00_AXI_DATA_WIDTH => 32,
      C_S00_AXI_ADDR_WIDTH => 10,
      ADDRESS_BUS_WIDTH => 8,
      DATA_BUS_WIDTH => 16
    )
    PORT MAP (
      addressregister => addressregister,
      dataout => dataout,
      datain => datain,
      rw => rw,
      dataready => dataready,
      keysen5 => keysen5,
      deadTime5 => deadTime5,
      minTime5 => minTime5,
      ackTime5 => ackTime5,
      currentpren5 => currentpren5,
      ackpren5 => ackpren5,
      mintimepren5 => mintimepren5,
      linepren5 => linepren5,
      softshutdownpren5 => softshutdownpren5,
      softShutdownTimer5 => softShutdownTimer5,
      keysin5 => keysin5,
      ackin5 => ackin5,
      ackpr5 => ackpr5,
      currentpr5 => currentpr5,
      linepr5 => linepr5,
      softshutdownpr5 => softshutdownpr5,
      mintimepr5 => mintimepr5,
      timeerror5 => timeerror5,
      breaken5 => breaken5,
      ready5 => ready5,
      reset5 => reset5,
      keysen6 => keysen6,
      deadTime6 => deadTime6,
      minTime6 => minTime6,
      ackTime6 => ackTime6,
      currentpren6 => currentpren6,
      ackpren6 => ackpren6,
      mintimepren6 => mintimepren6,
      linepren6 => linepren6,
      softshutdownpren6 => softshutdownpren6,
      softShutdownTimer6 => softShutdownTimer6,
      keysin6 => keysin6,
      ackin6 => ackin6,
      ackpr6 => ackpr6,
      currentpr6 => currentpr6,
      linepr6 => linepr6,
      softshutdownpr6 => softshutdownpr6,
      mintimepr6 => mintimepr6,
      timeerror6 => timeerror6,
      breaken6 => breaken6,
      ready6 => ready6,
      reset6 => reset6,
      keysen9 => keysen9,
      deadTime9 => deadTime9,
      minTime9 => minTime9,
      ackTime9 => ackTime9,
      currentpren9 => currentpren9,
      ackpren9 => ackpren9,
      mintimepren9 => mintimepren9,
      linepren9 => linepren9,
      softshutdownpren9 => softshutdownpren9,
      softShutdownTimer9 => softShutdownTimer9,
      keysin9 => keysin9,
      ackin9 => ackin9,
      ackpr9 => ackpr9,
      currentpr9 => currentpr9,
      linepr9 => linepr9,
      softshutdownpr9 => softshutdownpr9,
      mintimepr9 => mintimepr9,
      timeerror9 => timeerror9,
      breaken9 => breaken9,
      ready9 => ready9,
      reset9 => reset9,
      keysenA => keysenA,
      deadTimeA => deadTimeA,
      minTimeA => minTimeA,
      ackTimeA => ackTimeA,
      currentprenA => currentprenA,
      ackprenA => ackprenA,
      mintimeprenA => mintimeprenA,
      lineprenA => lineprenA,
      softshutdownprenA => softshutdownprenA,
      softShutdownTimerA => softShutdownTimerA,
      keysinA => keysinA,
      ackinA => ackinA,
      ackprA => ackprA,
      currentprA => currentprA,
      lineprA => lineprA,
      softshutdownprA => softshutdownprA,
      mintimeprA => mintimeprA,
      timeerrorA => timeerrorA,
      breakenA => breakenA,
      readyA => readyA,
      resetA => resetA,
      tkin => tkin,
      s00_axi_awaddr => s00_axi_awaddr,
      s00_axi_awprot => s00_axi_awprot,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_awready => s00_axi_awready,
      s00_axi_wdata => s00_axi_wdata,
      s00_axi_wstrb => s00_axi_wstrb,
      s00_axi_wvalid => s00_axi_wvalid,
      s00_axi_wready => s00_axi_wready,
      s00_axi_bresp => s00_axi_bresp,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_araddr => s00_axi_araddr,
      s00_axi_arprot => s00_axi_arprot,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_arready => s00_axi_arready,
      s00_axi_rdata => s00_axi_rdata,
      s00_axi_rresp => s00_axi_rresp,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_rready => s00_axi_rready,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn
    );
END design_1_IP_AXI_ManagerSerial_0_2_arch;
