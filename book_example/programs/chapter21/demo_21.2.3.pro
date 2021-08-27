title = 'Figure 21.2.3'
xsize=216 & ysize=162
@ ../widget

n = RANDOMN(5L, 9)
x = FINDGEN(9) + 1
y3 = x^2 + 2 * x + 1 + n
PLOT, x, y3, PSYM=1

r3 = POLY_FIT(x, y3, 2)
PRINT, r3

yf3 = r3[2] * x^ 2 + r3[1] * x + r3[0]
OPLOT, x, yf3

END
