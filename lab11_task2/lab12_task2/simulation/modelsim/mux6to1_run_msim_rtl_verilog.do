transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/intelFPGA_lite/17.0/lab12_task2 {C:/intelFPGA_lite/17.0/lab12_task2/mux6to1.sv}

