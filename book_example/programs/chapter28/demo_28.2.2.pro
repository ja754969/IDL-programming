title = 'Figure 28.2.2'
xsize=216 & ysize=162
@ ../widget

sub = ['examples', 'data']
file = FILEPATH('muscle.jpg', SUBDIRECTORY=sub)
READ_JPEG, file, image
img = image[436:651, 50:211]
TV, img

END
