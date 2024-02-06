transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/lab3_dff_srlatch/part1 {C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/lab3_dff_srlatch/part1/part1.sv}

vlog -sv -work work +incdir+C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/lab3_dff_srlatch/part1 {C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/lab3_dff_srlatch/part1/tb_sr_latchpart1.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  sr_latch_tb

add wave *
view structure
view signals
run -all