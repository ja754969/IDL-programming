title = 'Figure 20.2.2'
xsize=216 & ysize=162
@ ../widget

a = RANDOMN(3L, 100)
in = FINDGEN(100)
h = HISTOGRAM(a, OMIN=oi, OMAX=oa, LOCATIONS=lo)
PRINT, oi, oa
PRINT, lo

PLOT, lo, h, XTITLE='A', YTITLE='H'

END
