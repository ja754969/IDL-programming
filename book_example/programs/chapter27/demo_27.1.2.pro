title = 'Figure 27.1.2'
xsize=216 & ysize=162
@ ../widget

sub = ['examples', 'data']
file = FILEPATH('mineral.png', SUBDIRECTORY=sub)
image = READ_IMAGE(file)
img = image[0:215, 0:161]
img2 = SHIFT(img, 50, 30)
TV, img2
END
