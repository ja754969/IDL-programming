title = 'Figure 6.1.13'
xsize=216 & ysize=162
@ ../widget

x = FINDGEN(25) * 15
y = SIN(x *!DTOR)

PLOT, x, y, /DEVICE, CLIP=[0, 0, 100, 140]

END
