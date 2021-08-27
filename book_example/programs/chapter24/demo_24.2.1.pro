title = 'Figure 24.2.1'
xsize=216 & ysize=162
@ ../widget

dn = 64
dt = 0.5
wt = dt * FINDGEN(dn)
wf1 = 0.2
wf2 = 0.4

wu = SIN(2 * !PI * wf1 * wt) + SIN(2 * !PI * wf2 * wt) 
PLOT, wt, wu, XTITLE='T (sec)'

END
