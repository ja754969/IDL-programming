title = 'Figure 6.1.20'
xsize=216 & ysize=162
@ ../widget

x = [0.2, 0.8, 0.8, 0.2, 0.2]
y = [0.2, 0.2, 0.6, 0.6, 0.2]
z = FLTARR(2, 5)
z[0, *] = x
z[1, *] = y
PLOTS, z


END
