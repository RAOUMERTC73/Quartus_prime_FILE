onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /parityodd/a
add wave -noupdate /parityodd/b
add wave -noupdate /parityodd/c
add wave -noupdate /parityodd/d
add wave -noupdate /parityodd/peven
add wave -noupdate /parityodd/podd
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {9195190 ps} 0}
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
wave create -driver freeze -pattern clock -initialvalue 0 -period 1600ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/parityodd/a 
wave create -driver freeze -pattern clock -initialvalue 0 -period 800ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/parityodd/b 
wave create -driver freeze -pattern clock -initialvalue 0 -period 400ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/parityodd/c 
wave create -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/parityodd/d 
wave modify -driver freeze -pattern clock -initialvalue St0 -period 1600ns -dutycycle 50 -starttime 0ns -endtime 10000ns Edit:/parityodd/a 
wave modify -driver freeze -pattern clock -initialvalue St0 -period 800ns -dutycycle 50 -starttime 0ns -endtime 10000ns Edit:/parityodd/b 
wave modify -driver freeze -pattern clock -initialvalue St0 -period 400ns -dutycycle 50 -starttime 0ns -endtime 10000ns Edit:/parityodd/c 
wave modify -driver freeze -pattern clock -initialvalue St0 -period 200ns -dutycycle 50 -starttime 0ns -endtime 10000ns Edit:/parityodd/d 
WaveCollapseAll -1
wave clipboard restore
