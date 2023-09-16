transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/home/Desktop/VIDEO/lab7(c) {C:/Users/home/Desktop/VIDEO/lab7(c)/tc21073_sub_8.sv}
vlog -sv -work work +incdir+C:/Users/home/Desktop/VIDEO/lab7(c) {C:/Users/home/Desktop/VIDEO/lab7(c)/fulladder1.sv}

