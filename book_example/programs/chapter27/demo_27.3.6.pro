title = 'Figure 27.3.6'
xsize = 216 & ysize = 162
@ ../widget

file = FILEPATH('pollens.jpg', SUBDIRECTORY=['examples','demo','demodata'])
READ_JPEG, file, image
pollens = image[0:215, 0:161]

r = 2
struc = SHIFT(DIST(2*r+1), r, r) LE r

toph = MORPH_TOPHAT(pollens, struc)
TVSCL, toph < 50

END
