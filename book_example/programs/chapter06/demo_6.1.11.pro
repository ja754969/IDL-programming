title = 'Figure 6.1.11'
xsize=216 & ysize=162
@ ../widget

x = FINDGEN(25) * 15
y = SIN(x *!DTOR)

PLOT, x, y, XRANGE=[0, 360], XSTYLE=1, YTHICK=2

END
