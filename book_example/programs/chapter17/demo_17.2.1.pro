title = 'Figure 17.2.1'
xsize = 227 & ysize = 149
@ ../widget

file = FILEPATH('rose.jpg', SUBDIRECTORY=['examples', 'data'])
READ_JPEG, file, image
HELP, image
TV, image, TRUE=1

end

