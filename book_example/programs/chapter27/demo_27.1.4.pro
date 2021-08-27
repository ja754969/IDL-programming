title = 'Figure 27.1.4'
xsize=216 & ysize=216
@ ../widget

sub = ['examples', 'data']
file = FILEPATH('mineral.png', SUBDIRECTORY=sub)
image = READ_IMAGE(file)
img = image[0:215, 0:161]
img4 = TRANSPOSE(img)
TV, img4
HELP, img, img4
END
