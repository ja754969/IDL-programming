title = 'Figure 27.2.5'
xsize = 216 & ysize = 162
@ ../widget

file = FILEPATH('m51.dat', SUBDIRECTORY=['examples','data'])
image = READ_BINARY(file, DATA_DIMS=[340, 440])
galaxy = image[0:215, 150:311]

TVSCL, galaxy

END
