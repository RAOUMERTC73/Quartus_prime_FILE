view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 0001 -range 3 0 -starttime 0ns -endtime 1000ns sim:/bcd_to_7segment_decoder/bcd 
wave create -driver freeze -pattern constant -value 0010 -range 3 0 -starttime 0ns -endtime 1000ns sim:/bcd_to_7segment_decoder/bcd 
WaveExpandAll -1
WaveCollapseAll -1
wave clipboard restore
