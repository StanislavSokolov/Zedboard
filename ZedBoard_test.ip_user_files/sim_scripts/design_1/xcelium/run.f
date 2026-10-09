-makelib xcelium_lib/xilinx_vip -sv \
  "D:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "D:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "D:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "D:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "D:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "D:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "D:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "D:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "D:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "D:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../ZedBoard_test.srcs/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../ZedBoard_test.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../ZedBoard_test.srcs/sources_1/bd/design_1/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_gpio_v2_0_21 \
  "../../../../ZedBoard_test.srcs/sources_1/bd/design_1/ipshared/9c6e/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_gpio_0_0/sim/design_1_axi_gpio_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0_sim_netlist.vhdl" \
  "../../../bd/design_1/ip/design_1_xbar_0/design_1_xbar_0_sim_netlist.vhdl" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../ZedBoard_test.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \
  "../../../bd/design_1/ipshared/a010/hdl/IP_AXI_LEDS_v1_0_S00_AXI.vhd" \
  "../../../bd/design_1/ipshared/a010/hdl/IP_AXI_LEDS_v1_0.vhd" \
  "../../../bd/design_1/ip/design_1_IP_AXI_LEDS_0_0/sim/design_1_IP_AXI_LEDS_0_0.vhd" \
  "../../../bd/design_1/ipshared/6e44/src/SerialBusSlave_ver_2_0.vhd" \
  "../../../bd/design_1/ip/design_1_SerialBusSlave_ver_2_0_0/sim/design_1_SerialBusSlave_ver_2_0_0.vhd" \
  "../../../bd/design_1/ipshared/c059/hdl/IP_AXI_ManagerSerialBusSlave_v1_0_S00_AXI.vhd" \
  "../../../bd/design_1/ipshared/c059/hdl/IP_AXI_ManagerSerialBusSlave_v1_0.vhd" \
  "../../../bd/design_1/ip/design_1_IP_AXI_ManagerSerial_0_1/sim/design_1_IP_AXI_ManagerSerial_0_1.vhd" \
  "../../../bd/design_1/ipshared/edd9/src/OneStageSynchronizerAndDigitalFilterSingle_ver_1_0.vhd" \
  "../../../bd/design_1/ip/design_1_OneStageSynchronizer_0_0/sim/design_1_OneStageSynchronizer_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_OneStageSynchronizer_0_1/sim/design_1_OneStageSynchronizer_0_1.vhd" \
  "../../../bd/design_1/ipshared/43c7/src/ParallelBusSlave_ver_2_0.vhd" \
  "../../../bd/design_1/ip/design_1_ParallelBusSlave_ver_0_0/sim/design_1_ParallelBusSlave_ver_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_OneStageSynchronizer_1_0/sim/design_1_OneStageSynchronizer_1_0.vhd" \
  "../../../bd/design_1/ip/design_1_OneStageSynchronizer_0_2/sim/design_1_OneStageSynchronizer_0_2.vhd" \
  "../../../bd/design_1/ipshared/6e5b/hdl/IP_AXI_ManagerParallelBusSlave_v1_0_S00_AXI.vhd" \
  "../../../bd/design_1/ipshared/6e5b/hdl/IP_AXI_ManagerParallelBusSlave_v1_0.vhd" \
  "../../../bd/design_1/ip/design_1_IP_AXI_ManagerParall_0_0/sim/design_1_IP_AXI_ManagerParall_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_auto_pc_0/design_1_auto_pc_0_sim_netlist.vhdl" \
  "../../../bd/design_1/sim/design_1.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

