title = 'Figure 6.3.7'
xsize=216 & ysize=162
@ ../widget

x = FINDGEN(361)
y = SIN(x * !DTOR)
z = 2 * COS(x * !DTOR)

PLOT, x, y, XMARGIN=[9, 9], XSTYLE=1, YSTYLE=8, XTITLE='X', YTITLE='Y'
AXIS, 360, 0, YAXIS=1, /SAVE, YRANGE=[-2, 2], YTITLE='Z'
OPLOT, x, z, linestyle=1

END
