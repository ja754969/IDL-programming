title = 'Figure 27.1.5'
xsize=216 & ysize=162
@ ../widget

sub = ['examples', 'data']
file = FILEPATH('mineral.png', SUBDIRECTORY=sub)
image = READ_IMAGE(file)
img = image[0:215, 0:161]
img5 = ROTATE(img, 2)
;img5 = ROT(img, 180)
TV, img5
END
