title = 'Figure 23.2.3'
xsize=216 & ysize=162
@ ../widget

p = findgen(25)
xmin = JULDAY(9, 15, 1997, 0, 0, 0)
xmax = JULDAY(9, 16, 1997, 0, 0, 0)
jd = TIMEGEN(25, START=xmin, FINAL=xmax, UNITS='Hours')

xticks = 3
delta = FINDGEN(xticks + 1)
delta = delta * (xmax - xmin) / xticks + xmin
CALDAT, delta, mm, dd, yy, hh, ii, ss
ahh = STRING(hh, '(I2.2)')
aii = STRING(ii, '(I2.2)')
timlbl = ahh + ':' + aii

PLOT, jd, p, XSTYLE=1, XRANGE=[xmin, xmax], XTICKS=3, XTICKNAME=timlbl

END
