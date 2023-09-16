view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 0 -period 200ps -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/demux6to1/in 
wave create -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/demux6to1/in 
wave create -driver freeze -pattern constant -value 101 -range 2 0 -starttime 0ns -endtime 1000ns sim:/demux6to1/sel 
WaveExpandAll -1
WaveCollapseAll -1
wave clipboard restore
