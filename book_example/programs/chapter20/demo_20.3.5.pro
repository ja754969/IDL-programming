title = 'Figure 20.3.5'
xsize=216 & ysize=162
@ ../widget

x = FINDGEN(9) + 1
y = 3 * x + 4
s = SQRT(y)

PLOT, x, y, XTITLE='X', YTITLE='Y'
ERRPLOT, x, y-s, y+s, WIDTH=0.05

END
