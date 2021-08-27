title = 'Figure 7.3.3'
xsize=216 & ysize=162
@ ../widget

path = FILEPATH('rose.jpg', SUBDIRECTORY=['examples', 'data'])
image = READ_IMAGE(path)
temp = REFORM(image[0, *, *])

z = CONGRID(temp, 108, 81)
TV, z, 54, 40

END
