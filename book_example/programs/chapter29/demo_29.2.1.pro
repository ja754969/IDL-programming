title='Figure 29.2.1'
xsize=216 & ysize=162
@ ../widget

wBase = WIDGET_BASE(/COLUMN, TITLE=title, XSIZE=xsize, YSIZE=ysize)
wDraw = WIDGET_DRAW(wBase, XSIZE=216, YSIZE=162)

WIDGET_CONTROL, wBase, /REALIZE

WIDGET_CONTROL, wDraw, GET_VALUE=winid
!P.COLOR=0
WSET, winid

Plot, [0, 1], XTITLE='X', YTITLE='Y'

END
