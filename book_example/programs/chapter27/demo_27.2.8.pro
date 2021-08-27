title = 'Figure 27.2.8'
xsize = 216 & ysize = 162
@ ../widget

file = FILEPATH('m51.dat', SUBDIRECTORY=['examples','data'])
image = READ_BINARY(file, DATA_DIMS=[340, 440])
galaxy = image[0:215, 150:311]

distance = DIST(216, 162)
filters = 1. / SQRT(1. + distance/5)
galaxys = FFT(galaxy, -1) * filters
TVSCL, FFT(galaxys, 1)

END
