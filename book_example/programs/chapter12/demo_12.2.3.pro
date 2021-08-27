title = 'Figure 12.2.3'
xsize=216 & ysize=162
@ ../widget

red = [255, 0, 0, 255]
green = [0, 255, 0, 255]
blue = [0, 0, 255, 255]
TVLCT, red, green, blue, 1

theta = FINDGEN(401)
y1 = SIN(theta * !DTOR)
y2 = FLTARR(401)
y3 = COS(theta * !DTOR)

PLOT, theta, y1, /NODATA
OPLOT, theta, y1, COLOR=1
OPLOT, theta, y2, COLOR=2
OPLOT, theta, y3, COLOR=3

END
