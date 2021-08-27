title = 'Figure 8.3.12'
xsize=216 & ysize=216
@ ../widget

array1 = REPLICATE(2.0, 360, 360)
MESH_OBJ, 4, v, p, array1

SCALE3, XRANGE=[-2, 2], YRANGE=[-2, 2], ZRANGE=[-2, 2]

SET_SHADING, LIGHT=[1, 0, 0], VALUES=[150, 250]
image = POLYSHADE(v, p,  /T3D)
TV, image

END
