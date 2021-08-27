title = 'Figure 6.3.4'
xsize=216 & ysize=162
@ ../widget

a = REPLICATE(' ', 6)

PLOT, [0, 1], XTICKNAME=a, YTICKNAME=a, /NODATA

XYOUTS, 0.5, 0.5, 'pos 0.0', /NORMAL
XYOUTS, 0.5, 0.6, 'pos 1.0', /NORMAL, ALIGNMENT=1.0, CHARSIZE=1.5
XYOUTS, 0.5, 0.4, 'pos 0.5', /NORMAL, ALIGNMENT=0.5, CHARTHICK=2.0

END
