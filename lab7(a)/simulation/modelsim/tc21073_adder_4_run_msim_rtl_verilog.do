transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/home/Desktop/VIDEO/lab7(a) {C:/Users/home/Desktop/VIDEO/lab7(a)/tc21073_adder_4.sv}
vlog -sv -work work +incdir+C:/Users/home/Desktop/VIDEO/lab7(a) {C:/Users/home/Desktop/VIDEO/lab7(a)/fulladder1.sv}

