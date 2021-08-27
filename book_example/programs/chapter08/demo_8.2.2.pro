title = 'Figure 8.2.2'
xsize=216 & ysize=216
@ ../widget

theta = FINDGEN(360)*10
x = 1.5 * COS(theta * !DTOR)
y = 1.5 * SIN(theta * !DTOR)
z = theta * 0.001

SCALE3, XRANGE=[-2, 2],  YRANGE=[-2, 2],  ZRANGE=[0, 4], AX=60, AZ=60

PLOTS, x, y, z, /T3D

tm = !P.T
xs = !X.S
ys = !Y.S
zs = !Z.S
SAVE, tm, xs, ys, zs, x, y, z
END
