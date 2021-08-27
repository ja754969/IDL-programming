; Example 7.3.1

path = FILEPATH('examples.tif', SUBDIRECTORY=['examples', 'data'])
image2 = READ_IMAGE(path, r, g, b)

temp = image2[125:364, 0:149]
z = REVERSE(temp, 2)

SET_PLOT, 'PS'
TVSCL, z, XSIZE=6, YSIZE=4, /INCHES
DEVICE, /CLOSE_FILE

END
