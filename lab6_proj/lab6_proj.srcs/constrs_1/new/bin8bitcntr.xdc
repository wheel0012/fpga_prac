set_property -dict {PACKAGE_PIN J4 IOSTANDARD LVCMOS33} [get_ports pr_b]
set_property -dict {PACKAGE_PIN L3 IOSTANDARD LVCMOS33} [get_ports clr_b]
set_property -dict {PACKAGE_PIN R4 IOSTANDARD LVCMOS33} [get_ports clk]

set_property -dict {PACKAGE_PIN AB20 IOSTANDARD LVCMOS33} [get_ports q[7]]
set_property -dict {PACKAGE_PIN W21 IOSTANDARD LVCMOS33} [get_ports q[6]]
set_property -dict {PACKAGE_PIN Y21 IOSTANDARD LVCMOS33} [get_ports q[5]]
set_property -dict {PACKAGE_PIN AA21 IOSTANDARD LVCMOS33} [get_ports q[4]]
set_property -dict {PACKAGE_PIN AB21 IOSTANDARD LVCMOS33} [get_ports q[3]]
set_property -dict {PACKAGE_PIN W22 IOSTANDARD LVCMOS33} [get_ports q[2]]
set_property -dict {PACKAGE_PIN Y22 IOSTANDARD LVCMOS33} [get_ports q[1]]
set_property -dict {PACKAGE_PIN AB22 IOSTANDARD LVCMOS33} [get_ports q[0]]


#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_IBUF]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets pr_b_IBUF]