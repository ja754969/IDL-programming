title = 'Figure 17.2.2'
xsize = 227 & ysize = 149
@ ../widget

file = FILEPATH('rose.jpg', SUBDIRECTORY=['examples', 'data'])

READ_JPEG, file, image2, ct
HELP, image2, ct
tvlct, ct
TV, image2
end

