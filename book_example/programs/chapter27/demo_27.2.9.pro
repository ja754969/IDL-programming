title = 'Figure 27.2.9'
xsize = 216 & ysize = 162
@ ../widget

file = FILEPATH('m51.dat', SUBDIRECTORY=['examples','data'])
image = READ_BINARY(file, DATA_DIMS=[340, 440])
galaxy = image[0:215, 150:311]

distance = DIST(216, 162)
filterh = 1. / SQRT(1. + 5/distance)
galaxyh = FFT(galaxy, -1) * filterh
TVSCL, FFT(galaxyh, 1)

END
