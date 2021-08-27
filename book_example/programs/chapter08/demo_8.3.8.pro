title = 'Figure 8.3.8'
xsize=216 & ysize=216
@ ../widget

array1 = [[2, 2], [0, 0], [0, 3]]
array1 = TRANSPOSE(array1)
MESH_OBJ, 6, v, p, array1, P1=180, P3=[0, 0, 1]

SCALE3, XRANGE=[-2, 2], YRANGE=[-2, 2], ZRANGE=[-2, 2]

image = POLYSHADE(v, p, /T3D)

TV, image
END
