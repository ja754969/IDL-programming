title = 'Figure 22.2.4'
xsize=216 & ysize=162
@ ../widget

v = FLOAT([6, 2, 8, 9, 4, 3, 5, 1, 7])
x = FINDGEN(9)

x5 = FINDGEN(8) + 0.5
v5ls = INTERPOL(v, x, x5, /LSQUADRATIC)

PLOT, x, v
OPLOT, x5, v5ls, LINESTYLE=2
END
