transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/home/Desktop/VIDEO/fullsub8 {C:/Users/home/Desktop/VIDEO/fullsub8/fullsub8.sv}

