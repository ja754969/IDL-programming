title = 'Figure 6.1.14'
xsize=216 & ysize=162
@ ../widget

x = FINDGEN(25) * 15
y = SIN(x *!DTOR)

PLOT, x, y, XTICKS=2, XMINOR=5, XTICKLEN=0.05

END
