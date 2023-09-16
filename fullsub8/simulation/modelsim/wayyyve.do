view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 00001001 -range 7 0 -starttime 0ns -endtime 1000ns sim:/adder4/a 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 00001010 -range 7 0 -starttime 0ns -endtime 1000ns sim:/adder4/b 
WaveExpandAll -1
wave create -driver freeze -pattern clock -initialvalue HiZ -period 200ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/adder4/cin 
WaveCollapseAll -1
wave clipboard restore
