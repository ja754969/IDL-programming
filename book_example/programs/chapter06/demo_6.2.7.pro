title = 'Figure 6.2.7'
xsize=216 & ysize=162
@ ../widget

x = RANDOMU(seed, 2000)
y = RANDOMU(seed, 2000)
v = EXP(x^2 + y^2)

CONTOUR, v, x, y, /IRREGULAR, /DOWNHILL, C_THICK=2

END
