title = 'Figure 6.3.6'
xsize=216 & ysize=162
@ ../widget

r = FINDGEN(100) * 0.1
theta = FINDGEN(100) * 0.2

PLOT, r, theta, /POLAR, XSTYLE=4, YSTYLE=4
AXIS, 0, 0
AXIS, 0, 0, YAXIS=0

END
