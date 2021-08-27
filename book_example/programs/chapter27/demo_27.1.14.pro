title = 'Figure 27.1.14'

file = FILEPATH('head.dat', SUBDIRECTORY=['examples','data'])
vol = READ_BINARY(file, DATA_DIMS=[80, 100, 57])

DEVICE, DECOMPOSED=0
dims = SIZE(vol, /DIMENSIONS)
xsize = dims[0] * 3
ysize = dims[1] * 3
@ ../widget

vol2 = REFORM(vol[*, *, 32])
vol3 = CONGRID(vol2, xsize, ysize)
TV, vol3

prof = PROFILE(vol3)
xsize = 216 & ysize = 162
@ ../widget
PLOT, prof

END
