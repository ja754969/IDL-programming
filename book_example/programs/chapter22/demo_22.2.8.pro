title = 'Figure 22.2.8'
xsize=216 & ysize=162
@ ../widget

xi = RANDOMN(5L, 50)
yi = RANDOMN(6L, 50)
zi = EXP(-(xi^2 + yi^2))
TRIANGULATE, xi, yi, tr, b, CONNECTIVITY=conn

zo = TRIGRID(xi,yi, zi, tr)
SURFACE, zo
END
