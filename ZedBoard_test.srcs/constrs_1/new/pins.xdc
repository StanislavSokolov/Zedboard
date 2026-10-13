#светодиод на морде
set_property DRIVE 12 [get_ports LEDS_0]
set_property PACKAGE_PIN U6 [get_ports LEDS_0]
set_property IOSTANDARD LVCMOS33 [get_ports LEDS_0]

#светодиод на устройстве
set_property DRIVE 12 [get_ports {GPIO_0_tri_o[0]}]
set_property PACKAGE_PIN U5 [get_ports {GPIO_0_tri_o[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_0_tri_o[0]}]

#SerialBus
#SBDATAOUT
set_property DRIVE 12 [get_ports sbdataout_0]
set_property PACKAGE_PIN W16 [get_ports sbdataout_0]
set_property IOSTANDARD LVCMOS33 [get_ports sbdataout_0]

#SBDATAIN
set_property PACKAGE_PIN L16 [get_ports sbdatain_0]
set_property IOSTANDARD LVCMOS33 [get_ports sbdatain_0]

#SBCLK
set_property PACKAGE_PIN N19 [get_ports sbclk_0]
set_property IOSTANDARD LVCMOS33 [get_ports sbclk_0]

#ParallelBus
#PBCE
set_property PACKAGE_PIN AA21 [get_ports pbce_0]
set_property IOSTANDARD LVCMOS33 [get_ports pbce_0]

#PBCLK
set_property PACKAGE_PIN AA19 [get_ports pbclk_0]
set_property IOSTANDARD LVCMOS33 [get_ports pbclk_0]

#PBACK
set_property DRIVE 12 [get_ports pback_0]
set_property PACKAGE_PIN T16 [get_ports pback_0]
set_property IOSTANDARD LVCMOS33 [get_ports pback_0]

#PBDATA
set_property PACKAGE_PIN V22 [get_ports {pbdata_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pbdata_0[0]}]
set_property PACKAGE_PIN P21 [get_ports {pbdata_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pbdata_0[1]}]
set_property PACKAGE_PIN N15 [get_ports {pbdata_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pbdata_0[2]}]
set_property PACKAGE_PIN W22 [get_ports {pbdata_0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pbdata_0[3]}]
set_property PACKAGE_PIN P15 [get_ports {pbdata_0[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pbdata_0[4]}]
set_property PACKAGE_PIN R15 [get_ports {pbdata_0[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pbdata_0[5]}]
set_property PACKAGE_PIN U20 [get_ports {pbdata_0[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pbdata_0[6]}]
set_property PACKAGE_PIN T19 [get_ports {pbdata_0[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pbdata_0[7]}]
set_property PACKAGE_PIN T17 [get_ports {pbdata_0[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pbdata_0[8]}]
set_property PACKAGE_PIN P16 [get_ports {pbdata_0[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pbdata_0[9]}]
set_property PACKAGE_PIN AA22 [get_ports {pbdata_0[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pbdata_0[10]}]
set_property PACKAGE_PIN T22 [get_ports {pbdata_0[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pbdata_0[11]}]
set_property PACKAGE_PIN U22 [get_ports {pbdata_0[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pbdata_0[12]}]
set_property PACKAGE_PIN AB22 [get_ports {pbdata_0[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pbdata_0[13]}]
set_property PACKAGE_PIN W20 [get_ports {pbdata_0[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pbdata_0[14]}]
set_property PACKAGE_PIN W21 [get_ports {pbdata_0[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pbdata_0[15]}]

set_property KEEPER true [get_ports {pbdata_0[14]}]
set_property KEEPER true [get_ports {pbdata_0[13]}]
set_property KEEPER true [get_ports {pbdata_0[12]}]
set_property KEEPER true [get_ports {pbdata_0[11]}]
set_property KEEPER true [get_ports {pbdata_0[10]}]
set_property KEEPER true [get_ports {pbdata_0[9]}]
set_property KEEPER true [get_ports {pbdata_0[8]}]
set_property KEEPER true [get_ports {pbdata_0[7]}]
set_property KEEPER true [get_ports {pbdata_0[6]}]
set_property KEEPER true [get_ports {pbdata_0[5]}]
set_property KEEPER true [get_ports {pbdata_0[4]}]
set_property KEEPER true [get_ports {pbdata_0[3]}]
set_property KEEPER true [get_ports {pbdata_0[2]}]
set_property KEEPER true [get_ports {pbdata_0[1]}]
set_property KEEPER true [get_ports {pbdata_0[0]}]
set_property KEEPER true [get_ports {pbdata_0[15]}]

#LINES

set_property PACKAGE_PIN K21 [get_ports {datain_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {datain_0[0]}]
set_property PACKAGE_PIN K19 [get_ports {datain_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {datain_0[1]}]
set_property PACKAGE_PIN M21 [get_ports {datain_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {datain_0[2]}]
set_property PACKAGE_PIN J22 [get_ports {datain_0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {datain_0[3]}]
set_property PACKAGE_PIN J21 [get_ports {datain_0[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {datain_0[4]}]
set_property PACKAGE_PIN J18 [get_ports {datain_0[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {datain_0[5]}]
set_property PACKAGE_PIN K18 [get_ports {datain_0[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {datain_0[6]}]
set_property PACKAGE_PIN J20 [get_ports {datain_0[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {datain_0[7]}]
set_property PACKAGE_PIN J17 [get_ports {datain_0[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {datain_0[8]}]
set_property PACKAGE_PIN H15 [get_ports {datain_0[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {datain_0[9]}]
set_property PACKAGE_PIN L17 [get_ports {datain_0[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {datain_0[10]}]
set_property PACKAGE_PIN L19 [get_ports {datain_0[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {datain_0[11]}]
set_property PACKAGE_PIN K15 [get_ports {datain_0[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {datain_0[12]}]
set_property PACKAGE_PIN L18 [get_ports {datain_0[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {datain_0[13]}]
set_property PACKAGE_PIN M15 [get_ports {datain_0[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {datain_0[14]}]
set_property PACKAGE_PIN M20 [get_ports {datain_0[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {datain_0[15]}]





#set_property PACKAGE_PIN W5 [get_ports ENET0_MDIO_MDC_0]
#set_property PACKAGE_PIN T4 [get_ports ENET1_MDIO_MDC_0]
#set_property PACKAGE_PIN AB5 [get_ports mdio_pin_0]
#set_property PACKAGE_PIN AB4 [get_ports mdio_pin_1]
#set_property IOSTANDARD LVCMOS33 [get_ports mdio_pin_1]
#set_property IOSTANDARD LVCMOS33 [get_ports mdio_pin_0]
#set_property IOSTANDARD LVCMOS33 [get_ports ENET0_MDIO_MDC_0]
#set_property IOSTANDARD LVCMOS33 [get_ports ENET1_MDIO_MDC_0]
