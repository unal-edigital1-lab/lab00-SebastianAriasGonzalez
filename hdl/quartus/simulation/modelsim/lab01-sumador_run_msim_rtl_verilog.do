transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/comun/Desktop/sebastian\ arias/2021-1/Electronica\ digital/Laboratorio/Lab00/lab00-SebastianAriasGonzalez/hdl/src {C:/Users/comun/Desktop/sebastian arias/2021-1/Electronica digital/Laboratorio/Lab00/lab00-SebastianAriasGonzalez/hdl/src/sum1bcc.v}

vlog -vlog01compat -work work +incdir+C:/Users/comun/Desktop/sebastian\ arias/2021-1/Electronica\ digital/Laboratorio/Lab00/lab00-SebastianAriasGonzalez/hdl/quartus/../src {C:/Users/comun/Desktop/sebastian arias/2021-1/Electronica digital/Laboratorio/Lab00/lab00-SebastianAriasGonzalez/hdl/quartus/../src/sum1bcc_primitive_TB.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  sum1bcc_primitive_TB

add wave *
view structure
view signals
run -all
