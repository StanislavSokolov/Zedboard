//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Thu Oct 22 17:49:27 2026
//Host        : STAS-W10 running 64-bit major release  (build 9200)
//Command     : generate_target TransistorKeys.bd
//Design      : TransistorKeys
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "TransistorKeys,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=TransistorKeys,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=34,numReposBlks=32,numNonXlnxBlks=17,numHierBlks=2,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "TransistorKeys.hwdef" *) 
module TransistorKeys
   (acknowledges,
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
    timeerror);
  input [7:0]acknowledges;
  output [7:0]ackout;
  output [7:0]ackpr;
  input [7:0]ackpren;
  input [7:0]acktime;
  input breaken;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET reset, CLK_DOMAIN TransistorKeys_clk_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk;
  output [7:0]currentpr;
  input [7:0]currentpren;
  input [7:0]deadtime;
  input er0in;
  input [1:0]keysel_0;
  input [1:0]keysel_1;
  input [7:0]keysen;
  output [7:0]keysout;
  output [1:0]linepr;
  input linepren;
  input [7:0]mintime;
  output [1:0]mintimepr;
  input mintimepren;
  input [1:0]ob_0;
  input [1:0]ob_1;
  input ready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset;
  input softshutdownen;
  output [1:0]softshutdownpr;
  input [15:0]softshutdowntimer;
  output [15:0]timeerror;

  wire Net;
  wire Net1;
  wire [7:0]OneStageSynchronizer_1_sync_signal;
  wire [3:0]TransistorKeys0_ackpr_0;
  wire [3:0]TransistorKeys0_currentpr_0;
  wire [3:0]TransistorKeys0_keyout_0;
  wire TransistorKeys0_linepr_0;
  wire TransistorKeys0_mintimepr_0;
  wire TransistorKeys0_softshutdownpr_0;
  wire [7:0]TransistorKeys0_timeerror_0;
  wire [3:0]TransistorKeys1_ackpr_0;
  wire [3:0]TransistorKeys1_currentpr_0;
  wire [3:0]TransistorKeys1_keyout_0;
  wire TransistorKeys1_linepr_0;
  wire TransistorKeys1_mintimepr_1;
  wire TransistorKeys1_softshutdownpr_0;
  wire [7:0]TransistorKeys1_timeerror_0;
  wire [7:0]acknowledges_1;
  wire [7:0]ackpren_2;
  wire [7:0]acktime_0_1;
  wire breaken_0_1;
  wire clk_0_1;
  wire [7:0]currentpren_2;
  wire [7:0]deadtime_0_1;
  wire en_0_1;
  wire er0in_0_1;
  wire [1:0]keysel_0_1;
  wire [1:0]keysel_0_2;
  wire [1:0]keysel_0_3;
  wire [1:0]keysel_1_1;
  wire [3:0]keysen_0_2;
  wire [7:0]keysen_2;
  wire linepren_0_1;
  wire [7:0]mintime_0_1;
  wire [1:0]ob_0_0_1;
  wire [1:0]ob_0_1;
  wire softshutdownen_0_1;
  wire [15:0]softshutdowntimer_0_1;
  wire [7:0]xlconcat_0_dout;
  wire [7:0]xlconcat_1_dout;
  wire [7:0]xlconcat_2_dout;
  wire [1:0]xlconcat_3_dout;
  wire [1:0]xlconcat_3_dout1;
  wire [1:0]xlconcat_5_dout;
  wire [15:0]xlconcat_6_dout;
  wire [3:0]xlslice_1_Dout;
  wire [3:0]xlslice_4_Dout;
  wire [3:0]xlslice_5_Dout;
  wire [3:0]xlslice_6_Dout;
  wire [3:0]xlslice_7_Dout;
  wire [3:0]xlslice_8_Dout;
  wire [3:0]xlslice_9_Dout;

  assign Net = ready;
  assign Net1 = reset;
  assign acknowledges_1 = acknowledges[7:0];
  assign ackout[7:0] = OneStageSynchronizer_1_sync_signal;
  assign ackpr[7:0] = xlconcat_0_dout;
  assign ackpren_2 = ackpren[7:0];
  assign acktime_0_1 = acktime[7:0];
  assign breaken_0_1 = breaken;
  assign clk_0_1 = clk;
  assign currentpr[7:0] = xlconcat_1_dout;
  assign currentpren_2 = currentpren[7:0];
  assign deadtime_0_1 = deadtime[7:0];
  assign en_0_1 = mintimepren;
  assign er0in_0_1 = er0in;
  assign keysel_0_1 = keysel_0[1:0];
  assign keysel_1_1 = keysel_1[1:0];
  assign keysen_2 = keysen[7:0];
  assign keysout[7:0] = xlconcat_2_dout;
  assign linepr[1:0] = xlconcat_3_dout;
  assign linepren_0_1 = linepren;
  assign mintime_0_1 = mintime[7:0];
  assign mintimepr[1:0] = xlconcat_3_dout1;
  assign ob_0_0_1 = ob_1[1:0];
  assign ob_0_1 = ob_0[1:0];
  assign softshutdownen_0_1 = softshutdownen;
  assign softshutdownpr[1:0] = xlconcat_5_dout;
  assign softshutdowntimer_0_1 = softshutdowntimer[15:0];
  assign timeerror[15:0] = xlconcat_6_dout;
  TransistorKeys_OneStageSynchronizer_0_0 OneStageSynchronizer_0
       (.async_signal(keysel_0_1),
        .clk(clk_0_1),
        .sync_signal(keysel_0_2));
  TransistorKeys_OneStageSynchronizer_1_0 OneStageSynchronizer_1
       (.async_signal(acknowledges_1),
        .clk(clk_0_1),
        .sync_signal(OneStageSynchronizer_1_sync_signal));
  TransistorKeys_OneStageSynchronizer_2_0 OneStageSynchronizer_2
       (.async_signal(keysel_1_1),
        .clk(clk_0_1),
        .sync_signal(keysel_0_3));
  TransistorKeys0_imp_1LGAUEV TransistorKeys0
       (.ackin_0(xlslice_9_Dout),
        .ackpr_0(TransistorKeys0_ackpr_0),
        .ackpren_0(xlslice_6_Dout),
        .acktime_0(acktime_0_1),
        .breaken(breaken_0_1),
        .clk(clk_0_1),
        .currentpr_0(TransistorKeys0_currentpr_0),
        .currentpren_0(xlslice_7_Dout),
        .deadtime(deadtime_0_1),
        .er0in(er0in_0_1),
        .keyout_0(TransistorKeys0_keyout_0),
        .keysel_0(keysel_0_2),
        .keysen_0(keysen_0_2),
        .linepr_0(TransistorKeys0_linepr_0),
        .linepren(linepren_0_1),
        .mintime(mintime_0_1),
        .mintimepr_0(TransistorKeys0_mintimepr_0),
        .mintimepren(en_0_1),
        .ob_0(ob_0_1),
        .ready(Net),
        .reset(Net1),
        .softshutdownen(softshutdownen_0_1),
        .softshutdownpr_0(TransistorKeys0_softshutdownpr_0),
        .softshutdowntimer(softshutdowntimer_0_1),
        .timeerror_0(TransistorKeys0_timeerror_0));
  TransistorKeys1_imp_WZV0KF TransistorKeys1
       (.ackin_0(xlslice_8_Dout),
        .ackpr_0(TransistorKeys1_ackpr_0),
        .ackpren_0(xlslice_5_Dout),
        .acktime_0(acktime_0_1),
        .breaken(breaken_0_1),
        .clk(clk_0_1),
        .currentpr_0(TransistorKeys1_currentpr_0),
        .currentpren_0(xlslice_4_Dout),
        .deadtime(deadtime_0_1),
        .er0in(er0in_0_1),
        .keyout_0(TransistorKeys1_keyout_0),
        .keysel_0(keysel_0_3),
        .keysen_0(xlslice_1_Dout),
        .linepr_0(TransistorKeys1_linepr_0),
        .linepren(linepren_0_1),
        .mintime(mintime_0_1),
        .mintimepr_1(TransistorKeys1_mintimepr_1),
        .mintimepren(en_0_1),
        .ob_0(ob_0_0_1),
        .ready(Net),
        .reset(Net1),
        .softshutdownen(softshutdownen_0_1),
        .softshutdownpr_0(TransistorKeys1_softshutdownpr_0),
        .softshutdowntimer(softshutdowntimer_0_1),
        .timeerror_0(TransistorKeys1_timeerror_0));
  TransistorKeys_xlconcat_0_0 xlconcat_0
       (.In0(TransistorKeys0_ackpr_0),
        .In1(TransistorKeys1_ackpr_0),
        .dout(xlconcat_0_dout));
  TransistorKeys_xlconcat_1_0 xlconcat_1
       (.In0(TransistorKeys0_currentpr_0),
        .In1(TransistorKeys1_currentpr_0),
        .dout(xlconcat_1_dout));
  TransistorKeys_xlconcat_2_0 xlconcat_2
       (.In0(TransistorKeys0_keyout_0),
        .In1(TransistorKeys1_keyout_0),
        .dout(xlconcat_2_dout));
  TransistorKeys_xlconcat_3_0 xlconcat_3
       (.In0(TransistorKeys0_linepr_0),
        .In1(TransistorKeys1_linepr_0),
        .dout(xlconcat_3_dout));
  TransistorKeys_xlconcat_4_0 xlconcat_4
       (.In0(TransistorKeys0_mintimepr_0),
        .In1(TransistorKeys1_mintimepr_1),
        .dout(xlconcat_3_dout1));
  TransistorKeys_xlconcat_5_0 xlconcat_5
       (.In0(TransistorKeys0_softshutdownpr_0),
        .In1(TransistorKeys1_softshutdownpr_0),
        .dout(xlconcat_5_dout));
  TransistorKeys_xlconcat_6_0 xlconcat_6
       (.In0(TransistorKeys0_timeerror_0),
        .In1(TransistorKeys1_timeerror_0),
        .dout(xlconcat_6_dout));
  TransistorKeys_xlslice_0_0 xlslice_0
       (.Din(keysen_2),
        .Dout(keysen_0_2));
  TransistorKeys_xlslice_1_0 xlslice_1
       (.Din(keysen_2),
        .Dout(xlslice_1_Dout));
  TransistorKeys_xlslice_4_0 xlslice_4
       (.Din(currentpren_2),
        .Dout(xlslice_4_Dout));
  TransistorKeys_xlslice_5_0 xlslice_5
       (.Din(ackpren_2),
        .Dout(xlslice_5_Dout));
  TransistorKeys_xlslice_6_0 xlslice_6
       (.Din(ackpren_2),
        .Dout(xlslice_6_Dout));
  TransistorKeys_xlslice_7_0 xlslice_7
       (.Din(currentpren_2),
        .Dout(xlslice_7_Dout));
  TransistorKeys_xlslice_8_0 xlslice_8
       (.Din(OneStageSynchronizer_1_sync_signal),
        .Dout(xlslice_8_Dout));
  TransistorKeys_xlslice_9_0 xlslice_9
       (.Din(OneStageSynchronizer_1_sync_signal),
        .Dout(xlslice_9_Dout));
endmodule

module TransistorKeys0_imp_1LGAUEV
   (ackin_0,
    ackpr_0,
    ackpren_0,
    acktime_0,
    breaken,
    clk,
    currentpr_0,
    currentpren_0,
    deadtime,
    er0in,
    keyout_0,
    keysel_0,
    keysen_0,
    linepr_0,
    linepren,
    mintime,
    mintimepr_0,
    mintimepren,
    ob_0,
    ready,
    reset,
    softshutdownen,
    softshutdownpr_0,
    softshutdowntimer,
    timeerror_0);
  input [3:0]ackin_0;
  output [3:0]ackpr_0;
  input [3:0]ackpren_0;
  input [7:0]acktime_0;
  input breaken;
  input clk;
  output [3:0]currentpr_0;
  input [3:0]currentpren_0;
  input [7:0]deadtime;
  input er0in;
  output [3:0]keyout_0;
  input [1:0]keysel_0;
  input [3:0]keysen_0;
  output linepr_0;
  input linepren;
  input [7:0]mintime;
  output mintimepr_0;
  input mintimepren;
  input [1:0]ob_0;
  input ready;
  input reset;
  input softshutdownen;
  output softshutdownpr_0;
  input [15:0]softshutdowntimer;
  output [7:0]timeerror_0;

  wire [3:0]AcknowledgeChecker_v_0_ackpr;
  wire [3:0]AcknowledgeChecker_v_0_currentpr;
  wire CalculatingDeadtime_0_isdeadtimeok;
  wire CalculatingMintime_v_0_error;
  wire [7:0]CalculatingMintime_v_0_timeerror;
  wire FrequencyDividerWith_0_clkdiv;
  wire FrequencyDividerWith_2_clkdiv;
  wire [3:0]KeyControllerP0N_ver_0_keyout;
  wire KeyControllerP0N_ver_0_linepr;
  wire KeyControllerP0N_ver_0_softshutdownpr;
  wire KeyControllerP0N_ver_0_start;
  wire Net;
  wire Net1;
  wire SignalChangeControl_0_reset;
  wire [3:0]ackin_0_1;
  wire [3:0]ackpren_0_1;
  wire [7:0]acktime_0_1;
  wire breaken_0_1;
  wire clk_0_1;
  wire [3:0]currentpren_0_1;
  wire [7:0]deadtime_0_1;
  wire en_0_1;
  wire er0in_0_1;
  wire [1:0]keysel_0_1;
  wire [3:0]keysen_1_1;
  wire linepren_0_1;
  wire [7:0]mintime_0_1;
  wire [1:0]ob_0_1;
  wire softshutdownen_0_1;
  wire [15:0]softshutdowntimer_0_1;

  assign Net = ready;
  assign Net1 = reset;
  assign ackin_0_1 = ackin_0[3:0];
  assign ackpr_0[3:0] = AcknowledgeChecker_v_0_ackpr;
  assign ackpren_0_1 = ackpren_0[3:0];
  assign acktime_0_1 = acktime_0[7:0];
  assign breaken_0_1 = breaken;
  assign clk_0_1 = clk;
  assign currentpr_0[3:0] = AcknowledgeChecker_v_0_currentpr;
  assign currentpren_0_1 = currentpren_0[3:0];
  assign deadtime_0_1 = deadtime[7:0];
  assign en_0_1 = mintimepren;
  assign er0in_0_1 = er0in;
  assign keyout_0[3:0] = KeyControllerP0N_ver_0_keyout;
  assign keysel_0_1 = keysel_0[1:0];
  assign keysen_1_1 = keysen_0[3:0];
  assign linepr_0 = KeyControllerP0N_ver_0_linepr;
  assign linepren_0_1 = linepren;
  assign mintime_0_1 = mintime[7:0];
  assign mintimepr_0 = CalculatingMintime_v_0_error;
  assign ob_0_1 = ob_0[1:0];
  assign softshutdownen_0_1 = softshutdownen;
  assign softshutdownpr_0 = KeyControllerP0N_ver_0_softshutdownpr;
  assign softshutdowntimer_0_1 = softshutdowntimer[15:0];
  assign timeerror_0[7:0] = CalculatingMintime_v_0_timeerror;
  TransistorKeys_AcknowledgeChecker_v_0_0 AcknowledgeChecker_v_0
       (.ackin(ackin_0_1),
        .ackpr(AcknowledgeChecker_v_0_ackpr),
        .ackpren(ackpren_0_1),
        .acktime(acktime_0_1),
        .clk(clk_0_1),
        .currentpr(AcknowledgeChecker_v_0_currentpr),
        .currentpren(currentpren_0_1),
        .keyin(KeyControllerP0N_ver_0_keyout),
        .ready(Net),
        .reset(Net1));
  TransistorKeys_CalculatingDeadtime_0_0 CalculatingDeadtime_0
       (.ce(FrequencyDividerWith_2_clkdiv),
        .clk(clk_0_1),
        .deadtime(deadtime_0_1),
        .isdeadtimeok(CalculatingDeadtime_0_isdeadtimeok),
        .reset(Net1),
        .start(KeyControllerP0N_ver_0_start));
  TransistorKeys_CalculatingMintime_v_0_0 CalculatingMintime_v_0
       (.ce(FrequencyDividerWith_0_clkdiv),
        .clk(clk_0_1),
        .en(en_0_1),
        .error(CalculatingMintime_v_0_error),
        .mintime(mintime_0_1),
        .reset(Net1),
        .start(SignalChangeControl_0_reset),
        .timeerror(CalculatingMintime_v_0_timeerror));
  TransistorKeys_FrequencyDividerWith_0_0 FrequencyDividerWith_0
       (.clk(clk_0_1),
        .clkdiv(FrequencyDividerWith_0_clkdiv),
        .reset(SignalChangeControl_0_reset));
  TransistorKeys_FrequencyDividerWith_2_0 FrequencyDividerWith_2
       (.clk(clk_0_1),
        .clkdiv(FrequencyDividerWith_2_clkdiv),
        .reset(KeyControllerP0N_ver_0_start));
  TransistorKeys_KeyControllerP0N_ver_0_0 KeyControllerP0N_ver_0
       (.breaken(breaken_0_1),
        .clk(clk_0_1),
        .er0in(er0in_0_1),
        .isdeadtimeok(CalculatingDeadtime_0_isdeadtimeok),
        .keysel(keysel_0_1),
        .keysen(keysen_1_1),
        .keysout(KeyControllerP0N_ver_0_keyout),
        .linepr(KeyControllerP0N_ver_0_linepr),
        .linepren(linepren_0_1),
        .ob(ob_0_1),
        .ready(Net),
        .reset(Net1),
        .softshutdownen(softshutdownen_0_1),
        .softshutdownpr(KeyControllerP0N_ver_0_softshutdownpr),
        .softshutdowntimer(softshutdowntimer_0_1),
        .start(KeyControllerP0N_ver_0_start));
  TransistorKeys_SignalChangeControl_0_0 SignalChangeControl_0
       (.clk(clk_0_1),
        .reset(SignalChangeControl_0_reset),
        .signalchange(keysel_0_1));
endmodule

module TransistorKeys1_imp_WZV0KF
   (ackin_0,
    ackpr_0,
    ackpren_0,
    acktime_0,
    breaken,
    clk,
    currentpr_0,
    currentpren_0,
    deadtime,
    er0in,
    keyout_0,
    keysel_0,
    keysen_0,
    linepr_0,
    linepren,
    mintime,
    mintimepr_1,
    mintimepren,
    ob_0,
    ready,
    reset,
    softshutdownen,
    softshutdownpr_0,
    softshutdowntimer,
    timeerror_0);
  input [3:0]ackin_0;
  output [3:0]ackpr_0;
  input [3:0]ackpren_0;
  input [7:0]acktime_0;
  input breaken;
  input clk;
  output [3:0]currentpr_0;
  input [3:0]currentpren_0;
  input [7:0]deadtime;
  input er0in;
  output [3:0]keyout_0;
  input [1:0]keysel_0;
  input [3:0]keysen_0;
  output linepr_0;
  input linepren;
  input [7:0]mintime;
  output mintimepr_1;
  input mintimepren;
  input [1:0]ob_0;
  input ready;
  input reset;
  input softshutdownen;
  output softshutdownpr_0;
  input [15:0]softshutdowntimer;
  output [7:0]timeerror_0;

  wire [3:0]AcknowledgeChecker_v_0_ackpr;
  wire [3:0]AcknowledgeChecker_v_0_currentpr;
  wire CalculatingDeadtime_0_isdeadtimeok;
  wire CalculatingMintime_v_0_error;
  wire [7:0]CalculatingMintime_v_0_timeerror;
  wire FrequencyDividerWith_0_clkdiv;
  wire FrequencyDividerWith_2_clkdiv;
  wire [3:0]KeyControllerP0N_ver_0_keyout;
  wire KeyControllerP0N_ver_0_linepr;
  wire KeyControllerP0N_ver_0_softshutdownpr;
  wire KeyControllerP0N_ver_0_start;
  wire Net;
  wire Net1;
  wire SignalChangeControl_0_reset;
  wire [3:0]ackin_0_1;
  wire [3:0]ackpren_0_1;
  wire [7:0]acktime_0_1;
  wire breaken_0_1;
  wire clk_0_1;
  wire [3:0]currentpren_0_1;
  wire [7:0]deadtime_0_1;
  wire en_0_1;
  wire er0in_0_1;
  wire [1:0]keysel_0_1;
  wire [3:0]keysen_0_1;
  wire linepren_0_1;
  wire [7:0]mintime_0_1;
  wire [1:0]ob_0_1;
  wire softshutdownen_0_1;
  wire [15:0]softshutdowntimer_0_1;

  assign Net = ready;
  assign Net1 = reset;
  assign ackin_0_1 = ackin_0[3:0];
  assign ackpr_0[3:0] = AcknowledgeChecker_v_0_ackpr;
  assign ackpren_0_1 = ackpren_0[3:0];
  assign acktime_0_1 = acktime_0[7:0];
  assign breaken_0_1 = breaken;
  assign clk_0_1 = clk;
  assign currentpr_0[3:0] = AcknowledgeChecker_v_0_currentpr;
  assign currentpren_0_1 = currentpren_0[3:0];
  assign deadtime_0_1 = deadtime[7:0];
  assign en_0_1 = mintimepren;
  assign er0in_0_1 = er0in;
  assign keyout_0[3:0] = KeyControllerP0N_ver_0_keyout;
  assign keysel_0_1 = keysel_0[1:0];
  assign keysen_0_1 = keysen_0[3:0];
  assign linepr_0 = KeyControllerP0N_ver_0_linepr;
  assign linepren_0_1 = linepren;
  assign mintime_0_1 = mintime[7:0];
  assign mintimepr_1 = CalculatingMintime_v_0_error;
  assign ob_0_1 = ob_0[1:0];
  assign softshutdownen_0_1 = softshutdownen;
  assign softshutdownpr_0 = KeyControllerP0N_ver_0_softshutdownpr;
  assign softshutdowntimer_0_1 = softshutdowntimer[15:0];
  assign timeerror_0[7:0] = CalculatingMintime_v_0_timeerror;
  TransistorKeys_AcknowledgeChecker_v_0_1 AcknowledgeChecker_v_0
       (.ackin(ackin_0_1),
        .ackpr(AcknowledgeChecker_v_0_ackpr),
        .ackpren(ackpren_0_1),
        .acktime(acktime_0_1),
        .clk(clk_0_1),
        .currentpr(AcknowledgeChecker_v_0_currentpr),
        .currentpren(currentpren_0_1),
        .keyin(KeyControllerP0N_ver_0_keyout),
        .ready(Net),
        .reset(Net1));
  TransistorKeys_CalculatingDeadtime_0_1 CalculatingDeadtime_0
       (.ce(FrequencyDividerWith_2_clkdiv),
        .clk(clk_0_1),
        .deadtime(deadtime_0_1),
        .isdeadtimeok(CalculatingDeadtime_0_isdeadtimeok),
        .reset(Net1),
        .start(KeyControllerP0N_ver_0_start));
  TransistorKeys_CalculatingMintime_v_0_1 CalculatingMintime_v_0
       (.ce(FrequencyDividerWith_0_clkdiv),
        .clk(clk_0_1),
        .en(en_0_1),
        .error(CalculatingMintime_v_0_error),
        .mintime(mintime_0_1),
        .reset(Net1),
        .start(SignalChangeControl_0_reset),
        .timeerror(CalculatingMintime_v_0_timeerror));
  TransistorKeys_FrequencyDividerWith_0_1 FrequencyDividerWith_0
       (.clk(clk_0_1),
        .clkdiv(FrequencyDividerWith_0_clkdiv),
        .reset(SignalChangeControl_0_reset));
  TransistorKeys_FrequencyDividerWith_2_1 FrequencyDividerWith_2
       (.clk(clk_0_1),
        .clkdiv(FrequencyDividerWith_2_clkdiv),
        .reset(KeyControllerP0N_ver_0_start));
  TransistorKeys_KeyControllerP0N_ver_0_1 KeyControllerP0N_ver_0
       (.breaken(breaken_0_1),
        .clk(clk_0_1),
        .er0in(er0in_0_1),
        .isdeadtimeok(CalculatingDeadtime_0_isdeadtimeok),
        .keysel(keysel_0_1),
        .keysen(keysen_0_1),
        .keysout(KeyControllerP0N_ver_0_keyout),
        .linepr(KeyControllerP0N_ver_0_linepr),
        .linepren(linepren_0_1),
        .ob(ob_0_1),
        .ready(Net),
        .reset(Net1),
        .softshutdownen(softshutdownen_0_1),
        .softshutdownpr(KeyControllerP0N_ver_0_softshutdownpr),
        .softshutdowntimer(softshutdowntimer_0_1),
        .start(KeyControllerP0N_ver_0_start));
  TransistorKeys_SignalChangeControl_0_1 SignalChangeControl_0
       (.clk(clk_0_1),
        .reset(SignalChangeControl_0_reset),
        .signalchange(keysel_0_1));
endmodule
