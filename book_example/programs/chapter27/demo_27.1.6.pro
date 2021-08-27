title = 'Figure 27.1.6'

sub = ['examples', 'data']
file = FILEPATH('mineral.png', SUBDIRECTORY=sub)
image = READ_IMAGE(file)
img = image[0:215, 0:161]

dims = SIZE(img, /DIMENSIONS)
xsize=dims[0] + 20
ysize=dims[1] + 20
@ ../widget

img6 = BYTARR(xsize, ysize)
img6[10, 10] = img
TV, img6
END
