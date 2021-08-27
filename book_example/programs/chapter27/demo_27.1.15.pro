title = 'Figure 27.1.15'
xsize = 220 & ysize = 120
@ ../widget

file = FILEPATH('head.dat', SUBDIRECTORY=['examples','data'])
vol = READ_BINARY(file, DATA_DIMS=[80, 100, 57])

DEVICE, DECOMPOSED=0
dims = SIZE(vol, /DIMENSIONS)
xsize = dims[0] * 3
ysize = dims[1] * 3

vol2 = REFORM(vol[*, *, 32])
vol3 = CONGRID(vol2, xsize, ysize)
vol4 = vol3[10:229, 15:134]
TV, vol4

END
