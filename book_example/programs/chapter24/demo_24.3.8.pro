title = 'Figure 24.3.8'
xsize=216 & ysize=162
@ ../widget

dn = 64
dt = 0.5
wt = dt * FINDGEN(dn)
wf1 = 0.2
wf2 = 0.4
wu = SIN(2 * !PI * wf1 * wt) + SIN(2 * !PI * wf2 * wt) 

cf = 0.3
od = 10
d = DIST(dn, 1)
rf = FINDGEN(dn) / (dn*dt)
nf = (WHERE(rf GE cf))[0]
blow = 1. / SQRT(1. + (d/nf)^(2.*od))
bhigh = 1. - blow

wvh = FFT(wu, -1) * bhigh
wwh = ABS(wvh)^2
xname = ['0.0', '0.5', '1.0', '0.5', '0.0']
PLOT, rf, wwh, XTITLE='F (Hz)', XTICKNAME=xname

END
