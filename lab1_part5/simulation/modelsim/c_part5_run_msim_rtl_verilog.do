transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/Rao/Desktop/Quartus_github/lab1_part5 {C:/Users/Rao/Desktop/Quartus_github/lab1_part5/c_part5.sv}
vlog -sv -work work +incdir+C:/Users/Rao/Desktop/Quartus_github/lab1_part5 {C:/Users/Rao/Desktop/Quartus_github/lab1_part5/mux_2bit_4to1.sv}
vlog -sv -work work +incdir+C:/Users/Rao/Desktop/Quartus_github/lab1_part5 {C:/Users/Rao/Desktop/Quartus_github/lab1_part5/two_bit_7_segment_decoder.sv}

vlog -sv -work work +incdir+C:/Users/Rao/Desktop/Quartus_github/lab1_part5 {C:/Users/Rao/Desktop/Quartus_github/lab1_part5/test_c_part5_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  test_c_part5_tb

add wave *
view structure
view signals
run -all
