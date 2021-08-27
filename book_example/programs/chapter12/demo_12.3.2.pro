title = 'Figure 12.3.2'
xsize=227 & ysize=147
@ ../widget

path = FILEPATH('rose.jpg', SUBDIRECTORY=['examples', 'data'])
READ_JPEG, path, image

image3 = COLOR_QUAN(image, 1, r3, g3, b3)
TVLCT, r3, g3, b3
TV, image3
END
