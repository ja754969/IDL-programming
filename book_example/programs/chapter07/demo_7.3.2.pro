title = 'Figure 7.3.2'
xsize=216 & ysize=162
@ ../widget

path = FILEPATH('rose.jpg', SUBDIRECTORY=['examples', 'data'])
image = READ_IMAGE(path)
temp = REFORM(image[0, *, *])

z = CONGRID(temp, 108, 81)

TV, z, 0
TV, z, 3

END
