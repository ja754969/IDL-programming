title = 'Figure 25.3.1'
xsize=216 & ysize=162
@ ../widget

image = BYTSCL(DIST(400))  
MAP_SET, 0, 0, /ISOTROPIC
imageo = MAP_IMAGE(image, Xstart,Ystart, Xsize, Ysize)  
PRINT, Xsize, Ysize
TV, imageo, Xstart, Ystart  
MAP_GRID
MAP_CONTINENTS
END
