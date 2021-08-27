title = 'Figure 12.2.1'
xsize=216 & ysize=162
@ ../widget

z = BYTSCL(DIST(216, 162))

LOADCT, 13, NCOLORS=128
LOADCT, 32, BOTTOM=128

TV, z

END
