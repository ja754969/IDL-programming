title = 'Figure 20.3.3'
xsize=216 & ysize=162
@ ../widget

x = FINDGEN(9) + 1
y = 3 * x + 4
s = SQRT(y)

PLOTERR, x, y, s, PSYM=1, TYPE=3

END
