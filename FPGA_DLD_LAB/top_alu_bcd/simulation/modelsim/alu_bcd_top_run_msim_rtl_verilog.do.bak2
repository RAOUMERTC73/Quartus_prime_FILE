transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/top_alu_bcd {C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/top_alu_bcd/alu_bcd_top.sv}
vlog -sv -work work +incdir+C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/top_alu_bcd {C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/top_alu_bcd/alu.sv}

vlog -sv -work work +incdir+C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/top_alu_bcd {C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/top_alu_bcd/alu_bcd_top_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  alu_bcd_top_tb

add wave *
view structure
view signals
run -all
