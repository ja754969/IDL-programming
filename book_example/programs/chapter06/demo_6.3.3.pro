title = 'Figure 6.3.3'
xsize=216 & ysize=162
@ ../widget

x = [1, 2, 3, 4] & y = [2, 4, 3, 5]

PLOT, x, y, XRANGE=[0, 6], YRANGE=[0, 8]
OPLOT, x, REVERSE(y), LINESTYLE=2

XYOUTS, 4.2, 5.5, 'Solid'
XYOUTS, 4.2, 2.5, 'Dash'

END
