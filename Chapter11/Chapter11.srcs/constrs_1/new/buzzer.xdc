set_property -dict {PACKAGE_PIN R4 IOSTANDARD LVCMOS33} [get_ports clk]
set_property -dict {PACKAGE_PIN U7 IOSTANDARD LVCMOS33} [get_ports reset]

set_property -dict {PACKAGE_PIN N22 IOSTANDARD LVCMOS33} [get_ports sw_down]
set_property -dict {PACKAGE_PIN N20 IOSTANDARD LVCMOS33} [get_ports sw_left]
set_property -dict {PACKAGE_PIN M21 IOSTANDARD LVCMOS33} [get_ports sw_mid]
set_property -dict {PACKAGE_PIN M22 IOSTANDARD LVCMOS33} [get_ports sw_right]
set_property -dict {PACKAGE_PIN M20 IOSTANDARD LVCMOS33} [get_ports sw_up]
set_property -dict {PACKAGE_PIN P20 IOSTANDARD LVCMOS33} [get_ports buzz]
