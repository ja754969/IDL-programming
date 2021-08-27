title = 'Figure 22.2.2'
xsize=216 & ysize=162
@ ../widget

v = FLOAT([6, 2, 8, 9, 4, 3, 5, 1, 7])
x = FINDGEN(9)

x3 = [2.3, 3.9, 4.5]
v3 = INTERPOL(v, x, x3)

PLOT, x, v
OPLOT, x3, v3, PSYM=1
END
