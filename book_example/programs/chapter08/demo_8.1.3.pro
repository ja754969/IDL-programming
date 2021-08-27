title = 'Figure 8.1.3'
xsize=216 & ysize=162
@ ../widget

z = DIST(26, 26)

SURFACE, z, AX=60, AZ=60, /SAVE
CONTOUR, z, ZVALUE=1, /T3D, /NOERASE

END
