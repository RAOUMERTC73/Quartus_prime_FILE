transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/intelFPGA_lite/17.0/lab_12 {C:/intelFPGA_lite/17.0/lab_12/bcd_to_7segment_decoder.sv}

