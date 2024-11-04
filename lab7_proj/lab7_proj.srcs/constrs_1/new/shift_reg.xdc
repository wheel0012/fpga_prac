
set_property -dict {PACKAGE_PIN  L3 IOSTANDARD LVCMOS33} [get_ports sri]

set_property -dict {PACKAGE_PIN J4 IOSTANDARD LVCMOS33} [get_ports sli]

set_property -dict {PACKAGE_PIN AA18 IOSTANDARD LVCMOS33} [get_ports slo]
set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVCMOS33} [get_ports sro]

set_property -dict {PACKAGE_PIN R4 IOSTANDARD LVCMOS33} [get_ports clk]

set_property -dict {PACKAGE_PIN V22 IOSTANDARD LVCMOS33} [get_ports reset]

set_property -dict {PACKAGE_PIN U21 IOSTANDARD LVCMOS33} [get_ports dir]


set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets reset_IBUF]
#set_property ALLOW_COMBINATORIAL_LOOPS TRUE