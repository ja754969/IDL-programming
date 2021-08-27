title = 'Figure 21.3.1'
xsize=216 & ysize=162
@ ../widget

x = FINDGEN(31) * 0.1 + 1
n = RANDOMN(3L, 31)
y = 100 * EXP(-2*x) + n
a = [100, -2]
yf = LMFIT(x, y, a, /DOUBLE, FUNCTION_NAME='funct1')

PLOT, x, y, PSYM=1
OPLOT, x, yf
END
