title = 'Figure 6.1.9'
xsize=216 & ysize=162
@ ../widget

x = FINDGEN(25) * 15
y = SIN(x *!DTOR)

PLOT, x, y, CHARTHICK=2, XCHARSIZE=1.5, PSYM=1

END
