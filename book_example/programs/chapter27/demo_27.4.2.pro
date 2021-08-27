title = 'Figure 27.4.2'
xsize = 216 & ysize = 162
@ ../widget

file = FILEPATH('pollens.jpg', SUBDIRECTORY=['examples','demo','demodata'])
READ_JPEG, file, image
pollens = image[0:175, 0:121]

p = [0.2, 0.2, 0.8, 0.8]
xz = (p[2] - p[0]) * !D.X_VSIZE + 1
xs = p[0] * !D.X_VSIZE
yz = (p[3] - p[1]) * !D.Y_VSIZE + 1
ys = p[1] * !D.Y_VSIZE
xz = LONG(xz)
yz = LONG(yz)
xs = LONG(xs)
ys = LONG(ys)
PRINT, !D.X_VSIZE, !D.Y_VSIZE
print, xz, yz, xs, ys

pollens2 = CONGRID(pollens, xz, yz)
TV, pollens2, xs, ys
CONTOUR, pollens, /NOERASE, XSTYLE=1, YSTYLE=1, POSITION=p

END
