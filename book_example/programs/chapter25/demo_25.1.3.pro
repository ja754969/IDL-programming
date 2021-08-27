title = 'Figure 25.1.3'
xsize=216 & ysize=162
@ ../widget

PLOT, [0, 1], /NODATA
x = [0, 1]
y = [0, 1]
r = CONVERT_COORD(x, y, /TO_NORMAL)
PRINT, r
PLOTS, r, /NORMAL
END
