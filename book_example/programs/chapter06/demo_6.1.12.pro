title = 'Figure 6.1.12'
xsize=216 & ysize=162
@ ../widget

x = FINDGEN(25) * 15
y = SIN(x *!DTOR)

PLOT, x, y, /NODATA, POSITION=[0.2, 0.5, 0.7, 0.9]

END
