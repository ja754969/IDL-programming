title = 'Figure 27.2.7'
xsize = 216 & ysize = 162
@ ../widget

file = FILEPATH('m51.dat', SUBDIRECTORY=['examples','data'])
image = READ_BINARY(file, DATA_DIMS=[340, 440])
galaxy = image[0:215, 150:311]

kernh = REPLICATE(-1./9, 3, 3)
kernh[1, 1] = 1.
PRINT, kernh
galaxy = FLOAT(galaxy)
TVSCL, CONVOL(galaxy, kernh)

END
