title = 'Figure 27.4.3'
xsize = 216 & ysize = 162
@ ../widget

m = BINDGEN(256)
cbv = REPLICATE(1B, 20) # m

p = [0.8, 0.2, 0.9, 0.8]
xz = (p[2] - p[0]) * !D.X_VSIZE + 1
xs = p[0] * !D.X_VSIZE
yz = (p[3] - p[1]) * !D.Y_VSIZE + 1
ys = p[1] * !D.Y_VSIZE

cbv2 = CONGRID(cbv, xz, yz)
TV, cbv2, xs, ys
blank = REPLICATE(' ', 5)
CONTOUR, cbv, POSITION=p, /NODATA, /NOERASE, XSTYLE=l, YSTYLE=1, XTICKLEN=0.001, YTICKS=4, YTICKLEN=-0.15, YMINOR=4, YTITLE='Y', YRANGE=[0, 256], XTICKNAME=blank

END
