title = 'Figure 20.2.3'
xsize=216 & ysize=162
@ ../widget

a = RANDOMN(3L, 100)
h = HISTOGRAM(a, BINSIZE=0.5, MIN=-3, MAX=3, LOCATIONS=lo)

PLOT, lo, h, XTITLE='A', YTITLE='H'

END
