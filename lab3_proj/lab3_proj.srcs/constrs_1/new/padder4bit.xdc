set_property -dict {PACKAGE_PIN J4 IOSTANDARD LVCMOS33} [get_ports in_a[3] ]
set_property -dict {PACKAGE_PIN L3 IOSTANDARD LVCMOS33} [get_ports in_a[2] ]
set_property -dict {PACKAGE_PIN K3  IOSTANDARD LVCMOS33} [get_ports in_a[1] ]
set_property -dict {PACKAGE_PIN M2  IOSTANDARD LVCMOS33} [get_ports in_a[0] ]
set_property -dict {PACKAGE_PIN K6  IOSTANDARD LVCMOS33} [get_ports in_b[3] ]
set_property -dict {PACKAGE_PIN J6  IOSTANDARD LVCMOS33} [get_ports in_b[2] ]
set_property -dict {PACKAGE_PIN L5  IOSTANDARD LVCMOS33} [get_ports in_b[1] ]
set_property -dict {PACKAGE_PIN L4  IOSTANDARD LVCMOS33} [get_ports in_b[0] ]

set_property -dict {PACKAGE_PIN T21 IOSTANDARD LVCMOS33} [get_ports sign ]


set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVCMOS33} [get_ports out[3]]
set_property -dict {PACKAGE_PIN AA18 IOSTANDARD LVCMOS33} [get_ports out[2]]
set_property -dict {PACKAGE_PIN AB18 IOSTANDARD LVCMOS33} [get_ports out[1]]
set_property -dict {PACKAGE_PIN W19 IOSTANDARD LVCMOS33} [get_ports out[0]]
set_property -dict {PACKAGE_PIN Y19 IOSTANDARD LVCMOS33} [get_ports overflow_detect]
set_property -dict {PACKAGE_PIN AA19 IOSTANDARD LVCMOS33} [get_ports cout]