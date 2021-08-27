title = 'Figure 6.1.19'
xsize=216 & ysize=162
@ ../widget

x = FINDGEN(361) * !DTOR
y = SIN(x) & z = COS(x)

PLOT, x, y, XSTYLE=1
OPLOT, x, z, MAX_VALUE=0.5, MIN_VALUE=-0.5, THICK=2

end
