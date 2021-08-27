title = 'Figure 27.1.3'
xsize=216 & ysize=162
@ ../widget

sub = ['examples', 'data']
file = FILEPATH('mineral.png', SUBDIRECTORY=sub)
image = READ_IMAGE(file)
img = image[0:215, 0:161]
img3 = REVERSE(img, 1)
TV, img3
END
