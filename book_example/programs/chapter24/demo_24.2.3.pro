title = 'Figure 24.2.3'
xsize=216 & ysize=162
@ ../widget

dn = 64
dt = 0.5
wt = dt * FINDGEN(dn)
wf1 = 0.2
wf2 = 0.4

wu = SIN(2 * !PI * wf1 * wt) + SIN(2 * !PI * wf2 * wt)
PLOT, wt, wu, XTITLE='T (sec)', XRANGE=[0, 10]

wu3 = HILBERT(wu, 1)
OPLOT, wt, wu3, LINESTYLE=2

rwu3 = REAL_PART(wu3)
PRINT, CORRELATE(wu, rwu3)
END
