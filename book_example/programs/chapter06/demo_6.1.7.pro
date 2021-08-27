title = 'Figure 6.1.7'
xsize=216 & ysize=162
@ ../widget

x = FINDGEN(25) * 15
y = SIN(x *!DTOR)

PLOT, x, y, TITLE='Demo', XTITLE='X', YTITLE='Y'

END
