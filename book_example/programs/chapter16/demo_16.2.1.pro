title = 'Figure 16.2.1'
xsize=360 & ysize=360
@ ../widget

file = FILEPATH('worldelv.dat', SUBDIRECTORY=['examples', 'data'])
OPENR, 2, file
image = BYTARR(360, 360)
READU, 2, image
CLOSE, 2
TV, image
END
