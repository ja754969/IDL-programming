title = 'Figure 8.3.1'
xsize=216 & ysize=216
@ ../widget

x = [0.2, 0.8, 0.8, 0.5, 0.2]
y = [0.2, 0.2, 0.6, 0.8, 0.6]
z = [0.0, 0.0, 0.0, 0.0, 0.0]
v = FLTARR(3, 5)
v[0, *] = x
v[1, *] = y
v[2, *] = z
p = [4, 0, 1, 2, 4, 3, 2, 3, 4]

m = p[0]
d = [p[1:4], p[1]]
PLOTS, x[d], y[d], /T3D

m = p[5]
d = [p[6:8], p[6]]
PLOTS, x[d], y[d], /T3D

i = INDGEN(5)
str = STRING(i, '(I1)')
XYOUTS, x, y, str, SIZE=2

END
