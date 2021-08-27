title = 'Figure 21.3.2'
xsize=216 & ysize=162
@ ../widget

x = FINDGEN(31) * 2 - 30
n = RANDOMN(3L, 31)
y = 15 * EXP(-(x-5)^2 / 100) + n
a = [15, 5, 10]
PRINT, a
yf = LMFIT(x, y, a, /DOUBLE, FUNCTION_NAME='funct2')
PRINT, a

PLOT, x, y, PSYM=1
OPLOT, x, yf
END
