transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+D:/Downloads/Programs/fulladder8 {D:/Downloads/Programs/fulladder8/fulladder8.sv}

