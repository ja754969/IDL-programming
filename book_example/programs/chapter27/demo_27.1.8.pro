title = 'Figure 27.1.8'
xsize = 216 & ysize = 162
@ ../widget

sub = ['examples', 'data']
file = FILEPATH('mineral.png', SUBDIRECTORY=sub)
image = READ_IMAGE(file)
img = image[0:215, 0:161]

img8 = BYTSCL(img GE 100)
TV, img8
END
