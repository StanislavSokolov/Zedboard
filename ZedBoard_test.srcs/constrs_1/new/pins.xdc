#светодиод на морде
set_property DRIVE 12 [get_ports LEDS_0]
set_property PACKAGE_PIN U6 [get_ports LEDS_0]
set_property IOSTANDARD LVCMOS33 [get_ports LEDS_0]

#светодиод на устройстве
set_property DRIVE 12 [get_ports {GPIO_0_tri_o[0]}]
set_property PACKAGE_PIN U5 [get_ports {GPIO_0_tri_o[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_0_tri_o[0]}]

#SerialBus
#DATAOUT
set_property DRIVE 12 [get_ports sbdataout_0]
set_property PACKAGE_PIN W16 [get_ports sbdataout_0]
set_property IOSTANDARD LVCMOS33 [get_ports sbdataout_0]

#DATAIN
set_property PACKAGE_PIN L16 [get_ports sbdatain_0]
set_property IOSTANDARD LVCMOS33 [get_ports sbdatain_0]

#CLK
set_property PACKAGE_PIN N19 [get_ports sbclk_0]
set_property IOSTANDARD LVCMOS33 [get_ports sbclk_0]




#ParallelBus
#CE
#ACK
#CLK

#DATA



#set_property PACKAGE_PIN W5 [get_ports ENET0_MDIO_MDC_0]
#set_property PACKAGE_PIN T4 [get_ports ENET1_MDIO_MDC_0]
#set_property PACKAGE_PIN AB5 [get_ports mdio_pin_0]
#set_property PACKAGE_PIN AB4 [get_ports mdio_pin_1]
#set_property IOSTANDARD LVCMOS33 [get_ports mdio_pin_1]
#set_property IOSTANDARD LVCMOS33 [get_ports mdio_pin_0]
#set_property IOSTANDARD LVCMOS33 [get_ports ENET0_MDIO_MDC_0]
#set_property IOSTANDARD LVCMOS33 [get_ports ENET1_MDIO_MDC_0]
