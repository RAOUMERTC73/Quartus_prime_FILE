view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 0ns -endtime 10000ns sim:/parityodd/a 
wave create -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/parityodd/a 
wave modify -driver freeze -pattern clock -initialvalue St0 -period 200ns -dutycycle 50 -starttime 0ns -endtime 10000ns Edit:/parityodd/a 
wave create -driver freeze -pattern clock -initialvalue 0 -period 400ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/parityodd/b 
wave create -driver freeze -pattern clock -initialvalue 0 -period 600ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/parityodd/c 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 800ns -dutycycle 50 -starttime 0ns -endtime 10000ns Edit:/parityodd/c 
wave modify -driver freeze -pattern clock -initialvalue St0 -period 400ns -dutycycle 50 -starttime 0ns -endtime 10000ns Edit:/parityodd/b 
wave create -driver freeze -pattern clock -initialvalue 0 -period 1600ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/parityodd/d 
wave modify -driver freeze -pattern clock -initialvalue St0 -period 1600ns -dutycycle 50 -starttime 0ns -endtime 10000ns Edit:/parityodd/d 
WaveCollapseAll -1
wave clipboard restore
