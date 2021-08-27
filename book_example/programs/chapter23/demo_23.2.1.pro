title = 'Figure 23.2.1'
xsize=216 & ysize=162
@ ../widget

p = findgen(25)
xmin = JULDAY(9, 15, 1997, 0, 0, 0)
xmax = JULDAY(9, 16, 1997, 0, 0, 0)
jd = TIMEGEN(25, START=xmin, FINAL=xmax, UNITS='Hours')

dummy = LABEL_DATE()
PLOT, jd, p, XTICKFORMAT='LABEL_DATE', XSTYLE=1, XRANGE=[xmin, xmax], XTICKS=3

END
