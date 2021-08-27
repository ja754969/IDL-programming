title = 'Figure 21.2.4'
xsize=216 & ysize=162
@ ../widget

n = RANDOMN(5L, 9)
x = FINDGEN(9) + 1
y = 2 * x + 1 + n

r = POLY_FIT(x, y, 1, CHISQ=chi, SIGMA=rs, YFIT=yf, YBAND=ys)
num = N_ELEMENTS(x)
df = num - 1
rchi = chi / df
PRINT, df, rchi

schi = 'Reduced !7v!X!U2!N'
achi = ' = ' + STRING(rchi, '(F4.2)')
title = schi + achi
PLOT, x, yf, TITLE=title
OPLOT, x, y, PSYM=1

END
