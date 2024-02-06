view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/part4/Clk 
wave create -driver freeze -pattern clock -initialvalue 0 -period 52ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/part4/D 
wave create -driver freeze -pattern clock -initialvalue 0 -period 60ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/part4/D 
WaveCollapseAll -1
wave clipboard restore
