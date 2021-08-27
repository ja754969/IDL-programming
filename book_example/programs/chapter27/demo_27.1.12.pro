title = 'Figure 27.1.12'

file = FILEPATH('head.dat', SUBDIRECTORY=['examples','data'])
vol = READ_BINARY(file, DATA_DIMS=[80, 100, 57])
;OPENR, 1, file
;vol = BYTARR(80, 100, 57)
;READU, 1, vol
;CLOSE, 1

DEVICE, DECOMPOSED=0
dims = SIZE(vol, /DIMENSIONS)
xsize = dims[0] * 3
ysize = dims[1] * 2
@ ../widget

vol2 = REFORM(vol[*,*,0])
TV, vol2, 0
vol2 = REFORM(vol[*,*,8])
TV, vol2, 1
vol2 = REFORM(vol[*,*,16])
TV, vol2, 2
vol2 = REFORM(vol[*,*,24])
TV, vol2, 3
vol2 = REFORM(vol[*,*,32])
TV, vol2, 4
vol2 = REFORM(vol[*,*,40])
TV, vol2, 5

END
