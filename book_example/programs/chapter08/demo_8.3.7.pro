title = 'Figure 8.3.7'
xsize=216 & ysize=216
@ ../widget

subdir =['examples', 'data']
path = FILEPATH('worldelv.dat', SUBDIRECTORY=subdir)
file = READ_BINARY(path, DATA_DIMS=[360, 360])

array1 = REPLICATE(2.0, 360, 360)
MESH_OBJ, 3, v, p, array1, P4=3.0

SCALE3, XRANGE=[-2, 2], YRANGE=[-2, 2], ZRANGE=[-2, 2]

image = POLYSHADE(v, p, SHADES=file, /T3D)

TV, image
END
