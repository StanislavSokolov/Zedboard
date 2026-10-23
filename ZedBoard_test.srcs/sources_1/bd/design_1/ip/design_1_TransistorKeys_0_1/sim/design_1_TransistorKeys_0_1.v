// (c) Copyright 1995-2026 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: setcorp:user:TransistorKeys:1.0
// IP Revision: 2

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "IPI" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_TransistorKeys_0_1 (
  acknowledges,
  ackout,
  ackpr,
  ackpren,
  acktime,
  breaken,
  clk,
  currentpr,
  currentpren,
  deadtime,
  er0in,
  keysel_0,
  keysel_1,
  keysen,
  keysout,
  linepr,
  linepren,
  mintime,
  mintimepr,
  mintimepren,
  ob_0,
  ob_1,
  ready,
  reset,
  softshutdownen,
  softshutdownpr,
  softshutdowntimer,
  timeerror
);

input wire [7 : 0] acknowledges;
(* X_INTERFACE_INFO = "setcorp:user:ID_TKSettings:1.0 TK acknowledges" *)
output wire [7 : 0] ackout;
(* X_INTERFACE_INFO = "setcorp:user:ID_TKSettings:1.0 TK ackpr" *)
output wire [7 : 0] ackpr;
(* X_INTERFACE_INFO = "setcorp:user:ID_TKSettings:1.0 TK ackpren" *)
input wire [7 : 0] ackpren;
(* X_INTERFACE_INFO = "setcorp:user:ID_TKSettings:1.0 TK ackTime" *)
input wire [7 : 0] acktime;
(* X_INTERFACE_INFO = "setcorp:user:ID_TKSettings:1.0 TK breaken" *)
input wire breaken;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, FREQ_HZ 100000000, PHASE 0.000, ASSOCIATED_RESET reset, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *)
input wire clk;
(* X_INTERFACE_INFO = "setcorp:user:ID_TKSettings:1.0 TK currentpr" *)
output wire [7 : 0] currentpr;
(* X_INTERFACE_INFO = "setcorp:user:ID_TKSettings:1.0 TK currentpren" *)
input wire [7 : 0] currentpren;
(* X_INTERFACE_INFO = "setcorp:user:ID_TKSettings:1.0 TK deadTime" *)
input wire [7 : 0] deadtime;
input wire er0in;
input wire [1 : 0] keysel_0;
input wire [1 : 0] keysel_1;
(* X_INTERFACE_INFO = "setcorp:user:ID_TKSettings:1.0 TK keysen" *)
input wire [7 : 0] keysen;
(* X_INTERFACE_INFO = "setcorp:user:ID_TKSettings:1.0 TK keysout" *)
output wire [7 : 0] keysout;
(* X_INTERFACE_INFO = "setcorp:user:ID_TKSettings:1.0 TK linepr" *)
output wire [1 : 0] linepr;
(* X_INTERFACE_INFO = "setcorp:user:ID_TKSettings:1.0 TK linepren" *)
input wire linepren;
(* X_INTERFACE_INFO = "setcorp:user:ID_TKSettings:1.0 TK minTime" *)
input wire [7 : 0] mintime;
(* X_INTERFACE_INFO = "setcorp:user:ID_TKSettings:1.0 TK mintimepr" *)
output wire [1 : 0] mintimepr;
(* X_INTERFACE_INFO = "setcorp:user:ID_TKSettings:1.0 TK mintimepren" *)
input wire mintimepren;
input wire [1 : 0] ob_0;
input wire [1 : 0] ob_1;
(* X_INTERFACE_INFO = "setcorp:user:ID_TKSettings:1.0 TK ready" *)
input wire ready;
(* X_INTERFACE_INFO = "setcorp:user:ID_TKSettings:1.0 TK reset" *)
input wire reset;
(* X_INTERFACE_INFO = "setcorp:user:ID_TKSettings:1.0 TK softshutdownen" *)
input wire softshutdownen;
(* X_INTERFACE_INFO = "setcorp:user:ID_TKSettings:1.0 TK softshutdownpr" *)
output wire [1 : 0] softshutdownpr;
(* X_INTERFACE_INFO = "setcorp:user:ID_TKSettings:1.0 TK softShutdownTimer" *)
input wire [15 : 0] softshutdowntimer;
(* X_INTERFACE_INFO = "setcorp:user:ID_TKSettings:1.0 TK timeerror" *)
output wire [15 : 0] timeerror;

  TransistorKeys inst (
    .acknowledges(acknowledges),
    .ackout(ackout),
    .ackpr(ackpr),
    .ackpren(ackpren),
    .acktime(acktime),
    .breaken(breaken),
    .clk(clk),
    .currentpr(currentpr),
    .currentpren(currentpren),
    .deadtime(deadtime),
    .er0in(er0in),
    .keysel_0(keysel_0),
    .keysel_1(keysel_1),
    .keysen(keysen),
    .keysout(keysout),
    .linepr(linepr),
    .linepren(linepren),
    .mintime(mintime),
    .mintimepr(mintimepr),
    .mintimepren(mintimepren),
    .ob_0(ob_0),
    .ob_1(ob_1),
    .ready(ready),
    .reset(reset),
    .softshutdownen(softshutdownen),
    .softshutdownpr(softshutdownpr),
    .softshutdowntimer(softshutdowntimer),
    .timeerror(timeerror)
  );
endmodule
