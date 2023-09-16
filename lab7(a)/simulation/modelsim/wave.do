view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 0001 -range 3 0 -starttime 0ns -endtime 1000ns sim:/tc21073_adder_4/a 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 0010 -range 3 0 -starttime 0ns -endtime 1000ns sim:/tc21073_adder_4/b 
WaveExpandAll -1
wave create -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/tc21073_adder_4/cin 
WaveCollapseAll -1
wave clipboard restore
