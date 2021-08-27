title = 'Figure 27.1.7'
xsize = 216 & ysize = 162
@ ../widget

sub = ['examples', 'data']
file = FILEPATH('mineral.png', SUBDIRECTORY=sub)
image = READ_IMAGE(file)
img = image[0:215, 0:161]

dims = SIZE(img, /DIMENSIONS)
xsize=dims[0] / 2
ysize=dims[1] / 2

img7 = REBIN(img, xsize, ysize)
img7 = CONGRID(img, xsize, ysize)
TV, img7
END
