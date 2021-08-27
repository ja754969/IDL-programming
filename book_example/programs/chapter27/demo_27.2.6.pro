title = 'Figure 27.2.6'
xsize = 216 & ysize = 162
@ ../widget

file = FILEPATH('m51.dat', SUBDIRECTORY=['examples','data'])
image = READ_BINARY(file, DATA_DIMS=[340, 440])
galaxy = image[0:215, 150:311]

kerns = REPLICATE(1./9, 3, 3)
PRINT, kerns
galaxy = FLOAT(galaxy)
TVSCL, CONVOL(galaxy, kerns)

END
