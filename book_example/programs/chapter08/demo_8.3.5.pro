title = 'Figure 8.3.5'
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

T3D, ROTATE=[-60, 0, 0]
image = POLYSHADE(v, p, /T3D)
TV, image

END
