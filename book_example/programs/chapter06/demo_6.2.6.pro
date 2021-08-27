title = 'Figure 6.2.6'
xsize=216 & ysize=162
@ ../widget

z = DIST(200, 200)

CONTOUR, z, NLEVELS=5, PATH_XY=xy, PATH_INFO=info, /PATH_DATA_COORDS, /PATH_DOUBLE, /CLOSED
PLOTS, xy

END
