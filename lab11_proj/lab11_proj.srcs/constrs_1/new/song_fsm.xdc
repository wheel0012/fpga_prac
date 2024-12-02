set_property -dict {PACKAGE_PIN R4 IOSTANDARD LVCMOS33} [get_ports clk]
set_property -dict {PACKAGE_PIN U7 IOSTANDARD LVCMOS33} [get_ports reset]

set_property -dict {PACKAGE_PIN J4 IOSTANDARD LVCMOS33} [get_ports sw_1]
set_property -dict {PACKAGE_PIN P20 IOSTANDARD LVCMOS33} [get_ports buzz]

set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVCMOS33} [get_ports LED1]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets sw_1_IBUF]