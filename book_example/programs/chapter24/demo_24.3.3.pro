title = 'Figure 24.3.3'
xsize=216 & ysize=162
@ ../widget

dn = 64
dt = 0.5
wt = dt * FINDGEN(dn)
wf1 = 0.2
wf2 = 0.4
wu = SIN(2 * !PI * wf1 * wt) + SIN(2 * !PI * wf2 * wt) 

w_han = HANNING(dn)
wu_han = wu * w_han

wv = FFT(wu_han, -1)
rf = FINDGEN(dn/2+1) / (dn*dt)
ww = ABS(wv[0: dn/2])^2
PLOT, rf, ww, XTITLE='F (Hz)'

END
