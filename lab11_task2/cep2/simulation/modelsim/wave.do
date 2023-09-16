view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/seq_detector/w 
wave create -driver freeze -pattern clock -initialvalue HiZ -period 100ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/seq_detector/clk 
WaveCollapseAll -1
wave clipboard restore
