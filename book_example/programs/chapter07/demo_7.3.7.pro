title = 'Figure 7.3.7'
xsize=240 & ysize=150
@ ../widget

path = FILEPATH('examples.tif', SUBDIRECTORY=['examples', 'data'])
image2 = READ_IMAGE(path, r, g, b)

temp = image2[125:364, 0:149]
z = REVERSE(temp, 2)
PRINT, MAX(z), MIN(z)

z2 = BYTSCL(z)
PRINT, MAX(z2), MIN(z2)

TV, z2

END
