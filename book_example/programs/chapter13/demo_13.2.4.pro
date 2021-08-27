title = 'Figure 13.2.4'
xsize=216 & ysize=162
@ ../widget

x = STRING('141'ob)
x = x + 'bc'
y = '!7' + x + '!3'
PLOT, [0,1], /NODATA, XSTYLE=4, YSTYLE=4
XYOUTS, 0.1, 0.8, x, SIZE=2
XYOUTS, 0.1, 0.5, y, SIZE=2

END
