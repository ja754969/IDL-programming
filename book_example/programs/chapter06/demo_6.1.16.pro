title = 'Figure 6.1.16'
xsize=216 & ysize=162
@ ../widget

x = FINDGEN(25) * 15
y = SIN(x *!DTOR)

PLOT, x, y, XSTYLE=8, YSTYLE=8, SUBTITLE='Subtitle', XTICK_GET=f

END
