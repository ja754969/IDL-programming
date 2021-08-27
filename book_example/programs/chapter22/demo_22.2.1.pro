title = 'Figure 22.2.1'
xsize=216 & ysize=162
@ ../widget

v = FLOAT([6, 2, 8, 9, 4, 3, 5, 1, 7])
x = FINDGEN(9)

v2 = INTERPOL(v, 17)
x2 = FINDGEN(17) / 2

PLOT, v
OPLOT, x2, v2, PSYM=1
END
