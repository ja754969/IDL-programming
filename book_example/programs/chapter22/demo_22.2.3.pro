title = 'Figure 22.2.3'
xsize=216 & ysize=162
@ ../widget

v = FLOAT([6, 2, 8, 9, 4, 3, 5, 1, 7])
x = FINDGEN(9)

v[2:3] = !VALUES.F_NAN

x4 = [2.3, 3.9, 4.5]
v4 = INTERPOL(v, x, x4)

PLOT, x, v
OPLOT, x4, v4, PSYM=1
END
