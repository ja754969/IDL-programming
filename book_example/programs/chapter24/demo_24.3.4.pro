title = 'Figure 24.3.4'
xsize=216 & ysize=162
@ ../widget

dn = 64
dt = 0.5
wt = dt * FINDGEN(dn)

w_han = HANNING(dn)
w_ham = HANNING(dn, ALPHA=0.54)
w_60 = HANNING(dn, ALPHA=0.60)
PLOT, wt, w_han, XTITLE='T (sec)'
OPLOT, wt, w_ham, LINESTYLE=2
OPLOT, wt, w_60, LINESTYLE=1

END
