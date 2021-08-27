title = 'Figure 25.3.3'
xsize=216 & ysize=162
@ ../widget

image = BYTSCL(DIST(100))  
lati = -60  
lata = 60  
loni = -60   
lona = 60 

MAP_SET, 0, 0, /ISOTROPIC, LIMIT=[lati, loni, lata, lona]  
imageo = MAP_PATCH(image, XSTART=Xstart, YSTART=Ystart, LAT0=lati, LON0=loni, LAT1=lata, LON1=lona)
TV, imageo, Xstart, Ystart  
MAP_GRID
MAP_CONTINENTS

END
