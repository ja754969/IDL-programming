title = 'Figure 25.1.2'
xsize=216 & ysize=162
@ ../widget

PLOT, [0, 1], /NODATA
x = [0, 1]
y = [1, 0]
r = CONVERT_COORD(x, y, /TO_DEVICE)
PRINT, r
PLOTS, r, /DEVICE
END
