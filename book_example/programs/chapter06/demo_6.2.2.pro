title = 'Figure 6.2.2'
xsize=216 & ysize=162
@ ../widget

z = DIST(256, 168)
x = FINDGEN(256) * 0.5
y = FINDGEN(168) * 0.2

CONTOUR, z, x, y

END
