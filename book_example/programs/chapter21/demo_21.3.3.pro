title = 'Figure 21.3.3'
xsize=216 & ysize=162
@ ../widget

x = FINDGEN(31) * 2 - 30
n = RANDOMN(3L, 31)
y = 15 * EXP(-(x-5)^2 / 100) + n
a = [15, 5, 10]
fa = [1, 1, 1]
yf = LMFIT(x, y, a, /DOUBLE, FUNCTION_NAME='funct2', CHISQ=chi, FITA=fa)
num = N_ELEMENTS(x)
df = num - 3
rchi = chi / num
PRINT, df, rchi

schi = 'Reduced !7v!X!U2!N'
achi = ' = ' + STRING(rchi, '(F4.2)')
title = schi + achi
PLOT, x, y, PSYM=1, TITLE=title
OPLOT, x, yf
END
