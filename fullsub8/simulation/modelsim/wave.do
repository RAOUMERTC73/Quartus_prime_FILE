onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /adder4/a
add wave -noupdate /adder4/b
add wave -noupdate /adder4/cin
add wave -noupdate /adder4/sum
add wave -noupdate /adder4/cout
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {57310 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {1050 ns}
view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 00110010 -range 7 0 -starttime 0ns -endtime 1000ns sim:/adder4/a 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 00011110 -range 7 0 -starttime 0ns -endtime 1000ns sim:/adder4/b 
WaveExpandAll -1
wave create -driver freeze -pattern clock -initialvalue HiZ -period 200ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/adder4/cin 
WaveCollapseAll -1
wave clipboard restore
