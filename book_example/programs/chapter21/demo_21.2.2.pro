title = 'Figure 21.2.2'
xsize=216 & ysize=162
@ ../widget

n = RANDOMN(5L, 9)
x = FINDGEN(9) + 1
y2 = 2 * x + 1 + 10 * n
PLOT, x, y2, PSYM=1

r2 = POLY_FIT(x, y2, 1)
PRINT, r2

yf2 = r2[1] * x + r2[0]
OPLOT, x, yf2

END
