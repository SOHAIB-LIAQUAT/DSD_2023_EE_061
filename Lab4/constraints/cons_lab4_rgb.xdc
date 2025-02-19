# Inputs (Switches)
set_property -dict { PACKAGE_PIN V10   IOSTANDARD LVCMOS33 } [get_ports { a[1] }]; #IO_L21P_T3_DQS_14 Sch=sw[15]
set_property -dict { PACKAGE_PIN U11   IOSTANDARD LVCMOS33 } [get_ports { a[0] }]; #IO_L19N_T3_A09_D25_VREF_14 Sch=sw[14]
set_property -dict { PACKAGE_PIN U12   IOSTANDARD LVCMOS33 } [get_ports { b[1] }]; #IO_L20P_T3_A08_D24_14 Sch=sw[13]
set_property -dict { PACKAGE_PIN H6    IOSTANDARD LVCMOS33 } [get_ports { b[0] }]; #IO_L24P_T3_35 Sch=sw[12]

# Output RGB LED
set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS33 } [get_ports { red }]; #IO_L11P_T1_SRCC_14 Sch=led16_r
set_property -dict { PACKAGE_PIN M16   IOSTANDARD LVCMOS33 } [get_ports { green }]; #IO_L10P_T1_D14_14 Sch=led16_g
set_property -dict { PACKAGE_PIN R12   IOSTANDARD LVCMOS33 } [get_ports { blue }]; #IO_L5P_T0_D06_14 Sch=led16_b