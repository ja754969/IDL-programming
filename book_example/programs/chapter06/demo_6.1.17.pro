title = 'Figure 6.1.17'
xsize=216 & ysize=162
@ ../widget

x = FINDGEN(25) * 15
y = SIN(x *!DTOR)

PLOT, x, y, YTICKFORMAT='(F5.2)', YTICKUNITS='Numeric'

END
