title = 'Figure 27.4.1'
xsize = 216 & ysize = 162
@ ../widget

file = FILEPATH('pollens.jpg', SUBDIRECTORY=['examples','demo','demodata'])
READ_JPEG, file, image
pollens = image[0:175, 0:121]

TV, pollens
CONTOUR, pollens, /NOERASE, XSTYLE=1, YSTYLE=1

END
