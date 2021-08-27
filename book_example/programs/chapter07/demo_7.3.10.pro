title = 'Figure 7.3.10'
xsize=240 & ysize=150
@ ../widget

path = FILEPATH('examples.tif', SUBDIRECTORY=['examples', 'data'])
image2 = READ_IMAGE(path, r, g, b)

temp = image2[125:364, 0:149]
z = REVERSE(temp, 2)
PRINT, MAX(z), MIN(z)

TVSCL, z, TOP=150, /ORDER

END
