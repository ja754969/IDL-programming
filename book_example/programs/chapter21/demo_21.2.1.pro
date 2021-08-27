title = 'Figure 21.2.1'
xsize=216 & ysize=162
@ ../widget

n = RANDOMN(5L, 9)
x = FINDGEN(9) + 1
y = 2 * x + 1 + n
PLOT, x, y, PSYM=1

r = POLY_FIT(x, y, 1)
PRINT, r

yf = r[1] * x + r[0]
OPLOT, x, yf

END
