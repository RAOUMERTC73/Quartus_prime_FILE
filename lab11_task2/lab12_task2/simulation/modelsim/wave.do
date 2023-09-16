view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 100000 -range 5 0 -starttime 0ns -endtime 1000ns sim:/mux6to1/a 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 000 -range 2 0 -starttime 0ns -endtime 1000ns sim:/mux6to1/sel 
WaveExpandAll -1
WaveCollapseAll -1
wave clipboard restore
