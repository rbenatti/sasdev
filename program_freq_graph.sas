ods graphics on;
ods noproctitle;

title "FREQ - STORM FINAL";

proc freq data=pg1.storm_final order=freq nlevels;
    format StartDate monname.;
	tables BasinName 
           StartDate 
                / 
                nocum 
                plots=freqplot
                    (orient=horizontal
                     scale=percent);
run;
title;
ods noproctitle;


