title = 'Figure 6.1.10'
xsize=216 & ysize=162
@ ../widget

x = FINDGEN(25) * 15
y = SIN(x *!DTOR)

PLOT, x, y, XRANGE=[0, 360], LINESTYLE=2, THICK=2

END
