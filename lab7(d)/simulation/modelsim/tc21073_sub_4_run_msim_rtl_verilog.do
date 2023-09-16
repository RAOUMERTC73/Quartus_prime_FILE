transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/home/Desktop/VIDEO/lab7(d) {C:/Users/home/Desktop/VIDEO/lab7(d)/tc21073_sub_4.sv}
vlog -sv -work work +incdir+C:/Users/home/Desktop/VIDEO/lab7(d) {C:/Users/home/Desktop/VIDEO/lab7(d)/fulladder1.sv}

