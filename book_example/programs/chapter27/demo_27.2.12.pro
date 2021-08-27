title = 'Figure 27.2.12'
xsize = 216 & ysize = 162
@ ../widget

file = FILEPATH('m51.dat', SUBDIRECTORY=['examples','data'])
image = READ_BINARY(file, DATA_DIMS=[340, 440])
galaxy = image[0:215, 150:311]

TV, HIST_EQUAL(galaxy)

END
