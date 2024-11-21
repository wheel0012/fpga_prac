set_property -dict {PACKAGE_PIN R4 IOSTANDARD LVCMOS33} [get_ports clk]
set_property -dict {PACKAGE_PIN U7 IOSTANDARD LVCMOS33} [get_ports rstb]

set_property -dict {PACKAGE_PIN P17 IOSTANDARD LVCMOS33} [get_ports digit[1]]
set_property -dict {PACKAGE_PIN R17 IOSTANDARD LVCMOS33} [get_ports digit[0]]


set_property -dict {PACKAGE_PIN U17 IOSTANDARD LVCMOS33} [get_ports seg_data[7]]
set_property -dict {PACKAGE_PIN V17 IOSTANDARD LVCMOS33} [get_ports seg_data[6]]
set_property -dict {PACKAGE_PIN W17 IOSTANDARD LVCMOS33} [get_ports seg_data[5]]
set_property -dict {PACKAGE_PIN R18 IOSTANDARD LVCMOS33} [get_ports seg_data[4]]
set_property -dict {PACKAGE_PIN T18 IOSTANDARD LVCMOS33} [get_ports seg_data[3]]
set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS33} [get_ports seg_data[2]]
set_property -dict {PACKAGE_PIN V18 IOSTANDARD LVCMOS33} [get_ports seg_data[1]]
set_property -dict {PACKAGE_PIN P19 IOSTANDARD LVCMOS33} [get_ports seg_data[0]]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets rstb_IBUF]