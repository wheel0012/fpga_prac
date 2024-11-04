set_property -dict {PACKAGE_PIN J4 IOSTANDARD LVCMOS33} [get_ports resetn]
set_property -dict {PACKAGE_PIN L3 IOSTANDARD LVCMOS33} [get_ports sel]
set_property -dict {PACKAGE_PIN R4 IOSTANDARD LVCMOS33} [get_ports clk]
set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVCMOS33} [get_ports q[2]]
set_property -dict {PACKAGE_PIN AA18 IOSTANDARD LVCMOS33} [get_ports q[1]]
set_property -dict {PACKAGE_PIN AB18 IOSTANDARD LVCMOS33} [get_ports q[0]]


set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets resetn_IBUF]