title = 'Figure 12.3.3'
xsize=227 & ysize=147
@ ../widget

path = FILEPATH('rose.jpg', SUBDIRECTORY=['examples', 'data'])
READ_JPEG, path, image

image4 = COLOR_QUAN(image, 1, r4, g4, b4, COLORS=64)
TVLCT, r4, g4, b4
TV, image4
END
