title = 'Figure 8.2.1'
xsize=216 & ysize=216
@ ../widget

theta = FINDGEN(360)*10
x = 1.5 * COS(theta * !DTOR)
y = 1.5 * SIN(theta * !DTOR)
z = theta * 0.001

SCALE3, XRANGE=[-2, 2],  YRANGE=[-2, 2],  ZRANGE=[0, 4]

PLOTS, x, y, z, /T3D

END
