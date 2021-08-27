title = 'Figure 27.1.11'
xsize = 216 & ysize = 162
@ ../widget

sub = ['examples', 'data']
file = FILEPATH('mineral.png', SUBDIRECTORY=sub)
image = READ_IMAGE(file)
img = image[0:215, 0:161]

IMAGE_STATISTICS, img, MEAN=ave, STDDEV=std
PRINT, ave, std

dims = SIZE(img, /DIMENSIONS)
xsize = dims[0]
ysize = dims[1]
mk = BYTARR(xsize, ysize)
index = WHERE(img LE 100)
mk[index] = 255
IMAGE_STATISTICS, img, MEAN=ave, STDDEV=std, MASK=mk
PRINT, ave, std

h = HISTOGRAM(img)
PLOT, h
END
