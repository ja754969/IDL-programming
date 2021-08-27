title = 'Figure 25.3.2'
xsize=216 & ysize=162
@ ../widget

image = BYTSCL(DIST(400))  
TV, image  
lati = -60  
lata = 60  
loni = -60   
lona = 60 

MAP_SET, 0, 0, /ISOTROPIC, LIMIT=[lati, loni, lata, lona]  
imageo = MAP_IMAGE(image, Xstart,Ystart, LATMIN=lati, LONMIN=loni, LATMAX=lata, LONMAX=lona)
TV, imageo, Xstart, Ystart  
MAP_GRID
MAP_CONTINENTS

END
