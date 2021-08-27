title = 'Figure 12.3.1'
xsize=227 & ysize=147
@ ../widget

path = FILEPATH('rose.jpg', SUBDIRECTORY=['examples', 'data'])
READ_JPEG, path, image

image_r = image[0, *, *]
image_g = image[1, *, *]
image_b = image[2, *, *]
image2 = COLOR_QUAN(image_r, image_g, image_b, r2, g2, b2)

TVLCT, r2, g2, b2
TV, image2
END
