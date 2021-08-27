title = 'Figure 13.2.1'
xsize=216 & ysize=162
@ ../widget

PLOT, [0,1], /NODATA
a = '!3My Plot (Hershey)'
b = '!3My Plot (TrueType)'
c = '!3My Plot (Device)'
XYOUTS, 0.1, 0.8, a, FONT=-1
XYOUTS, 0.1, 0.5, b, FONT=1
XYOUTS, 0.1, 0.2, c, FONT=0

END
