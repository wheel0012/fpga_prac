set_property -dict {PACKAGE_PIN J4 IOSTANDARD LVCMOS33} [get_ports pr_b]
set_property -dict {PACKAGE_PIN L3 IOSTANDARD LVCMOS33} [get_ports clr_b]
set_property -dict {PACKAGE_PIN K3 IOSTANDARD LVCMOS33} [get_ports t]
set_property -dict {PACKAGE_PIN M2 IOSTANDARD LVCMOS33} [get_ports clk]
set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVCMOS33} [get_ports q]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_IBUF]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets pr_b_IBUF]