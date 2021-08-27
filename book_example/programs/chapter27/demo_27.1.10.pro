title = 'Figure 27.1.10'
xsize = 216 & ysize = 162
@ ../widget
DEVICE, DECOMPOSED=0

sub = ['examples', 'data']
file = FILEPATH('mineral.png', SUBDIRECTORY=sub)
image = READ_IMAGE(file)
img = image[0:215, 0:161]

nimg = img
index = WHERE(nimg LE 100)
nimg[index] = 255
TV, nimg
END
