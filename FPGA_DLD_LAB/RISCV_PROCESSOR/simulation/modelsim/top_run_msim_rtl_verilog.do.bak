transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/RISCV_PROCESSOR {C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/RISCV_PROCESSOR/top.sv}
vlog -sv -work work +incdir+C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/RISCV_PROCESSOR {C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/RISCV_PROCESSOR/riscvsingle.sv}
vlog -sv -work work +incdir+C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/RISCV_PROCESSOR {C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/RISCV_PROCESSOR/controller.sv}
vlog -sv -work work +incdir+C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/RISCV_PROCESSOR {C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/RISCV_PROCESSOR/maindec.sv}
vlog -sv -work work +incdir+C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/RISCV_PROCESSOR {C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/RISCV_PROCESSOR/aludec.sv}
vlog -sv -work work +incdir+C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/RISCV_PROCESSOR {C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/RISCV_PROCESSOR/datapath.sv}
vlog -sv -work work +incdir+C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/RISCV_PROCESSOR {C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/RISCV_PROCESSOR/regfile.sv}
vlog -sv -work work +incdir+C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/RISCV_PROCESSOR {C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/RISCV_PROCESSOR/adder.sv}
vlog -sv -work work +incdir+C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/RISCV_PROCESSOR {C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/RISCV_PROCESSOR/extend.sv}
vlog -sv -work work +incdir+C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/RISCV_PROCESSOR {C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/RISCV_PROCESSOR/flopr.sv}
vlog -sv -work work +incdir+C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/RISCV_PROCESSOR {C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/RISCV_PROCESSOR/mux2.sv}
vlog -sv -work work +incdir+C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/RISCV_PROCESSOR {C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/RISCV_PROCESSOR/mux3.sv}
vlog -sv -work work +incdir+C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/RISCV_PROCESSOR {C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/RISCV_PROCESSOR/dmem.sv}
vlog -sv -work work +incdir+C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/RISCV_PROCESSOR {C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/RISCV_PROCESSOR/alu.sv}
vlog -sv -work work +incdir+C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/RISCV_PROCESSOR {C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/RISCV_PROCESSOR/imem.sv}

vlog -sv -work work +incdir+C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/RISCV_PROCESSOR {C:/Users/Rao/Desktop/Quartus_github/FPGA_DLD_LAB/RISCV_PROCESSOR/top_ricsv_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  top_ricsv_tb

add wave *
view structure
view signals
run -all
