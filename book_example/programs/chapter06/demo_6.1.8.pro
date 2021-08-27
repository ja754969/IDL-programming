title = 'Figure 6.1.8'
xsize=216 & ysize=162
@ ../widget

x = FINDGEN(25) * 15
y = SIN(x *!DTOR)

PLOT, x, y, BACKGROUND=0, COLOR=255, CHARSIZE=1.2

END
