title = 'Figure 27.4.4'
xsize = 216 & ysize = 162
@ ../widget

n = BINDGEN(256)
cbh = n # REPLICATE(1B, 20)

p = [0.2, 0.8, 0.8, 0.9]
xz = (p[2] - p[0]) * !D.X_VSIZE + 1
xs = p[0] * !D.X_VSIZE
yz = (p[3] - p[1]) * !D.Y_VSIZE + 1
ys = p[1] * !D.Y_VSIZE

cbh2 = CONGRID(cbh, xz, yz)
TV, cbh2, xs, ys
blank = REPLICATE(' ', 5)
CONTOUR, cbh, POSITION=p, /NODATA, /NOERASE, XSTYLE=1, YSTYLE=1, YTICKLEN=0.001, XTICKS=4, XTICKLEN=-0.15, XMINOR=4, XTITLE='X', XRANGE=[0, 256], YTICKNAME=blank

END
