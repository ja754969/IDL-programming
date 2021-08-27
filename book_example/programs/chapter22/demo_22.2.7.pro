title = 'Figure 22.2.7'
xsize=216 & ysize=162
@ ../widget

xi = RANDOMN(5L, 50)
yi = RANDOMN(6L, 50)
zi = EXP(-(xi^2 + yi^2))
PLOT, xi, yi, PSYM=1
TRIANGULATE, xi, yi, tr, b, CONNECTIVITY=conn
num = N_ELEMENTS(tr)
FOR i=0, num/3-1 DO BEGIN
 t=[tr[*,i],tr[0,i]]
 PLOTS, xi[t], yi[t]
ENDFOR
END
