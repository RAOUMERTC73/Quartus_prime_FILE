transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -sv -work work +incdir+. {or_gate.svo}

vlog -sv -work work +incdir+C:/Users/home/Desktop/quartus_verilog_github/or_gate {C:/Users/home/Desktop/quartus_verilog_github/or_gate/or_gate_tb.sv}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L altera_lnsim_ver -L cyclonev_ver -L lpm_ver -L sgate_ver -L cyclonev_hssi_ver -L altera_mf_ver -L cyclonev_pcie_hip_ver -L gate_work -L work -voptargs="+acc"  or_gate_tb

add wave *
view structure
view signals
run -all
