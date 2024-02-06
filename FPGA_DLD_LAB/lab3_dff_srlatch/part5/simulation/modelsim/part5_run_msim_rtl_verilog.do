transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/lab3_dff_srlatch/part5 {C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/lab3_dff_srlatch/part5/part5.sv}
vlog -sv -work work +incdir+C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/lab3_dff_srlatch/part5 {C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/lab3_dff_srlatch/part5/adder_8bit.sv}
vlog -sv -work work +incdir+C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/lab3_dff_srlatch/part5 {C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/lab3_dff_srlatch/part5/fulladder.sv}
vlog -sv -work work +incdir+C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/lab3_dff_srlatch/part5 {C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/lab3_dff_srlatch/part5/hex_ssd.sv}

