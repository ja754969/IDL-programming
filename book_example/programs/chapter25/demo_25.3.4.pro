title = 'Figure 25.3.4'
xsize=216 & ysize=162
@ ../widget

x = FINDGEN(37)
y = FINDGEN(19)
lat = REPLICATE(10,37) # y -90
lon = x # REPLICATE(10,19)
image = BYTSCL(DIST(37,19))
MAP_SET
CONTOUR, image, lon, lat, NLEVELS=10,/OVERPLOT
MAP_GRID
MAP_CONTINENTS
END
