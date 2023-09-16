view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 00000001 -range 7 0 -starttime 0ns -endtime 1000ns sim:/adder4/a 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 00000001 -range 7 0 -starttime 0ns -endtime 1000ns sim:/adder4/b 
WaveExpandAll -1
wave create -driver freeze -pattern clock -initialvalue 0 -period 200ps -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/adder4/cin 
wave modify -driver freeze -pattern clock -initialvalue St0 -period 200ns -dutycycle 50 -starttime 0ns -endtime 1000ns Edit:/adder4/cin 
WaveCollapseAll -1
wave clipboard restore
