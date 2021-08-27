title = 'Figure 6.1.15'
xsize=216 & ysize=162
@ ../widget

x = FINDGEN(25) * 15
y = SIN(x *!DTOR)

PLOT, x, y, XTICKINTERVAL=200, XTICKNAME=['a', 'b', 'c']

END
