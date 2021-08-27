; Example 27.4.1
file = FILEPATH('pollens.jpg', SUBDIRECTORY=['examples','demo','demodata'])
READ_JPEG, file, image
pollens = image[0:175, 0:121]

SET_PLOT, 'PS'
DEVICE, FILENAME='pollens.ps'
p = [0.2, 0.2, 0.8, 0.8]
xz = (p[2] - p[0]) * !D.X_VSIZE
xs = p[0] * !D.X_VSIZE
yz = (p[3] - p[1]) * !D.Y_VSIZE
ys = p[1] * !D.Y_VSIZE
PRINT, !D.X_VSIZE, !D.Y_VSIZE
print, xz, yz
print, xs, ys

TV, pollens, xs, ys, XSIZE=xz, YSIZE=yz
CONTOUR, pollens, /NOERASE, XSTYLE=1, YSTYLE=1, POSITION=p
DEVICE, /CLOSE_FILE

END
