title = 'Figure 27.2.4'
xsize = 216 & ysize = 162
@ ../widget

file = FILEPATH('nyny.dat', SUBDIRECTORY=['examples','data'])
image = READ_BINARY(file, DATA_DIMS=[768, 512])
city = image[0:215, 0:161]

TVSCL, SOBEL(city)

END
